package com.yf.Classes

import java.io.File

object getAllValidFile {


  def getPdfOrExcel(path:String,deep:Int) = {
    var pdf  = Array[String]()
    var excel = Array[String]()
    getFile(path,deep)
    def getFile(path: String, deep: Int):Unit = {
      val file = new File(path)
      val array = file.listFiles
      for (i <- 0 until array.length) {
        if (array(i).isFile) {
          val filename = array(i).getName
          val fileSuffix = filename.split('.').last
          if (fileSuffix == "xls" || fileSuffix == "xlsx") {
            excel = excel :+ array(i).getPath
          } else if (fileSuffix == "pdf") {
            pdf = pdf :+ array(i).getPath
          }
          array(i).getPath
        } else if (array(i).isDirectory) {
          getFile(array(i).getPath, deep + 1)
        }
      }
    }
    (pdf,excel)
  }

}
