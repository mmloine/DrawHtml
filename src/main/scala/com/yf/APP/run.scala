package com.yf.APP

import java.io.File

import com.yf.Classes.free.{exist, pdfexist, pngToHtml}
import com.yf.Classes.getAllValidFile.getPdfOrExcel
import com.yf.Classes.pdfToPng.{dataCopy, keggCopy, pdf2Png}
import com.yf.Classes.{TableData, createHtml, htmlToPdf}
import org.apache.commons.io.FileUtils

object run {

  def dealwithFile(inputFile:String,outputFile:String,name:String,mail:String,data:String)={
    val output = new File(outputFile+"/Transcriptome")
    val file = new File(inputFile)
    val dir = output.getPath
    val path = this.getClass.getProtectionDomain.getCodeSource.getLocation.getPath
    val p = path.split("/").map(_.trim).dropRight(1).mkString("/")
    val htmlfile = new File(p+"/resources/resource")
    FileUtils.copyDirectory(file, output)
    FileUtils.copyDirectory(htmlfile, output)
    val ftlpath  = p + "/resources/ftl"
    //制作pdf的网页
    pdfexist(dir,ftlpath,name,mail,data)
    //制作报告网页
    exist(dir,ftlpath)
    val pdfOrExcel = getPdfOrExcel(dir, 0)
    val go = new File(dir + "/07.GeneDiffExpEnrich/1.GO/2.DEG")
    val gol = go.listFiles().map(_.getPath)
    val ko = new File(dir + "/07.GeneDiffExpEnrich/2.KEGG")
    val kol = ko.listFiles().map(_.getPath)
/*    pngCopy(dir,"/07.GeneDiffExpEnrich/1.GO/2.DEG")
    pngCopy(dir,"/07.GeneDiffExpEnrich/2.KEGG")
    val pdf = pdfOrExcel._1.diff(gol).diff(kol)*/
    pdfOrExcel._1.map { x =>
      pdf2Png(x, dir)
    }
    val snp = new File(dir + "/11.SNP")
    val snpExist = if(snp.exists()){"true"}else{"false"}


    println("图片生成成功")
    //改动表头
    createHtml.tableData("/01.RawDataStatQC/rawdata.stat.main.xls", dir, 2)
    createHtml.tableData("/01.RawDataStatQC/cleandata.stat.main.xls", dir, 2)
    //直接把表格转换成html，不改动
    createHtml.other("/02.Align/align_sum.txt", dir, 2)
    createHtml.other("/04.GeneExp/exp_stat.txt", dir, 2)
    createHtml.other("/05.GeneDiffExp/diff.exp.stat.xls", dir, 2)
    createHtml.other("/09.AlterSplice/NovelSplice.stat.txt", dir, 2)

    createHtml.other("/07.GeneDiffExpEnrich/1.GO/diff.go.enrich.xls", dir, 3)

    //处理序列文件
    val file10 = new File(dir + "/10.NewTranscript")
    val seq =file10.listFiles()
    val fa ="/10.NewTranscript/"+TableData.getFileName(seq.filter(x=>(x.getPath.split('.').last=="fa")).head.getPath)+".fa"
    val gff ="/10.NewTranscript/"+TableData.getFileName(seq.filter(x=>(x.getPath.split('.').last=="gff")).head.getPath)+".gff"

    createHtml.top20(fa, dir,"fa.html")
    createHtml.top20(gff, dir,"gff.html")

    //处理大的数据文件
    createHtml.top10(dir,"/05.GeneDiffExp",2,"anno.html")
    createHtml.top10(dir,"/07.GeneDiffExpEnrich/2.KEGG",3,"ko.enrich.html")
    createHtml.top10(dir,"/07.GeneDiffExpEnrich/1.GO/2.DEG",4,"go.enrich.html")


    println("表格生成成功")
    //pdf转png转网页
    pngToHtml(dir, "03.RNAQualityAssessment/2.Coverage", "03Coverage.html",ftlpath)
    pngToHtml(dir, "03.RNAQualityAssessment/1.Saturation", "03Saturation.html",ftlpath)
    pngToHtml(dir, "05.GeneDiffExp", "05GeneDiffExp.html",ftlpath)
    pngToHtml(dir, "06.DiffExpAnnotation/1.GO", "06GO.html",ftlpath)
    pngToHtml(dir, "07.GeneDiffExpEnrich/1.GO/1.DAG", "07GODAG.html",ftlpath)
    pngToHtml(dir, "07.GeneDiffExpEnrich/1.GO/2.DEG", "07GODEG.html",ftlpath)
    pngToHtml(dir, "07.GeneDiffExpEnrich/2.KEGG", "07KEGG.html",ftlpath)
    pngToHtml(dir, "08.GeneDiffExpCluster/heatmap", "08Heatmap.html",ftlpath)
    pngToHtml(dir, "08.GeneDiffExpCluster/subclusters", "08Subclusters.html",ftlpath)


    if(snpExist == "true"){
      createHtml.other("/11.SNP/snp.st.txt", dir, 2)
      createHtml.top10(dir,"/11.SNP",2,"vfc.geno.anno.html")
      pngToHtml(dir, "11.SNP", "11SNP.html",ftlpath)
    }

    //得到一张ko图
    keggCopy(dir)
    //得到reads图
    dataCopy(dir)
    println("图片处理成功！")
    //生成pdf
    htmlToPdf.htoP(dir,p)
    println("生成报告成功！")
  }

  def main(args: Array[String]): Unit = {
    val usage =
      """
        |用法：  java -jar  jarfiles  -i xx -o xx -n xx -e xx -d xx
        |注意：
        |   请按顺序输入，搞错顺序程序将不能正确运行
        |
        |   服务器下运行方法：
        |        java -Djava.awt.headless=true -jar jarfiles -i xx -o xx -n xx -e xx -d xx
        |
        |   因Java版本问题，服务器下运行本程序可能会出现报错，但不影响报告结果输出！
        |
        |其中选项包括：
        |
        |   -i      inputPath:输入源文件路径
        |   -o      outputPath:输出报告路径,需先创建一个文件夹
        |   -n      name: 项目负责人名
        |   -e      e-mail：联系邮箱
        |   -d      data: 日期（格式：xxxx-xx-xx）
        |   -c      查看转录组目录结构
      """.stripMargin
    val log =
      """
        | 有参转录组目录结构：
        |
        |   --      01.RawDataStatQC                    数据统计
        |   ----        rawdata.stat.main.xls           原始数据统计
        |   ----        cleandata.stat.main.xls         质控后数据统计
        |   ----        *.per_base_quality.png          reads 碱基质量分布图
        |   ----        *.per_base_sequence_content.png reads 碱基组成分布图
        |
        |   --      02.Align                            比对
        |   -----       align_sum.txt                   每个样本的比对率
        |
        |   --      03.RNAQualityAssessment             RNA整体质量评估
        |   ----        1.Saturation                    测序饱和度
        |   ----        2.Coverage                      基因覆盖度
        |
        |   --      04.GeneExp                          基因表达
        |   ----        exp_stat.txt                    基因表达统计
        |   ----        Sample-hcluster-tree.pdf        *:若无则不在报告中显示
        |
        |   --      05.GeneDiffExp                      差异基因表达
        |   ----        diff.exp.stat.xls               差异基因表达统计
        |
        |   --      06.DiffExpAnnotation                差异基因注释
        |   ----        1.GO                            差异基因GO注释
        |   ----        2.KEGG                          差异基因KEGG注释
        |
        |   --      07.GeneDiffExpEnrich                差异基因富集
        |   ----        1.GO                            GO富集
        |   ------         1.DAG                        差异基因GO有向无环图
        |   ------         2.DEG                        差异基因GO
        |   ------         diff.go.enrich.xls           差异基因数目统计
        |   ----        2.KEGG                          KEGG富集
        |
        |   --      08.GeneDiffExpCluster               差异基因聚类
        |   ----        heatmap                         热图
        |   ----        subclusters                     聚类信息
        |
        |   --      09.AlterSplice                      可变剪切
        |   ----        NovelSplice.stat.txt            可变剪切统计
        |
        |   --      10.NewTranscript                    新转录本
        |   ----        new.trans.*.fa                  新转录本序列
        |   ----        new_trans.gff                   新转录本gff文件
        |
        |   --      11.SNP                              单核苷酸多态性
        |   ----        snp.st.txt                      单核苷酸多态性统计
        |
        |   注意：若目录名不一致或缺失目录中的文件，程序将不能正常运行！
      """.stripMargin
    val symbol = Array[String]("-i","-o","-c","-n","-e","-d")
    if(args.length ==1 && args(0) == "-c"){
      println(log)
    }else if(args.length != 10){
      println("输入参数缺失，请查看相关帮助：" + usage)
    }else{
      val (inPath,outPath) = (new File(args(1)),new File(args(3)))
      val a = Array(args(0),args(2),args(4),args(6),args(8))
      if(symbol.diff(a).size != 1){
        println("输入选项有误，请查看相关帮助：" + usage)
      }else if(!inPath.exists()){
        println("错误：输入路径不存在！")
      }else if(!inPath.isDirectory){
        println("错误：输入路径不是文件夹！")
      }else if(!outPath.isDirectory) {
        println("错误：输出路径不是文件夹！")
      }else if(args(9).split("-").size !=3 ){
        println("错误：日期格式不正确！（正确格式：xxxx-xx-xx）")
      }else{
        dealwithFile(inPath.getPath,outPath.getPath,args(5),args(7),args(9))
      }
    }
  }
}
