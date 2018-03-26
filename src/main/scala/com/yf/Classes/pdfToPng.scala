package com.yf.Classes


import java.io.File
import javax.imageio.ImageIO

import org.apache.commons.io.FileUtils
import org.apache.pdfbox.pdmodel.PDDocument
import org.apache.pdfbox.rendering.PDFRenderer


object pdfToPng {


  def pdf2Png(pdfPath: String,file:String): Unit = {
    //转换路径格式，便于识别
    val filePath = pdfPath.replaceAll("\\\\", "/")
    val filePath2 = file.replaceAll("\\\\","/")
    //得到文件名
    val pdfFile = filePath.split("/").last
    //得到原文件存储路径，如果不想存储在原文件，也可以自己传路径
    val x = filePath2.split("/")
    val x1 = filePath.split("/").diff(Array(pdfFile)).diff(x)
    val path = filePath2 + "/res/" + x1.mkString("/") + "/"
    //获得文件名，如果有后缀去掉pdf后缀
    val filename = pdfFile.split('.').diff(Array("pdf")).mkString(".")
    val pdfFiles = new File(pdfPath)
    val outFile = new File(path + filename + ".png")
    val document = PDDocument.load(pdfFiles)
    val renderer = new PDFRenderer(document)
    ImageIO.write(renderer.renderImage(0, 3), "png", outFile)
    document.close()
  }

  def getPath(filePath: String,totalpath:String) ={
    val file = filePath.replaceAll("\\\\", "/")
    val path = totalpath.replaceAll("\\\\","/")
    //得到文件名
    val filename = file.split("/").last
    //得到原文件存储路径，如果不想存储在原文件，也可以自己传路径
    val x = path.split("/")
    val x1 = file.split("/").diff(Array(filename)).diff(x)
    val lastpath = path + "/res/" + x1.mkString("/") + "/"
    //获得文件名，如果有后缀去掉pdf后缀
    (lastpath,filename)
  }

  def keggCopy(dir:String) ={
    val kegg = new File(dir + "/06.DiffExpAnnotation/2.KEGG")
    val keggType = kegg.listFiles()
    val keggFirst = keggType(0)
    val keggBase = keggFirst.listFiles()
    val png =keggBase.map{y=>
      val p = y.getPath
      val pa = p.split('.')
      if(pa.last == "png"){p}else{""}
    }.distinct.diff(Array(""))
    FileUtils.copyFile(new File(png(0)),new File(dir + "/res/06.DiffExpAnnotation/2.KEGG/ko.png"))
  }

  def dataCopy(dir:String) = {
    val rawdata = new File(dir + "/01.RawDataStatQC")
    val raw = rawdata.listFiles()
    val png = raw.map(_.getPath.split("_"))
    val quality = png.filter(_.last == "quality.png").head.mkString("_")
    val content = png.filter(_.last == "content.png").head.mkString("_")
    FileUtils.copyFile(new File(content), new File(dir + "/res/01.RawDataStatQC/read1.png"))
    FileUtils.copyFile(new File(quality), new File(dir + "/res/01.RawDataStatQC/read2.png"))
  }

  def pngCopy(dir:String,path:String) = {
    val rawdata = new File(dir + path)
    val raw = rawdata.listFiles().map(_.getPath)
    val png = raw.map(_.split('.')).filter(_.last == "png").map(_.mkString("."))
      png.map{x=>
        val file = new File(x)
        FileUtils.copyFile(file,new File(dir + "/res" + path + "/" + file.getName))
        new File(x).delete()
      }
  }
}
