package com.yf.Classes

import java.io.File

object htmlToPdf {


  def htoP(dir:String,res:String)={

    val wkhtmltopdf = {
      if (new File("C:/").exists()) (res + "/resources/wkhtmltopdf/bin/wkhtmltopdf") else ("wkhtmltopdf")
    }
    val html = dir + "/pdf.html"
    val pdf = dir + "/report.pdf"
    val execCommand = new ExecCommand
    val command = wkhtmltopdf +" --zoom 1.3 --footer-right [page] " + html+ " " + pdf
    execCommand.exec(command)
    if (execCommand.isSuccess) {
      val file = new File(html)
        file.delete()
        println("pdf文件生成成功！")
    }else{
      println(execCommand.getErrStr)
    }
  }

}
