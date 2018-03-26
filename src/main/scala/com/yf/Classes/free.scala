package com.yf.Classes

import java.io._
import java.util

import freemarker.template.Configuration
import org.apache.commons.io.FileUtils

import scala.collection.JavaConverters._

object free {

  def freeimg(imgpath:Array[String],dir:String,filename:String,ftlPath:String)={
    val head = imgpath.head.split("/").last.split(".png").head + ".pdf"
    val map = new util.HashMap[String, Object]()
    map.put("first",imgpath.head)
    map.put("name", head)
    map.put("sexMap", imgpath)
    try {
      val config = new Configuration
      config.setDefaultEncoding("UTF-8")
      config.setDirectoryForTemplateLoading(new File(ftlPath))
      val template = config.getTemplate("image.ftl")
      val writer = new BufferedWriter(
        new OutputStreamWriter(
          new FileOutputStream(dir + "/res/" + filename), "UTF-8"));
     // val writer = new FileWriter(dir + "/res/" + filename)
      template.process(map, writer)
    } catch {
      case e: Exception =>
        e.printStackTrace()
    }
  }

  def exist(dir:String,ftlPath:String) = {
    val sample = FileUtils.readLines(new File(dir + "/01.RawDataStatQC/cleandata.stat.main.xls")).asScala
    val stat = new File(dir + "/06.DiffExpAnnotation/2.KEGG")
    val samplesize = sample.size
    val statsize = stat.listFiles().size
    val height = if(samplesize <= 9 ){(samplesize*40).toString}else{"380"}
    val stahigh = if(statsize <= 9 ){(statsize*40 + 40).toString}else{"380"}
    val file = new File(dir + "/04.GeneExp/Sample-hcluster-tree.pdf")
    val trueIsExisits = if(file.exists()){
      "true"
    }else{"false"}
    val s = new File(dir + "/11.SNP")
    val snp = if(s.exists()){"true"}else{"false"}

    val map = new util.HashMap[String, Object]()
    map.put("geneExp",trueIsExisits)
    map.put("iframeHeight",height)
    map.put("statHeight",stahigh)
    map.put("snp",snp)
    try {
      val config = new Configuration
      config.setDefaultEncoding("UTF-8")
      config.setDirectoryForTemplateLoading(new File(ftlPath))

      val template = config.getTemplate("report.ftl")
      val writer = new BufferedWriter(
        new OutputStreamWriter(
          new FileOutputStream(dir + "/report.html"), "UTF-8"));
      //  val writer = new FileWriter(dir + "/report.html")
      template.process(map, writer)
    } catch {
      case e: Exception =>
        e.printStackTrace()
    }
  }

  def pdfexist(dir:String,ftlPath:String,name:String,mail:String,data:String) = {
    val sample = FileUtils.readLines(new File(dir + "/01.RawDataStatQC/cleandata.stat.main.xls")).asScala
    val stat = new File(dir + "/06.DiffExpAnnotation/2.KEGG")
    val samplesize = sample.size
    val statsize = stat.listFiles().size
    val height = if(samplesize <= 9 ){(samplesize*40).toString}else{"380"}
    val stahigh = if(statsize <= 9 ){(statsize*40 + 40).toString}else{"380"}
    val file = new File(dir + "/04.GeneExp/Sample-hcluster-tree.pdf")
    val trueIsExisits = if(file.exists()){
      "true"
    }else{"false"}
    val s = new File(dir + "/11.SNP")
    val snp = if(s.exists()){"true"}else{"false"}

    val page1 = Array(3,4,5,6,8,9,10,11,12,13,15,16,17,19,20,22,23,24,26,28,29)
    val page2 = Array(3,4,5,6,8,9,10,11,0,12,14,15,16,18,19,20,22,23,25,27,28)
    val page3 = Array(3,4,5,6,8,9,10,11,12,13,15,16,17,19,20,21,23,24,0,26,27)
    val page4 = Array(3,4,5,6,8,9,10,11,0,12,14,15,16,18,19,20,22,23,0,25,26)
    val page = if(trueIsExisits == "true" && snp == "true"){page1}
    else if(trueIsExisits == "false" && snp == "true"){page2}
    else if(trueIsExisits == "true" && snp == "false"){page3}
    else{page4}

    val da = data.split("-")
    val map = new util.HashMap[String, Object]()
    map.put("name",name)
    map.put("mail",mail)
    map.put("year",da(0))
    map.put("month",da(1))
    map.put("day",da(2))
    map.put("geneExp",trueIsExisits)
    map.put("iframeHeight",height)
    map.put("statHeight",stahigh)
    map.put("snp",snp)
    map.put("page",page)
    try {
      val config = new Configuration
      config.setDefaultEncoding("UTF-8")
      config.setDirectoryForTemplateLoading(new File(ftlPath))

      val template = config.getTemplate("pdf.ftl")
      val writer = new BufferedWriter(
        new OutputStreamWriter(
          new FileOutputStream(dir + "/pdf.html"), "UTF-8"));
      template.process(map, writer)
    } catch {
      case e: Exception =>
        e.printStackTrace()
    }
  }

  def pngToHtml(dir:String,canpath:String,filename:String,ftlPath:String)={
    val file = new File(dir + "/res/" + canpath)
    val array = file.listFiles.map{x=>
      val name = x.getName
      val ar = name.split('.')
      if(ar.last == "png"){
        canpath + "/"+ ar.mkString(".")
      }else{
        "null"
      }
    }.distinct.diff(Array("null"))

    freeimg(array,dir,filename,ftlPath)
  }

}
