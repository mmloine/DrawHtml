package com.yf.Classes

import java.io.File

import org.apache.commons.io.FileUtils

import scala.collection.JavaConverters._
import scala.collection.mutable

object createHtml {

  def createHtml(head:Array[String],body:mutable.Buffer[Array[String]],file:String,dir:String,deep:Int) = {
    var level =   ""
    for(i <- 0 until deep){
      level += "../"
    }
    var html =
      s"""
        |<head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
        |<link rel="stylesheet" href="${level}js/bootstrap/css/bootstrap.min.css">
        |	<script src="${level}js/jquery-3.1.0.min.js"></script>
        |	<script src="${level}js/bootstrap/js/bootstrap.min.js"></script>
        | </head>
        | <style type="text/css">
        |	td{
        |		white-space:nowrap;
        |	}
        | </style>
        | <div id="wid" style="width: 100%;">
        | <table width='100%' class="table table-hover table-striped scrolltable">
        | <thead  style="display:block;">
        | <tr>
      """.stripMargin
    head.map{x=>
      val tableHead = "<th>" + x + "</th>"
      html += tableHead
    }
    html += "</tr></thead><tbody style='display:block;max-height:380px;overflow-y: scroll;'>"
    body.map{x=>
      html += "<tr>"
      x.map{y=>
        val element = "<td>" + y + "</td>"
        html += element
      }
      html += "</tr>"
    }
    html +=
      """
        |     </tr>
        |   </tbody>
        | </table>
        |</div>
        |<script type="text/javascript">
        |    $(document).ready(function(){
        |        var _width=$('#wid').width();
      """.stripMargin
    html += "$('#wid th').width(_width/"+head.size+");"
    html += "$('#wid td').width(_width/"+head.size+");"
    html += "})</script>  "

    val htmlname = TableData.getFileName(dir + file) + ".html"
    val htmlpath = TableData.getFinalFilePath(file,dir) + htmlname
    FileUtils.writeStringToFile(new File(htmlpath),html,"UTF-8")
  }


  def tableData(file:String,dir:String,deep:Int) ={
    val data = TableData.dealData(dir + file)
    val head = Array("样品","序列数（条）","碱基数（bp）","Q20(%)","Q30(%)")
    val body = data.drop(1)
    createHtml(head,body,file,dir,deep)

  }

  def other(file:String,dir:String,deep:Int) = {
    val data = TableData.getData(dir + file)
    val head = data.head
    val body = data.drop(1)
    createHtml(head,body,file,dir,deep)
  }

  def top20(file:String,dir:String,filename:String) ={
    val data = FileUtils.readLines(new File(dir + file)).asScala
    val body = if(data.head.head.toString =="#"){
      data.drop(2).take(20)
    }else{
      data.take(20)
    }
    seqHtml(body,file,dir,filename:String)
  }

  def seqHtml (body:mutable.Buffer[String],file:String,dir:String,filename:String) ={
    var html = "<div align='left'>"
    val head = body.head
    body.map{x=>
      val tableHead = "<pre style='font-size:14px'>" + x + "</pre>"
      html += tableHead
    }
    html += "</div>"
    val htmlpath = TableData.getFinalFilePath(file,dir) + filename
    FileUtils.writeStringToFile(new File(htmlpath),html,"UTF-8")
   }

  def top10(dir:String,file:String,deep:Int,filename:String)={
    val path = new File(dir + file)
    val ftype =path.listFiles()
    val xls = ftype.map{x=>
      val p = x.getPath
      val pa = p.split('.')
      if(pa.last == "xls"){p}else{""}
    }.distinct.diff(Array("")).diff((Array(dir + "\\05.GeneDiffExp\\diff.exp.stat.xls")))
    val xlspath =xls(xls.size-1)
    val data = FileUtils.readLines(new File(xlspath)).asScala
    val body = if(data.head.head.toString =="#"){
      data.drop(4).take(11).map(_.split("\t"))
    }else{
      data.take(11).map(_.split("\t"))
    }
    resultTable(body,file,dir,deep,filename)
  }


  def resultTable(body:mutable.Buffer[Array[String]],file:String,dir:String,deep:Int,filename:String) = {
    var level =   ""
    for(i <- 0 until deep){
      level += "../"
    }
    var html =
      s"""
        |<head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
        |<link rel="stylesheet" href="${level}js/bootstrap/css/bootstrap.min.css">
        |	<script src="${level}js/jquery-3.1.0.min.js"></script>
        |	<script src="${level}js/bootstrap/js/bootstrap.min.js"></script>
        | </head>
        | <style type="text/css">
        |	td{
        |		overflow: hidden;
        |		white-space:nowrap;
        |	}
        | th{
        |		overflow: hidden;
        |		white-space:nowrap;
        |	}
        |	table{
        |		overflow: hidden;
        |		text-overflow: ellipsis;
        |		table-layout: fixed;
        |	}
        |</style>
        | <div id="wid" style="width: 100%;">
        | <table width='100%' class="table table-hover table-striped " >
        | <thead>
        | <tr>
      """.stripMargin
    body.head.map{x=>
      val tableHead = "<th title='"+ x+"'>" + x + "</th>"
      html += tableHead
    }
    html += "</tr></thead><tbody>"
    body.drop(1).map{x=>
      html += "<tr>"
      x.map{y=>
        val element = "<td title='"+ y +"'>" + y + "</td>"
        html += element
      }
      html += "</tr>"
    }
    html +=
      """
        |     </tr>
        |   </tbody>
        | </table>
        |</div>
        |<script type="text/javascript">
        |        |    $(document).ready(function(){
        |        |        var _width=$('#wid').width();
        |      """.stripMargin
    html +=
    "$('#wid th').width(_width/" + body.head.size + ");"
    html +=
    "$('#wid td').width(_width/" + body.head.size + ");"
    html +=
    "})</script>  "

    val htmlpath = TableData.getDirPath(file,dir) + filename
    FileUtils.writeStringToFile(new File(htmlpath),html,"UTF-8")
  }

  }
