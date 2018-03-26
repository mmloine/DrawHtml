package com.yf.Classes

import java.io.File

import org.apache.commons.io.FileUtils

import scala.collection.JavaConverters._

object TableData {

  def getFileName(file:String) ={
    val path = file.replaceAll("\\\\", "/")
    val filename = path.split("/").last.split('.')
    val name = filename.take(filename.length-1).mkString(".")
    name
  }

  def getFinalFilePath(file:String,startPath:String) = {
    val path = file.replaceAll("\\\\","/")
    val startpath = startPath.replaceAll("\\\\","/")
    val array = path.split("/")
    val end = array.take(array.size-1)
    val finalPath = startpath + "/res" + end.mkString("/") + "/"
    finalPath
  }

  def getDirPath(file:String,startPath:String) = {
    val path = file.replaceAll("\\\\","/")
    val startpath = startPath.replaceAll("\\\\","/")
    val array = path.split("/")
    val finalPath = startpath + "/res" + array.mkString("/") + "/"
    finalPath
  }

  def getData(file:String) = {
    val table = FileUtils.readLines(new File(file)).asScala
    val data = table.map(_.split("\t"))
    data
  }

  def dealData(file:String) = {
    val table = FileUtils.readLines(new File(file)).asScala
    val tables = table.map(_.split("\t"))
    val data = tables.map{x=>
     Array(x(0),x(1),x(2),x(11),x(12))
    }
    data
  }
}
