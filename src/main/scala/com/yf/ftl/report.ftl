<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>转录组分析项目（有参）</title>
    <link type="text/css" rel="stylesheet" href="css/report.css">
    <script src="js/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jquery-3.1.0.min.js" type="text/javascript"></script>
    <script src="js/basejs.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery.tablescroll.js"></script>
    <script src="js/scrollTop.js" type="text/javascript"></script>
</head>
<script type="text/javascript">


    $(".leftsidebar_box dt").css({"background-color": "#3992d0"});

    $(".leftsidebar_box dt img").attr("src", "css/icon/select_xl01.png");

    $(function () {
        $(".leftsidebar_box dd").hide();
        $(".leftsidebar_box dt").click(function () {
            $(".leftsidebar_box dt").css({"background-color": "#3992d0"})
            $(this).css({"background-color": "#317eb4"});
            $(this).parent().find('dd').removeClass("menu_chioce");
            $(".leftsidebar_box dt img").attr("src", "css/icon/select_xl01.png");
            $(this).parent().find('img').attr("src", "css/icon/select_xl.png");
            $(".menu_chioce").slideUp();
            $(this).parent().find('dd').slideToggle();
            $(this).parent().find('dd').addClass("menu_chioce");
        });
    })
</script>

<body>

<div id="head">
    <div id="logo">
        <a href="http://www.biozeron.com/" target="_blank"><img src="css/icon/lingen.png"
                                                                style="background-color: transparent;height: 50px;"></a>
    </div>
    <div id="title" align="center">
        <h2 style="color:#246A8A">转录组分析项目（有参）</h2></div>
    <div id="contact">
        <p style="font-size: 12px">版权所有：上海凌恩生物科技有限公司<br/>联系电话：400-098 6026<br/>邮箱地址：ngs@biozeron.com</p>
    </div>
</div>


<div class="side">

    <span id="hideMenu"><</span>
    <div class="leftsidebar_box">
        <dl>
            <dt><a href="#chapter0" style="color: white;">工作流程</a><img src="css/icon/select_xl01.png"></dt>
            <dd><a href="#chapter0_1">&nbsp;&nbsp;&nbsp;一.测序实验流程</a></dd>
            <dd><a href="#chapter0_2">&nbsp;&nbsp;&nbsp;二.数据分析流程</a></dd>
        </dl>

        <dl>
            <dt><a href="#chapter1" style="color: white;">项目结果解读</a><img src="css/icon/select_xl01.png"></dt>
            <dd><a href="#chapter1_1">&nbsp;&nbsp;&nbsp;一.原始测序数据说明</a></dd>
            <dd><a href="#chapter1_2">&nbsp;&nbsp;&nbsp;二.原始测序数据质控</a></dd>
            <dd><a href="#chapter1_3">&nbsp;&nbsp;&nbsp;三.与参考基因组比对</a></dd>
            <dd><a href="#chapter1_4">&nbsp;&nbsp;&nbsp;四.RNA-seq整体质量评估</a></dd>
            <dd><a href="#chapter1_5">&nbsp;&nbsp;&nbsp;五.基因表达分析</a></dd>
            <dd><a href="#chapter1_6">&nbsp;&nbsp;&nbsp;六.表达差异分析</a></dd>
            <dd><a href="#chapter1_7">&nbsp;&nbsp;&nbsp;七.差异基因注释</a></dd>
            <dd><a href="#chapter1_8">&nbsp;&nbsp;&nbsp;八.差异基因富集分析</a></dd>
            <dd><a href="#chapter1_9">&nbsp;&nbsp;&nbsp;九.表达模式聚类</a></dd>
            <dd><a href="#chapter1_10">&nbsp;&nbsp;&nbsp;十.可变剪切分析</a></dd>
            <dd><a href="#chapter1_11">&nbsp;&nbsp;&nbsp;十一.新转录本预测</a></dd>
          <#if snp == "true">
              <dd><a href="#chapter1_12">&nbsp;&nbsp;&nbsp;十二.SNP分析</a></dd>
          </#if>
        </dl>

        <dl>
            <dt><a href="#chapter2" style="color: white;">附录</a><img src="css/icon/select_xl01.png"></dt>
            <dd><a href="#chapter2_1">&nbsp;&nbsp;&nbsp;一.常用数据库及专用名词介绍</a></dd>
            <dd><a href="#chapter2_2">&nbsp;&nbsp;&nbsp;二.文件解压缩方法</a></dd>
            <dd><a href="#chapter2_3">&nbsp;&nbsp;&nbsp;三.文件打开或浏览方法</a></dd>
        </dl>
        <dl>
            <dt><a href="#chapter3" style="color: white;">分析方法说明（英文）</a></dt>
        </dl>
    </div>

</div>

<div id="content">
    <div id="floatbar">
        <a id="top" href="#chapter0"><img src="css/icon/Top.jpg"></a>
    </div>

    <div id="main">
        <div id="frontpage">
            <img src="css/icon/page_bg.jpg">
            <div id="pageTitle" style="text-indet: 10px">
                <p>项目名称：转录组分析项目（有参）</p>
                <p>委托单位：XXXX</p>
                <p>制定日期： 2017年7月26日
                </p>
            </div>
        </div>

        <div>
            <div class="PageHeader">
                <img src="css/icon/logo.png"/>
                <hr>
            </div>
            <h2 id="chapter0" class="target">工作流程</h2>

            <h3 id="chapter0_1" class="target">一&nbsp;.测序实验流程</h3>
            <p id="ch0_sec3_p2" class="load_character">针对真核生物，我们采用Illumina TruseqTM RNA sample prep
                Kit方法构建文库，其流程如下图所示：</p>
            <br>
            <div align="center">
                <img src="css/icon/flow.png" width="50%" height="50%">
            </div>
            <b class="tuming">试剂与仪器表</b>
            <div align="center" style="padding-bottom:15px">
                <iframe src="res/01.RawDataStatQC/tool.html" frameborder="0" align="center" height="380px;"
                        style="width: 1000px;"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">具体实验步骤：</p>
            <p id="ch0_sec3_p2" class="load_character">1. 真核生物以5μg total RNA起始量建库；</p>
            <p id="ch0_sec3_p2" class="load_character">2. 磁珠法分离mRNA后，离子打断mRNA（Truseq<sup>TM</sup> RNA sample prep Kit）；
            </p>
            <p id="ch0_sec3_p2" class="load_character">3. 双链cDNA合成、补平、3’ 端加A、连接index接头（Truseq<sup>TM</sup> RNA sample
                prep
                Kit）；</p>
            <p id="ch0_sec3_p2" class="load_character">4. 文库富集，PCR扩增15个cycles；</p>
            <p id="ch0_sec3_p2" class="load_character">5. 2%琼脂糖胶回收目的条带（Certified Low Range Ultra Agarose）；</p>
            <p id="ch0_sec3_p2" class="load_character">6. TBS380（Picogreen）定量，按数据比例混合上机；</p>
            <p id="ch0_sec3_p2" class="load_character">7. cBot上进行桥式PCR扩增，生成clusters；</p>
            <p id="ch0_sec3_p2" class="load_character">8. Illumina Hiseq测序平台，进行2*150bp测序。</p>
            <h3 id="chapter0_2" class="target">二&nbsp;.数据分析流程</h3>
            <br/>
            <div align="center">
                <img width="90%" height="90%" src="css/icon/analysis.png"/>
            </div>

            <h2 id="chapter1" class="target"> 项目结果解读</h2>
            <h3 id="chapter1_1" class="target">一&nbsp;.原始测序数据说明</h3>
            <p id="ch2_p3" class="load_character">Illumina测序得到的原始图像数据经过Base
                Calling转化为序列数据，结果以FASTQ文件格式来存储。FASTQ文件为最原始的数据文件，文件包含测序read的序列信息以及测序质量信息。FASTQ文件格式如下所示：</p>
            <div id="fastq" style="margin-left: 150px;">
                <p>@K00169:186:HM5C2CCXX:6:1101:8136:2962 1:N:0:CTGGCATA</p>
                <p>CCACTCATAATCCAGCAAATACTAAATCTGCTGCAGGAAAAGAAATGCGGTTGAGCTTAAATAGCCCAGTGAA</p>
                <p>+</p>
                <p>AFFKKFKKFFKKKKFKAFKKAAKFAFFKKFKKFFKKKKFKAFKKAAKFAFFKKFKKFFKKKKFKAFKKAAKFA</p>
            </div>
            <p id="ch0_sec3_p2" class="load_character">每条read包含4 行信息，其中第一行和第三行表示read名称和ID（其中，第一行以“@” 开头而第三行以“+” 开头；第三行中
                ID可以省略，但“+”
                不能省略），第二行为read的碱基序列，第四行是第二行中序列的每个碱基所对应的测序质量值。为方便保存和共享各实验室产生的高通量测序数据，NCBI数据中心建立了大容量的数据库SRA（Sequence Read
                Archive, <a target="_blank" href="http://www.ncbi.nlm.nih.gov/Traces/sra">http://www.ncbi.nlm.nih.gov/Traces/sra</a>）来存放共享的原始测序数据。
            </p>
            <b class="tuming">原始数据量统计</b>
            <div align="center" style="padding-bottom:15px">
                <iframe src="res/01.RawDataStatQC/rawdata.stat.main.html" frameborder="0" align="center" height="${iframeHeight}px;"
                        scrolling="no" style="width: 1000px;"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">(1) Sample：样品名称</p>
            <p id="ch0_sec3_p2" class="load_character">(2) Raw reads：统计原始序列数据，以四行为一个单位，统计每个文件的测序序列的个数</p>
            <p id="ch0_sec3_p2" class="load_character">(3) Raw bases：测序序列的个数乘以测序序列的长度</p>
            <p id="ch0_sec3_p2" class="load_character">(4) Q20、Q30：分别表示 Phred 数值大于20、30的碱基占总体碱基的百分比</p>
            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank" href="01.RawDataStatQC/"
                                                                style="color: blue;">01.RawDataStatQC/</a></p>
            <h3 id="chapter1_2" class="target">二&nbsp;. 原始测序数据质控</h3>
            <p id="ch0_sec3_p2" class="load_character">Illumina
                测序属于第二代测序技术，单次运行能产生数十亿级的reads，如此海量的数据无法逐个展示每条read的质量情况；运用统计学的方法，对所有测序reads的每个circle进行碱基分布和质量波动的统计，可以从宏观上直观地反映出样本的测序质量和文库构建质量。</p>
            <p id="ch0_sec3_p2" class="load_character">由于Illumina
                Hiseq的原始测序数据中会包含测序接头序列、低质量读段、N率较高序列及长度过短序列，这将严重影响后续组装的质量。为保证后续的生物信息分析的准确性，首先对原始测序数据进行过滤，从而得到高质量的测序数据（clean
                data）以保证后续分析的顺利进行，具体步骤及顺序如下：</p>
            <p id="ch0_sec3_p2" class="load_character">(1) 去除reads中的接头序列，去除由于接头自连等原因导致没有插入片段的reads； </p>
            <p id="ch0_sec3_p2" class="load_character">(2)
                将序列末端（3’端）质量较低（质量值小于20）的碱基修剪掉，如剩余序列中仍然有质量值小于10的碱基，则将整条序列剔除，否则保留；</p>
            <p id="ch0_sec3_p2" class="load_character">(3) 去除含N比率超过10%的reads；</p>
            <p id="ch0_sec3_p2" class="load_character">(4) 舍弃去adapter及质量修剪后长度小于70bp的序列。</p>
            <p id="ch0_sec3_p2" class="load_character">使用软件： trimmomatic （<a target="_blank"
                                                                             href="http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic">
                http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic</a>）</p>

            <br>
            <b class="tuming">reads 碱基组成分布图</b>
            <div align="center">
                <img src="res/01.RawDataStatQC/read1.png" width="80%" height="80%"/>
            </div>
            <p id="ch0_sec3_p2" class="load_character">注：横坐标是reads碱基坐标，坐标表示 reads 上从 5’到
                3’端依次碱基的排列；纵坐标是所有reads在该测序位置（如第一个测序碱基）A、C、G、T、N碱基分别占的百分比，不同碱基用不同颜色表示（见右上角图注）。序列的起始位置与测序的引物接头相连，因此A、C、G、T在起始端会有所波动，后面会趋于稳定（由于图中显示的是双端数据，因此横轴0附近和100附近的位置会有波动）。一般情况下A与T相等，C与G相等，各碱基所占百分比会因物种的差异而不同。</p>
            <br>
            <b class="tuming">reads 碱基质量分布图</b>
            <div align="center">
                <img src="res/01.RawDataStatQC/read2.png" width="80%" height="80%"/>
            </div>
            <p id="ch0_sec3_p2" class="load_character">注：横坐标是reads碱基坐标，表示 reads 上从 5’到 3’端依次碱基的排列； 纵坐标是reads的碱基质量值
                （Q值，Solexa Scale: 40=Highest,
                -15=Lowest），如果某碱基质量值为30（Q30），则表示该碱基测序出错的概率为0.001（10-3）。图中垂直红线“Ⅰ”指定的范围是所有reads碱基的综合质量，红色垂直方块是质量的四分位值范围，加黑粗线是质量值的中位数，黑线对应的reads碱基质量值越高，说明测序错误率越低。</p>
            <b class="tuming">质控后数据量统计</b>
            <div align="center" style="padding-bottom:15px">
                <iframe src="res/01.RawDataStatQC/cleandata.stat.main.html" frameborder="0" align="center"
                        height="${iframeHeight}px;" scrolling="no" style="width: 1000px;"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">(1) Sample：样品名称</p>
            <p id="ch0_sec3_p2" class="load_character">(2) Clean reads：统计质控后序列数据，以四行为一个单位，统计每个文件的测序序列的个数</p>
            <p id="ch0_sec3_p2" class="load_character">(3) Clean bases：质控后序列的个数乘以每个序列的长度得到总的序列数</p>
            <p id="ch0_sec3_p2" class="load_character">(4) Q20、Q30：分别表示 Phred 数值大于20、30的碱基占总体碱基的百分比</p>
            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank" href="01.RawDataStatQC/"
                                                                style="color: blue;">01.RawDataStatQC/</a></p>
            <h3 id="chapter1_3" class="target">三&nbsp;.与参考基因组比对</h3>
            <p id="ch0_sec3_p2" class="load_character">将质控后得到的高质量测序序列与指定的参考基因组比对，使用软件：TopHat (<a target="_blank"
                                                                                                 href="http://tophat.cbcb.umd.edu/">
                http://tophat.cbcb.umd.edu/</a>)</p>
            <p id="ch0_sec3_p2" class="load_character">
                TopHat的比对原理如下：首先，TopHat使用其内置软件Bowtie将高质量clean序列map到基因组上，容许碱基错误匹配的数为2（-m），匹配到可变剪切两端每端最少的碱基数目为5（-a），将原始序列分割的片段长度为20个碱基（--segment-length）。这时所有参加mapping的序列将被分为两组：一组为已map到基因组上，另一组为没有map到基因组上。之后，TopHat将这些map到基因组上的序列进行组装，这时就可以认为这些连续的序列即为一组外显子。同时，TopHat会检测到没有map到基因组上的序列map至剪切位点的两端（识别剪切位点的方法是两个外显子之间可以形成“GT–AG”内含子）。通常tophat所检测的一对外显子之间的距离为70bp~20kb之间的距离。如果小于70bp的话，tophat会认为这两个外显子可能属于同一个外显子，由于基因的表达量比较低，中间的部分没有测到，因而形成了一个GAP。</p>
            <p id="ch0_sec3_p2" class="load_character">具体过程如下图所示：</p>
            <div align="center">
                <img src="css/icon/tophat.png" width="80%" height="80%"/>
            </div>
            <p id="ch0_sec3_p2" class="load_character">通常采用默认参数运行软件，同时根据实际情况，如测序数据量，基因组情况对参数做适当的调整。</p>
            <p id="ch0_sec3_p2" class="load_character">比对后的mapping比率统计结果见下表：</p>
            <b class="tuming">Mapping 比率统计</b>
            <div align="center" style="padding-bottom:15px">
                <iframe src="res/02.Align/align_sum.html" frameborder="0" align="center" height="${iframeHeight}px;" scrolling="no"
                        style="width: 1000px;"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">(1) Sample：样品名称</p>
            <p id="ch0_sec3_p2" class="load_character">(2) Clean reads：统计质控后序列数据，以四行为一个单位，统计每个文件的测序序列的个数</p>
            <p id="ch0_sec3_p2" class="load_character">(3) Mapped reads：测序序列比对对参考基因组上的数量</p>
            <p id="ch0_sec3_p2" class="load_character">(4) Mapped rate：比对率，比对到参考基因组上的序列除以质控后序列数量</p>
            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank" href="02.Align/"
                                                                style="color: blue;">02.Align/</a></p>
            <h3 id="chapter1_4" class="target">四&nbsp;.RNA-seq整体质量评估</h3>
            <h4>1.&nbsp;测序饱和度分析</h4>
            <p id="ch0_sec3_p2" class="load_character">
                基因在不同表达水平的转录本，被有效检测时对数据量的要求不同。高表达量的基因测序时需要较少的数据量就可趋近于饱和；低表达的基因则需要较大的数据量要求才能保证检测的准确性。饱和度曲线可以描述不同测序量的条件下各基因的表达检测是否准确。</p>
            <p id="ch0_sec3_p2" class="load_character">本分析采用RSeQC 软件（<a target="_blank"
                                                                        href="http://code.google.com/p/rseqc/">
                http://code.google.com/p/rseqc/</a>）</p>
	    <b class="tuming">测序饱和度曲线</b>
            <div align="center">
                <iframe src="res/03Saturation.html" frameborder="0" align="center" scrolling="no"
                        height="510px;"></iframe>
            </div>

           
            <p id="ch0_sec3_p2" class="load_character">注：横坐标表示有效比对reads的百分比
                (如：60表示随机抽取60%的比对测序数据用于计算该基因的表达量，即RPKM值，公式见表达差异分析部分)。纵轴表示该取样条件下表达量与终值的偏差比例(误差15% 以内) ( 如：0.4 表示有40%
                的基因表达量误差在15% 以内)，数值越趋近于1 则表示表达量越趋于饱和。每种颜色线条代表该样品中不同表达水平的基因表达量饱和度曲线，具体见右下角图标，如：红色为（0-0.3）num=2201，代表FPKM
                值在0-0.3
                范围内的基因有2201个；越早到达平台期则表示该样品中该基因表达量越高；反之则表示该基因表达量较低。本图表明此样本测序饱和度较高，大部分中等以上表达量的基因（即FPKM值在3.5以上的基因）在测序reads的40%比对上时已经接近饱和（纵轴数值趋近于1），说明饱和度总体质量较高，该测序量能够覆盖绝大多数的表达基因。</p>
            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank"
                                                                href="03.RNAQualityAssessment/1.Saturation/"
                                                                style="color: blue;">03.RNAQualityAssessment/1.Saturation/</a>
            </p>
            <h4>2.&nbsp;基因覆盖度分析</h4>
            <p id="ch0_sec3_p2" class="load_character">基因覆盖度分析是样品中所有基因的 5’到 3’区域上序列覆盖情况的综合展现，用于评估测序实验结果的均一性（或是偏向性）。</p>
            <p id="ch0_sec3_p2" class="load_character">本分析采用RSeQC 软件（<a target="_blank"
                                                                        href="http://code.google.com/p/rseqc/">http://code.google.com/p/rseqc/</a>）
            </p>
		<b class="tuming">基因覆盖度分析结果图</b>
            <div align="center">
                <iframe src="res/03Coverage.html" frameborder="0" align="center" scrolling="no" style="width: 60%;"
                        height="510px;"></iframe>
            </div>
            
            <p id="ch0_sec3_p2" class="load_character">注：图中横坐标为单个基因的碱基长度占总碱基长度的百分比，0表示基因的 5’端，100 表示基因的
                3’端；纵坐标为比对到所有基因的横轴位置上相应区间内的序列条数的总和。图中体现了所有基因覆盖情况的叠加结果，曲线中每个点的纵坐标表示所有基因在该相对比例位置上所有序列的数量；曲线反映了测序所得序列是否在基因上均匀分布。如果在靠近左端有明显的峰值，说明测序结果有明显的5’偏向性。如果在靠近右端有明显的峰值，说明测序结果有明显的3’偏向性。本图左右两端未有明显峰值，说明测序结果不具有偏向性，结果较均一。</p>
            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank"
                                                                href="03.RNAQualityAssessment/2.Coverage/"
                                                                style="color: blue;">03.RNAQualityAssessment/2.Coverage/</a>
            </p>
            <p><strong>参考文献</strong></p>
            <p id="ch0_sec3_p2" class="load_character">Wang L, Wang S, Li W. RSeQC: quality control of RNA-seq
                experiments. BIOINFORMATICS 2012;28:2184-5.</p>

            <h3 id="chapter1_5" class="target">五&nbsp;.基因表达分析</h3>
            <#if geneExp == "true">
                <h4>1.基因表达水平计算</h4>
            </#if>
            <p id="ch0_sec3_p2" class="load_character">
                转录本的丰度体现基因的表达水平，转录本丰度越高，则基因表达水平越高。在RNA_seq分析中，通过对定位到基因组区域的测序序列（clean
                reads）的数量来估计基因的表达水平。依据所有样本与参考基因组比对的结果，计算每个基因/转录本在样本中的FPKM值，以该值作为基因/转录本在样本中的表达量。最终对所有基因/转录本在各组样本中的表达进行差异显著性分析，找出相对差异表达的基因/转录本，并对其进行可视化分析。</p>
            <p id="ch0_sec3_p2" class="load_character">衡量基因表达水平的标准为 RPKM (FPKM) 值（Reads/(Fragments) Per Kilobase of exon
                model per Million mapped reads），即每一百万条序列中，每个基因以一千个碱基为单位，比对上的
                reads个数。由于各基因碱基长度不同，在分析其特定表达量时，会将比对上的测序条数和其基因长度关联分析（具体公式见下）。RPKM 和 FPKM 的区别在于，基于不同的软件或算法。RPKM 中是以 reads
                为单位，而 FPKM 是以建库时打断的片段 (fragments) 为分析单位。当以 PE（即双端测序）方式建库时，同一个片段包含两条 reads。无论 RPKM还是
                FPKM，两种计算的结果，在客观体现基因表达量时都是一致的，没有优劣可比性。</p>
            <div align="center">
                <img src="css/icon/equation1.png" width="50%" height="50%"/>
            </div>
            <p id="ch0_sec3_p2" class="load_character">使用软件：cufflinks（<a target="_blank"
                                                                         href="http://cole-trapnell-lab.github.io/cufflinks/">
                http://cole-trapnell-lab.github.io/cufflinks/</a>）</p>
            <b class="tuming">Gene FPKM值统计表</b>
            <div align="center" style="padding-bottom:15px;">
                <iframe src="res/04.GeneExp/exp_stat.html" frameborder="0" align="center" height="${iframeHeight}px;" scrolling="no"
                        style="width: 1000px;"></iframe>
            </div>
            <b class="tuming">表达量( FPKM scores )分布图</b>
            <div align="center">
                <img src="res/04.GeneExp/exp_density.png" width="510px" height="510px"/>
            </div>


            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank" href="04.GeneExp/"
                                                                style="color: blue;">04.GeneExp/</a></p>
            <p id="ch0_sec3_p2" class="load_character">
                注：左图为所有基因的表达量概率密度分布图，图中横坐标为log2(FPKM+1)，该数值越高，表示基因表达量越高；纵坐标为基因的密度，即为对应横轴表达量的基因数/检测已表达基因的总数；图中每种颜色表示一个样本，所有概率的总和为
                1，即每个区域的面积均为 1；密度曲线的峰值表示整个样本基因表达量最集中的区域；</p>
            <#if geneExp == "true">
            <h4>2.样品间聚类</h4>
            <p id="ch0_sec3_p2" class="load_character">
                一般情况下，源于同一实验条件下的样品会聚类到一起，表明实验条件为影响聚类的主要因素。根据样品全部基因的表达量信息对样品进行系统聚类，得到下图：</p>
            <b class="tuming">样品间聚类结果</b>
            <div align="center">
           	<img src="res/04.GeneExp/Sample-hcluster-tree.png" width="60%" height="60%" />
           </div>
            <p id="ch0_sec3_p2" class="load_character">注：根据每个样品的基因表达量，计算两两之间的皮尔逊相关系数（Pearson Correlation
                Efficiency），来表示样品两两间的相似度。再利用系统聚类法（Hierarchical Cluster）将相似度高的样品归为一类，以此类推，最终得到样品的整体聚类结果。</p>
            </#if>
            <h3 id="chapter1_6" class="target">六&nbsp;.表达差异分析</h3>
            <p id="ch0_sec3_p2" class="load_character">基于fpkm的计算公式使用Cuffdiff(<a target="_blank"
                                                                                href="http://cufflinks.cbcb.umd.edu/">http://cufflinks.cbcb.umd.edu/</a>
                )软件，计算两两样品之间的表达差异</p>
            <p id="ch0_sec3_p2" class="load_character">
                cuffdiff输入的是已经map到基因组上的片段，如果一部分片段存在overlap的话，cufflink将它们分为一组来计算表达量。部分片段可以发现是来自于哪些转录本的，根据各自内部可变剪切的状况发现是来自于哪条转录本的。不过大多数序列会发现可能来自多个转录本，Cufflink就会根据fragment的长度估计这些片段来自哪条转录本。例如一条长片段来自于长的转录本的概率就比较大，最后根据最大似然法来估计这一组片段来自某个转录本的概率。</p>
            <p id="ch0_sec3_p2" class="load_character">通常采用默认参数运行软件，同时根据实际情况，如测序数据量，基因组情况对参数做适当的调整。</p>
            <p id="ch0_sec3_p2" class="load_character">使用软件：cuffdiff（<a target="_blank"
                                                                        href="http://cole-trapnell-lab.github.io/cufflinks/">http://cole-trapnell-lab.github.io/cufflinks/</a>）
            </p>
            <p id="ch0_sec3_p2" class="load_character">显著差异基因/转录本筛选条件：FDR=0.05 & FC >=2</p>
            <b class="tuming">分析结果说明</b>
            <div align="center" style="padding-bottom:15px;">
                <iframe src="res/05.GeneDiffExp/anno.html" frameborder="0" align="center" height="440px;"
                        style="width: 1000px;" scrolling="no"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">(1) gene_id：基因名</p>
            <p id="ch0_sec3_p2" class="load_character">(2) locus： 基因在基因组上的位置</p>
            <p id="ch0_sec3_p2" class="load_character">(3) sample_1：对照样品名</p>
            <p id="ch0_sec3_p2" class="load_character">(4) sample_2：处理样品名</p>
            <p id="ch0_sec3_p2" class="load_character">(5) fpkm_1：对照样品基因表达水平</p>
            <p id="ch0_sec3_p2" class="load_character">(6) fpkm_2：处理样品基因表达水平</p>
            <p id="ch0_sec3_p2" class="load_character">(7) log2： 处理样品表达水平比上对照样品表达水平取log2</p>
            <p id="ch0_sec3_p2" class="load_character">(8) pvalue： 对照处理之间表达差异分析pvalue</p>
            <p id="ch0_sec3_p2" class="load_character">(9) q_value：对照处理之间表达差异分析修正的pvalue</p>
            <p id="ch0_sec3_p2" class="load_character">(10) type： 样品之间表达水平比较类型，up：表示处理大于对照，down表示处理小于对照</p>
            <p id="ch0_sec3_p2" class="load_character">(11) func_anno： 基因功能描述</p>


            <b class="tuming">表达差异转录本信息统计（FDR<=0.05 & FC >=2）</b>

            <div align="center">
                <iframe src="res/05.GeneDiffExp/diff.exp.stat.html" frameborder="0" align="center" height="${statHeight}px"
                        scrolling="no" style="width: 1000px;"></iframe>
            </div>
            <b class="tuming">差异基因可视化散点图及火山图展示</b>
            <div align="center">
                <iframe src="res/05GeneDiffExp.html" frameborder="0" align="center" scrolling="no"
                        height="510px;"></iframe>
            </div>


            <p id="ch0_sec3_p2" class="load_character">
                注：左图为散点图（scatter-plot），横纵坐标分别表示两个样本中基因或转录本的表达量（FPKM值），这里横纵坐标的数值都做了对数化处理，每个点代表一个特定的基因或转录本，特定的一个点对应的横坐标值为该基因或转录本在样本1中的表达量，纵坐标值为该基因或转录本在样本2的表达量。图中红色点表示显著上调的基因，蓝色点表示显著下调的基因，黑色点为非显著差异基因；将所有基因或转录本映射上去后，越接近0的点，说明表达量越低；那些偏离了对角线程度越大的点表明该基因或转录本在两个样本间表达差异越大。Pearson
                correlation是指两个样本基因表达水平的相关性指数，该数值越接近于1，说明两个样本表达水平越一致，差异越不显著；如果两个样本是重复样本的话，说明重复性越好。</p>
            <p id="ch0_sec3_p2" class="load_character">
                右图为火山图（Volcano-plots），横坐标为基因或转录本在两个样本间表达差异的倍数变化值，即样本1的表达量除以样本2的表达量得到的数值，纵坐标为基因或转录本表达量变化差异的统计学检验值，即p值，p值越高则表达差异越显著，横纵坐标的数值都做了对数化处理。图中每个点代表一个特定的基因或转录本，红色点表示显著上调的基因，蓝色点表示显著下调的基因，黑色点为非显著差异基因；将所有基因或转录本映射上去之后，可以获知，在左边的点为表达差异下调的基因，右边的点为表达差异上调的基因，越靠左边和上边的点表达差异越显著。</p>
            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank" href="05.GeneDiffExp/"
                                                                style="color: blue;">05.GeneDiffExp/</a></p>
            <p id="ch0_sec3_p2" class="load_character"><strong>参考文献</strong></p>
            <p id="ch0_sec3_p2" class="load_character">Trapnell C, Williams BA, Pertea G, Mortazavi A, Kwan G, van Baren
                MJ, et al. Transcript assembly and quantification by RNA-Seq reveals unannotated transcripts and isoform
                switching during cell differentiation. Nat Biotechnol 2010;28:511-5.</p>
            <p id="ch0_sec3_p2" class="load_character">Trapnell C, Hendrickson DG, Sauvageau M, Goff L, Rinn JL, Pachter
                L. Differential analysis of gene regulation at transcript resolution with RNA-seq. Nat Biotechnol
                2013;31:46-53.</p>
            <p id="ch0_sec3_p2" class="load_character">Reiner A, Yekutieli D, Benjamini Y. Identifying differentially
                expressed genes using false discovery rate controlling procedures. BIOINFORMATICS 2003;19:368-75.</p>
            <h3 id="chapter1_7" class="target">七&nbsp;.差异基因注释</h3>
            <h4>1.&nbsp;差异基因GO注释</h4>
            <b class="tuming">上下调差异基因GO注释柱形图</b>
            <div align="center">
                <iframe src="res/06GO.html" frameborder="0" align="center" scrolling="no" height="510px;"></iframe>
            </div>


            <p id="ch0_sec3_p2" class="load_character">注：图中下方横坐标表示注释到某一GO term的基因个数，上方横坐标表示注释到某一GO
                term的基因数占所有有GO注释基因总数的比例（基因和GO term是多对多的关系，即一个基因可包含多个GO term的注释，某一个GO
                term也会对应到多个基因，并不是一对一的关系）；纵坐标表示GO的每一详细分类，三个方块分别代表GO的三个二级分类，分别为生物过程（Biological Process）、细胞组分（Cellular
                Component）、分子功能（Molecular Function）；红色柱形代表上调基因，蓝色柱形代表下调基因。</p>
            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank" href="06.DiffExpAnnotation/1.GO/"
                                                                style="color: blue;">06.DiffExpAnnotation/1.GO/</a></p>
            <h4>2.&nbsp;差异基因KEGG注释</h4>
            <p id="ch0_sec3_p2" class="load_character">KEGG 库(Kyoto encyclopedia of genes and genomes
                数据库)：京都基因和基因组百科全书，是系统分析基因功能、联系基因组信息和功能信息的知识库。利用KEGG数据库，可将基因按照参与的pathway通路或行使的功能分类，并针对两两分组的差异表达基因，以其中一个样本为对照，可将差异基因显示在KEGG
                pathway通路图上，展示差异基因KEGG注释通路图。</p>
            <p id="ch0_sec3_p2" class="load_character">*.html：差异基因 pathway
                详细信息的网页介绍，将鼠标移至红色或绿色边框的基因可直接弹出该基因的上下调情况及基因编号等信息。</p>
            <p id="ch0_sec3_p2" class="load_character">*.png：差异基因 KEGG 通路图片展示，见下图:</p>
            <b class="tuming">上下调差异基因KEGG注释通路图</b>
            <div align="center">
                <img src="res/06.DiffExpAnnotation/2.KEGG/ko.png" width="60%" height="60%"/>
            </div>

            <p id="ch0_sec3_p2" class="load_character">
                注：图中所有蓝色背景框的基因产物都属于本次转录组所测物种含有的背景基因，白色背景框的基因产物表示不属于本次所测物种的基因。图中有红色/黄色/天蓝边框的基因属于差异基因，其中红色代表上调基因，黄色代表下调基因，天蓝代表同时存在上调和下调基因注释到该代谢通路</p>
            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank" href="06.DiffExpAnnotation/2.KEGG/"
                                                                style="color: blue;">06.DiffExpAnnotation/2.KEGG/</a></p>
            <h3 id="chapter1_8" class="target">八&nbsp;.差异基因富集分析</h3>
            <h4>1.&nbsp;差异基因GO富集分析</h4>
            <p id="ch0_sec3_p2" class="load_character">本分析使用软件Goatools (<a target="_blank"
                                                                           href="https://github.com/tanghaibao/GOatools">https://github.com/tanghaibao/GOatools</a>
                ) 进行富集分析，使用方法为Fisher精确检验。为控制计算的假阳性率使用4种多重检验方法(Bonferroni, Holm, Sidak 和false discovery rate)
                对p值进行了校正，通常情况下，当经过校正的p值（p_fdr）≤0.05时，认为此GO功能存在显著富集情况。</p>
            <p id="ch0_sec3_p2" class="load_character">假设对于一个GO功能A，如果注释到该功能的基因数量如下表所示：</p>
            <div align="center">
                <iframe src="res/07.GeneDiffExpEnrich/1.GO/tool.html" frameborder="0" align="center"
                        height="180px" scrolling="no" style="width: 800px;"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">Fisher精确检验理论指出得到这一组数据的概率可以由超几何分布计算，公式如下</p>
            <div align="center">
                <img src="css/icon/equation2.png" width="40%" height="40%"/>
            </div>
            <p id="ch0_sec3_p2" class="load_character">使用Fisher精确检验得到的p值,分析时要采用多重检验方法对其进行校正, 通常采用FDR(false discovery
                rate)筛选富集得到的GO功能。对p值的FDR校正公式如下：</p>
            <div align="center">
                <img src="css/icon/equation3.png" width="25%" height="25%"/>
            </div>
            <p id="ch0_sec3_p2" class="load_character">分析软件：Goatools ( <a target="_blank"
                                                                          href="https://github.com/tanghaibao/Goatools">
                https://github.com/tanghaibao/Goatools</a> )</p>
            <b class="tuming">结果文件说明</b>
            <div align="center" style="padding-bottom:15px;">
                <iframe src="res/07.GeneDiffExpEnrich/1.GO/2.DEG/go.enrich.html" frameborder="0" align="center"
                        height="440px;"
                        style="width: 1000px;" scrolling="no"></iframe>
            </div>

            <p id="ch0_sec3_p2" class="load_character">(1) ID：GO名</p>
            <p id="ch0_sec3_p2" class="load_character">(2) enrichment：是否富集，e：显著富集</p>
            <p id="ch0_sec3_p2" class="load_character">(3) description：GO具体功能描述</p>
            <p id="ch0_sec3_p2" class="load_character">(4) ratio_in_study：该GO下差异基因数量/总差异基因数量</p>
            <p id="ch0_sec3_p2" class="load_character">(5) ratio_in_pop： 该GO下总基因数量/总基因数量</p>
            <p id="ch0_sec3_p2" class="load_character">(6) p_uncorrected：富集分析统计学显著水平</p>
            <p id="ch0_sec3_p2" class="load_character">(7) p_bonferroni：bonferroni方法矫正后的统计学显著水平</p>
            <p id="ch0_sec3_p2" class="load_character">(8) p_holm： holm方法矫正后的统计学显著水平</p>
            <p id="ch0_sec3_p2" class="load_character">(9) p_sidak： sidak方法矫正后的统计学显著水平</p>
            <p id="ch0_sec3_p2" class="load_character">(10) p_fdr： fdr方法矫正后的统计学显著水平该通路的具体网络链接</p>
            <p id="ch0_sec3_p2" class="load_character">(11) Namespace：GO通路类型</p>
            <p id="ch0_sec3_p2" class="load_character">(12) genes_in_study： 在该GO下的具体差异基因信息</p>

            <b class="tuming">表 GO富集分析统计表格(p<0.05)</b>
            <div align="center">
                <iframe src="res/07.GeneDiffExpEnrich/1.GO/diff.go.enrich.html" frameborder="0" align="center"
                        height="${statHeight}px" scrolling="no" style="width: 1000px;"></iframe>
            </div>
            <b class="tuming">GO 富集图</b>
            <div align="center">
                <iframe src="res/07GODEG.html" frameborder="0" align="center" scrolling="no" height="510px;"></iframe>
            </div>


            <p id="ch0_sec3_p2" class="load_character">注：横轴表示富集因子，即富集到某个GO term的差异基因个数占测序得到的背景基因个数的比值；纵坐标表示该GO
                term富集到的功能：圆圈越大代表富集到此功能的差异基因个数相对越多。从蓝色到红色的色谱代表未修正的p-value值。</p>
            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank" href="07.GeneDiffExpEnrich/1.GO/"
                                                                style="color: blue;">07.GeneDiffExpEnrich/1.GO/</a></p>
            <h4>2.&nbsp;差异基因GO有向无环图</h4>
            <p id="ch0_sec3_p2" class="load_character">有向无环图(Directed Acyclic
                Graph，DAG)为差异基因GO富集分析结果的图形化展示方式。图中，分支代表包含关系，从上至下所定义的功能范围越来越小，一般选取GO富集分析的结果前10位作为有向无环图的主节点，并通过包含关系，将相关联的GO
                Term一起展示，颜色的深浅代表富集程度。我们的项目中分别绘制生物过程(biological process)、分子功能(molecular function)和细胞组分(cellular
                component)的DAG图。</p>
            <div align="center">
                <iframe src="res/07GODAG.html" frameborder="0" align="center" scrolling="no" height="480px;"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">
                注：每个节点代表一个GO术语，方框代表的是富集程度为TOP10的GO，颜色的深浅代表富集程度，颜色越深就表示富集程度越高，每个节点上展示了该TERM的名称及富集分析的p-value</p>
            <h4>3.&nbsp;差异基因KEGG富集分析</h4>
            <p id="ch0_sec3_p2" class="load_character">本次分析使用KOBAS(<a target="_blank"
                                                                      href="http://kobas.cbi.pku.edu.cn/home.do">http://kobas.cbi.pku.edu.cn/home.do</a>
                ) 进行KEGGPATHWAY富集分析, 计算原理同GO功能富集分析，使用Fisher精确检验进行计算。为控制计算假阳性率，采用BH(FDR)
                方法进行多重检验，计算公式与上节相同，经过校正的p值（Corrected P-Value）以0.05为阈值，满足此条件的KEGG通路定义为在差异表达基因中显著富集的KEGG通路。</p>
            <b class="tuming">结果文件说明</b>
            <div align="center" style="padding-bottom:15px;">
                <iframe src="res/07.GeneDiffExpEnrich/2.KEGG/ko.enrich.html" frameborder="0" align="center"
                        height="440px;"
                        style="width: 1000px;" scrolling="no"></iframe>
            </div>

            <p id="ch0_sec3_p2" class="load_character">(1) #Term：KEGG通路的描述信息</p>
            <p id="ch0_sec3_p2" class="load_character">(2) Database：KEGG数据库</p>
            <p id="ch0_sec3_p2" class="load_character">(3) ID：KEGG数据库中通路唯一的编号信息</p>
            <p id="ch0_sec3_p2" class="load_character">(4) Input number：该通路下差异基因的个数</p>
            <p id="ch0_sec3_p2" class="load_character">(5) Background number：该通路下注释基因的个数</p>
            <p id="ch0_sec3_p2" class="load_character">(6) P-value：富集分析统计学显著水平</p>
            <p id="ch0_sec3_p2" class="load_character">(7) Corrected P-value：矫正后的统计学显著水平，Corrected P-value < 0.05
                该功能为富集项</p>
            <p id="ch0_sec3_p2" class="load_character">(8) Input-up： 该通路下具体的上调基因</p>
            <p id="ch0_sec3_p2" class="load_character">(9) Input-down： 该通路下具体的下调基因</p>
            <p id="ch0_sec3_p2" class="load_character">(10) Hyperlink： 该通路的具体网络链接</p>
            <b class="tuming">KEGG 富集图</b>
            <div align="center">
                <iframe src="res/07KEGG.html" frameborder="0" align="center" scrolling="no" height="510px;"></iframe>
            </div>

            <p id="ch0_sec3_p2" class="load_character">注：横轴表示富集因子，即富集到某个GO term的差异基因个数占测序得到的背景基因个数的比值；纵坐标表示该GO
                term富集到的功能：圆圈越大代表富集到此功能的差异基因个数相对越多。从蓝色到红色的色谱代表未修正的p-value值。</p>
            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank" href="07.GeneDiffExpEnrich/2.KEGG/"
                                                                style="color: blue;">07.GeneDiffExpEnrich/2.KEGG/</a></p>
            <h3 id="chapter1_9" class="target">九&nbsp;.表达模式聚类</h3>
            <p id="ch0_sec3_p2" class="load_character">
                将有显著差异的基因进行表达模式聚类分析，可以有效地发现不同基因间表达上的共同点，可以根据表达上的相似性推测基因功能的相似性；并根据表达模式聚类分析的结果，将表达模式相近的各组基因在各个样本中的表达趋势用曲线表示。</p>
            <p id="ch0_sec3_p2" class="load_character">
                采用距离计算算法：样本间为spearman，基因间为pearson，采用的聚类方法为hcluster（complete算法）。</p>
		            <p id="ch0_sec3_p2" class="load_character">heatmap_trendlines_for_x_subclusters.pdf：表达模式聚类子cluster趋势图</p>
            <p id="ch0_sec3_p2" class="load_character">*pdf ： 表达模式聚类热图，如下图所示</p>
            <b class="tuming">表达差异基因聚类图</b>
            <div align="center">
                <iframe src="res/08Heatmap.html" frameborder="0" align="center" scrolling="no" style="700px"
                        height="510;"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">注：图中每列表示一个样本，每行表示一个基因，图中的颜色表示基因在该组样本中表达量的大小（log10
                FPKM)，红色代表该基因在该样本中表达量较高，绿色代表表达量较低，具体表达量大小变化趋势请见左上方颜色条下的数字标注。左侧为基因聚类的树状图，右侧为基因的名称，两个基因分支离得越近，说明它们的表达量越接近；上方为样本聚类的树状图，下方为样本的名称，两个样本分支离的越近，说明这两个样本所有基因的表达模式越接近，即基因表达量变化趋势越接近。</p>


            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank" href="08.GeneDiffExpCluster"
                                                                style="color: blue;">08.GeneDiffExpCluster</a></p>
            <h3 id="chapter1_10" class="target">十&nbsp;.可变剪切分析</h3>
            <p id="ch0_sec3_p2" class="load_character">
                通常，在复杂的真核生物转录组中，基因转录生成的前体mRNA（pre-mRNA），有多种剪接方式，选择不同的外显子，产生不同的成熟mRNA，从而翻译为不同的蛋白质，构成生物性状的多样性。这种转录后的mRNA
                加工过程称为可变剪接或选择性剪接（Alternative splicing），可变剪切形式如下：</p>
            <b class="tuming">基因可变剪接类型</b>
            <div align="center">
                <img src="css/icon/alter.png" width="70%" height="70%"/>
            </div>
            <p id="ch0_sec3_p2" class="load_character">使用软件：MATS （<a target="_blank"
                                                                     href="http://rnaseq-mats.sourceforge.net">http://rnaseq-mats.sourceforge.net/</a>）
            </p>
            <p id="ch0_sec3_p2" class="load_character">本次分析采用MATS检测基因的可变剪切状况,使用Markov chain Monte
                Carlo(MCMC)计算两样本间差异可变剪切的显著性P值以及错误率。分析步骤如下：</p>
            <p id="ch0_sec3_p2" class="load_character">1、 根据mapping到junction区域的reads数计算每个外显子的保留比率。</p>
            <p id="ch0_sec3_p2" class="load_character">2、 使用所有剪切位点的外显子保留比率建立两个样本之间的相似度先验模型。</p>
            <p id="ch0_sec3_p2" class="load_character">3、 在建立的先验模型基础上，使用马尔可夫链蒙特卡罗（MCMC）方法来计算可变剪切出现的贝叶斯后验概率。</p>
            <p id="ch0_sec3_p2" class="load_character">4、 通过比较计算得到的后验概率与计算得到的比率。计算每个外显子的显著性P值，并对其进行多重检验得到FDR值。</p>
            <b class="tuming">可变剪切统计表如下：</b>
            <div align="center">
                <iframe src="res/09.AlterSplice/NovelSplice.stat.html" frameborder="0" align="center" height="350px;"
                        scrolling="no" style="width: 1000px;"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">(1) ES:外显子跳跃</p>
            <p id="ch0_sec3_p2" class="load_character">(2) 5UTR: 5’UTR端可变剪切的个数</p>
            <p id="ch0_sec3_p2" class="load_character">(3) 3UTR: 3’UTR端可变剪切的个数</p>
            <p id="ch0_sec3_p2" class="load_character">(4) 5S：Alternative 5’ splice site5’端可变剪切</p>
            <p id="ch0_sec3_p2" class="load_character">(5) 3S：Alternative 3’ splice site 3’端可变剪切</p>
            <p id="ch0_sec3_p2" class="load_character">(6) RI：Retained intron 内含子保留</p>
            <p id="ch0_sec3_p2" class="load_character">(7) Other: 其他类型可变剪切的个数</p>

            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank" href="09.AlterSplice/"
                                                                style="color: blue;">09.AlterSplice/</a></p>
            <h3 id="chapter1_11" class="target">十一&nbsp;.新转录本预测</h3>
            <p id="ch0_sec3_p2" class="load_character">将原始序列与基因组比对，拼接生成新的转录本序列。结果各列解释如下：基于所选参考基因组序列，使用Cufflinks
                软件对Mapped Reads 进行拼接，并与原有的基因组注释信息进行比较，寻找原来未被注释的转录区，发掘该物种的新转录本和新基因，从而补充和完善原有的基因组注释信息.新转本的GFF
                格式文件部分见下表：</p>
            <b class="tuming">新转录本GFF文件</b>
            <div align="center">
                <iframe src="res/10.NewTranscript/gff.html" frameborder="0" align="center" height="590px;"
                        scrolling="no" style="width: 1000px;"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">第1列：染色体号；</p>
            <p id="ch0_sec3_p2" class="load_character">第2列：注释信息的来源，Cufflinks软件；</p>
            <p id="ch0_sec3_p2" class="load_character">第3列：注释特征（Feature）类型；</p>
            <p id="ch0_sec3_p2" class="load_character">第4、5列：特征序列的起止位置；</p>
            <p id="ch0_sec3_p2" class="load_character">第6列：得分，数字，注释信息可能性的说明，“.”表示缺失值；</p>
            <p id="ch0_sec3_p2" class="load_character">第7列：特征序列所在的正负链；</p>
            <p id="ch0_sec3_p2" class="load_character">第8列：仅对注释类型为CDS有效，表示起始编码的位置，有效值为0、1、2，“.”表示缺失值；</p>
            <p id="ch0_sec3_p2" class="load_character">第9列：以多个键值对组成的注释信息描述。</p>

            <p id="ch0_sec3_p2" class="load_character">提供基因组注释补充信息的同时，也提供以FASTA 格式存储的新基因序列。新基因序列的FASTA 文件部分见下表：</p>
            <div align="center" style="margin-left: 200px;">
                <iframe src="res/10.NewTranscript/fa.html" frameborder="0" align="center" height="600px;"
                        scrolling="no" style="width: 1000px;"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">
                注：FASTA格式每一个序列单元以“>”开头，直到出现下一个“>”之前为止。“>”开头的行为序列ID号。</p>
            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank" href="10.NewTranscript/"
                                                                style="color: blue;">10.NewTranscript/</a></p>
            <#if snp =="true">


            <h3 id="chapter1_12" class="target">十二&nbsp;.SNP分析</h3>
            <p id="ch0_sec3_p2" class="load_character">SNP（Single Nucleotide
                Polymorphisms，单核苷酸多态性），是指在基因组上单个核苷酸的变异，包括置换、颠换、缺失和插入。以组装好的转录本为模板序列，将原始序列与其进行比对，利用Samtools（<a
                        target="_blank" href="http://samtools.sourceforge.net/"> http://samtools.sourceforge.net/</a>）和GATK(<a
                        href="https://software.broadinstitute.org/gatk/">https://software.broadinstitute.org/gatk/</a>)软件寻找候选SNP。
            </p>
            <b class="tuming">SNP分析结果</b>
            <div align="center" style="padding-bottom:15px;">
                <iframe src="res/11.SNP/vfc.geno.anno.html" frameborder="0" align="center" height="440px;"
                        scrolling="no"
                        style="width: 1000px;"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">(1) Chr：snp位点所在染色体</p>
            <p id="ch0_sec3_p2" class="load_character">(2) pos：snp位点坐标</p>
            <p id="ch0_sec3_p2" class="load_character">(3) ref：参考序列在该位点的基因型</p>
            <p id="ch0_sec3_p2" class="load_character">(4) ALT：该位点的其它基因型</p>
            <p id="ch0_sec3_p2" class="load_character">(5)
                sam：该样品实际snp类型，其中M/R/W/S/Y/K/表示杂合碱基，M表示AC杂合，R表示AG杂合，W表示AT杂合，S表示CG杂合，Y表示CT杂合，K表示GT杂合</p>
            <p id="ch0_sec3_p2" class="load_character">(6) region：snp位点在基因组上的位置</p>
            <p id="ch0_sec3_p2" class="load_character">(7) gene： snp位点在具体基因的信息</p>
            <p id="ch0_sec3_p2" class="load_character">(8) nucl： snp在基因上的核苷酸序列变化（仅对落在外显子区(exonic)的snp有效）</p>
            <p id="ch0_sec3_p2" class="load_character">(9) protein： snp在基因上的蛋白序列变化</p>
            <p id="ch0_sec3_p2" class="load_character">(10) type： snp在基因上的蛋白序列变化类型，synonymous SNV：同义突变，nonsynonymous
                SNV：非同义突变，stopgain SNV：终止密码子获得，stoploss SNV：终止密码子丢失</p>

            <b class="tuming">样品snp信息统计</b>
            <div align="center">
                <iframe src="res/11.SNP/snp.st.html" frameborder="0" align="center" height="300px;" scrolling="no"
                        style="width: 1000px;"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">
                注：全基因组SNP突变可以分成6类。以T:A->C:G为例，此种类型SNP突变包括T->C和A->G。由于测序数据既可比对到参考基因组的正链，也可比对到参考基因组的负链，当T->C类型突变出现在参考基因组正链上，A->G类型突变即在参考基因组负链的相同位置，所以将T->C和A->G划分成一类。</p>
            <b class="tuming">Snp信息统计，纵坐标为snp数量，横坐标为突变类型</b>
            <div align="center">
                <iframe src="res/11SNP.html" frameborder="0" align="center" scrolling="no" style="width: 650px;"
                        height="510px;"></iframe>
            </div>
            <p id="ch0_sec3_p2" class="load_character">结果目录： <a target="_blank" href="11.SNP/"
                                                                style="color: blue;">11.SNP/</a></p>
            </#if>
            <h2 id="chapter2" class="target">附录</h2>
            <h3 id="chapter2_1" class="target">一&nbsp;.常用数据库及专用名词介绍</h3>
            <p id="ch0_sec3_p2" class="load_character">[1]. &nbsp;NCBI_NT：NCBI非冗余核酸库，包括GenBank、RefSeq、PDB的数据，仅未预测出蛋白的序列比对了该数据库</p>
            <p id="ch0_sec3_p2" class="load_character">[2]. &nbsp;NCBI_NR：NCBI非冗余蛋白库，包括了SwissProt、PIR（Protein
                InformationResource）、PRF（Protein Research Foundation）、PDB（Protein Data Bank）蛋白质数据库中非冗余的数据以及从GenBank
                和RefSeq 的CDS 数据翻译来的蛋白质数据</p>
            <p id="ch0_sec3_p2" class="load_character">[3]. &nbsp;GO(Gene Ontology,<a target="_blank"
                                                                                      href="http://www.geneontology.org/">http://www.geneontology.org/</a>)
                是基因本体论联合会建立的数据库，其目的在于标准化不同数据库中的关于基因和基因产物的生物学术语，对基因和蛋白功能进行限定和描述。利用 GO
                数据库，可以将基因按照它们参与的生物学过程、构成细胞的组分、实现的分子功能等进行分类。</p>
            <p id="ch0_sec3_p2" class="load_character">GO功能包括3大方面：</p>
            <p id="ch0_sec3_p2" class="load_character">Cellular component(GO:0005575)：the parts of a cell or its
                extracellular environment，such as nucleus(GO:0005634),ribosome(GO:0005840);</p>
            <p id="ch0_sec3_p2" class="load_character">Molecular function(GO:0003674)：the elemental activities of a gene
                product at the molecular level, such as binding(GO:0005488),catalysis(GO:0043364);</p>
            <p id="ch0_sec3_p2" class="load_character">Biological process(GO:0008150) ：operations or sets of molecular
                events with a defined beginning and end, pertinent to the functioning of integrated living units: cells,
                tissues, organs, and organisms, such as cellular physiological process(GO:0009987),signal
                transduction(GO:0007165)。</p>
            <p id="ch0_sec3_p2" class="load_character">[4]. &nbsp;KEGG 库(Kyoto encyclopedia of genes and genomes
                数据库)：京都基因和基因组百科全书，是系统分析基因功能、联系基因组信息和功能信息的知识库。基因组信息存储在GENES 数据库里，包括完整和部分测序的基因组序列；更高级的功能信息存储在PATHWAY
                数据库里，包括图解的细胞生化过程如代谢、膜转运、信号传递、细胞周期，还包括同系保守的子通路等信息；KEGG
                的另一个数据库是LIGAND，包含化学物质、酶分子、酶反应等信息；KEGG还有个数据库是DISEASE，提供和人类疾病有关的的信息，整合了疾病的遗传和环境影响因素等信息，包括已知疾病相关基因，环境影响因子，诊断标记，对应治疗药物等。</p>
            <p id="ch0_sec3_p2" class="load_character">[5]. &nbsp;STRING（Search Tool for the Retrieval of Interacting
                Genes）：是欧洲分子生物学实验室建立的数据库，这个数据库可用于预测蛋白质的相互作用，它利用了COG数据库的信息对蛋白进行直系同源聚类。通过blast比对String数据库，可以得到蛋白编码基因的COG分类信息，一个COG表示一组直系同源蛋白。</p>
            <p id="ch0_sec3_p2" class="load_character">[6]. &nbsp;COG(Clusters of Orthologous Groups of
                proteins，<a target="_blank" href="http://www.ncbi.nlm.nih.gov/COG/">http://www.ncbi.nlm.nih.gov/COG/</a>
                )为蛋白直系同源簇数据库，是选取66株已完成的基因组的蛋白质序列，根据系统进化关系分类构建而成。与COG数据库比对可以进行功能注释、归类以及蛋白进化分析。</p>
            <h3 id="chapter2_2" class="target">二&nbsp;.文件解压缩方法</h3>
            <p id="ch0_sec3_p2" class="load_character">所有提供的文件均为Linux系统下的文件，压缩包使用“tar –zcvf ”命令压缩，以下为不同系统用户解压缩的方法： </p>
            <p id="ch0_sec3_p2" class="load_character">Unix/Linux/Mac用户：使用tar –zxvf *.tar.gz命令</p>
            <p id="ch0_sec3_p2" class="load_character">Windows用户：使用WinRAR软件解压缩</p>
            <h3 id="chapter2_3" class="target">三&nbsp;.文件打开或浏览方法</h3>
            <p id="ch0_sec3_p2" class="load_character">
                如果在本附录中无特殊说明，所有提供的文件均为Linux系统下文本文件，Unix/Linux用户可以使用more或less命令查看文本文件内容。对于Windows用户，一般文本文件可以使用写字板或excel打开。推荐使用开源文本编辑器gedit
                for win32版本(<a target="_blank"
                               href="http://projects.gnome.org/gedit/">http://projects.gnome.org/gedit/</a>)或者商业文本编辑器UltraEdit。当文件比较大时，打开文件可能导致Windows系统死机，建议使用性能较好的计算机或者使用更适合处理大量数据的Unix/Linux系统打开。
            </p>
            <p id="ch0_sec3_p2" class="load_character">
                数据中可能包含部分图像文件，一般图像文件后缀名为.png、.jpg、.gif等，对于图像文件，Windows用户可以使用图片浏览器打开，Linux/Unix用户使用display命令打开。</p>
            <p id="ch0_sec3_p2" class="load_character">后缀名为svg的文件为文本格式描述的图像文件，Windows用户需要安装Adobe
                Illustrator软件打开。Linux/Unix用户可以使用rsvg-view命令查看。公司默认提供“pdf“格式的矢量图，可利用"Adobe Illustrator"软件对该格式图片进行编辑。</p>
            <p id="ch0_sec3_p2" class="load_character">
                Linux下的表格均为制表符(Tab)分割的文本，为了便于阅读，建议使用excel或openoffice等办公软件用表格形式打开，打开时请用“Tab分割”方式。</p>
            <h2 id="chapter3" class="target">分析方法说明（英文）</h2>
            <h3 class="target">1&nbsp;. RNA extraction</h3>
            <p id="ch0_sec3_p2" class="load_character">Total RNA was extracted from the tissue using TRIzol® Reagent
                according the manufacturer’s instructions(Invitrogen) and genomic DNA was removed using DNase I
                (TaKara). Then RNA quality was determined using 2100 Bioanalyser (Agilent) and quantified using the
                ND-2000 (NanoDrop Technologies). High-quality RNA sample (OD260/280=1.8~2.2, OD260/230≥2.0, RIN≥6.5,
                28S:18S≥1.0, >10μg) is used to construct sequencing library. </p>
            <h3 class="target">2&nbsp;. Library preparation, and Illumina Hiseq sequencing</h3>
            <p id="ch0_sec3_p2" class="load_character">RNA-seq transcriptome libraries were prepared following TruSeqTM
                RNA sample preparation Kit from Illumina (San Diego, CA), using 1μg of total RNA. Shortly, messenger RNA
                was isolated with polyA selection by oligo(dT) beads and fragmented using fragmentation buffer. cDNA
                synthesis, end repair, A-base addition and ligation of the Illumina-indexed adaptors were performed
                according to Illumina’s protocol. Libraries were then size selected for cDNA target fragments of 200–300
                bp on 2% Low Range Ultra Agarose followed by PCR amplified using Phusion DNA polymerase (NEB) for 15 PCR
                cycles. After quantified by TBS380, Paired-end libraries were sequenced with the Illumina HiSeq PE
                2X151bp read length.</p>
            <h3 class="target">3&nbsp;. Reads quality control and mapping</h3>
            <p id="ch0_sec3_p2" class="load_character">The raw paired end reads were trimmed and quality controlled by
                Trimmomatic with default parameters (<a target="_blank"
                                                        href="http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic">http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic</a>
                ). Then clean reads were separately aligned to reference genome with orientation mode using tophat (<a
                        target="_blank" href="http://tophat.cbcb.umd.edu/">http://tophat.cbcb.umd.edu/</a>)[1] software.
                Tophat was a program which can align RNA-Seq reads to a genome in order to identify gene expression and
                exon-exon splice junctions. It is built on the ultrafast short read mapping program Bowtie2. This
                software was used to map with default parameters. </p>
            <h3 class="target">4&nbsp;. Differential expression analysis and Functional enrichment</h3>
            <p id="ch0_sec3_p2" class="load_character">To identify DEGs (differential expression genes) between the two
                different samples, the expression level for each transcript was calculated using the fragments per
                kilobase of exon per million mapped reads (FRKM) method. Cuffdiff (<a target="_blank"
                                                                                      href="http://cufflinks.cbcb.umd.edu/">
                    http://cufflinks.cbcb.umd.edu/</a>)[2] was used for differential expression analysis. The DEGs
                between two samples were selected using the following criteria: i) the logarithmic of fold change was
                greater than 2 and the fdr should be less than 0.05. To understand the functions of the differentially
                expressed genes, GO functional enrichment and KEGG pathway analysis were carried out by Goatools (<a
                        target="_blank" href="https://github.com/tanghaibao/Goatools">https://github.com/tanghaibao/Goatools</a>
                ) and KOBAS (<a target="_blank" href="http://kobas.cbi.pku.edu.cn/home.do">http://kobas.cbi.pku.edu.cn/home.do</a>
                )[3]. DEGs were significantly enriched in GO terms and metabolic pathways when their
                Bonferroni-corrected P-value was less than 0.05.</p>
            <h3 class="target">5&nbsp;. New transcript</h3>
            <p id="ch0_sec3_p2" class="load_character">The TopHat-Cufflinks pipeline was used to predict gene isoforms
                from the RNA-seq data. In TopHat (<a target="_blank" href="http://tophat.cbcb.umd.edu/">
                    http://tophat.cbcb.umd.edu/</a>)(Trapnell et al. 2009), the option ‘‘min-isoform-fraction’’ was
                disabled, instead ‘‘coverage-search,’’ “butterfly-search,’’ and ‘‘microexon-search’’ were used. The
                expected fragment length was set to 200 bp and the ‘‘small-anchor-fraction’’ was set to 0.08, which
                requires at least 8 bp on each side of an exon junction for the 100-bp RNA-seq data. Cuffcompare was
                used to compare and merge the reference annotation and the isoform predictions.</p>
            <h3 class="target">6&nbsp;. Alternative Splice events Identification</h3>
            <p id="ch0_sec3_p2" class="load_character">Alternative splice events that occurred in the samples were
                identified by Multivariate Analysis of Transcript Splicing (MATS, <a target="_blank"
                                                                                     href="http://rnaseq-mats.sourceforge.net/">http://rnaseq-mats.sourceforge.net/</a>
                ). Only the isoforms that were similar to the reference or comprised novel splice junctions were
                considered, and the splicing differences were detected as exon inclusion, exclusion, alternative 5′, 3′,
                and intron retention events.</p>
            <h4>Reference：</h4>
            <p id="ch0_sec3_p2" class="load_character">[1] Trapnell C, Pachter L, Salzberg SL. TopHat: discovering
                splice junctions with RNA-Seq, doi:10.1093/bioinformatics</p>
            <p id="ch0_sec3_p2" class="load_character">[2] Trapnell C, Hendrickson DG, Sauvageau M, Goff L, Rinn JL,
                Pachter L. Differential analysis of gene regulation at transcript resolution with RNA-seq. Nat
                Biotechnol 2013;31:46-53.</p>
            <p id="ch0_sec3_p2" class="load_character">[3] Xie C, Mao X, Huang J, Ding Y, Wu J, Dong S, et al. KOBAS
                2.0: a web server for annotation and identification of enriched pathways and diseases. Nucleic Acids Res
                2011;39:W316-22.</p>
            <p id="ch0_sec3_p2" class="load_character">[4] Trapnell C, Pachter L, Salzberg SL. TopHat: discovering
                splice junctions with RNA-Seq. BIOINFORMATICS 2009;25:1105-11.</p>
            <p id="ch0_sec3_p2" class="load_character">[5] Shen S, Park JW, Huang J, Dittmar KA, Lu ZX, Zhou Q, et al.
                MATS: a Bayesian framework for flexible detection of differential alternative splicing from RNA-Seq
                data. Nucleic Acids Res 2012;40:e61.</p>

            <script type="text/javascript">
                $(document).ready(function ($) {
                    var a = $("h3");
                    for (var i = 0; i < a.length; i++) {
                        $(a[i]).addClass("target");
                    }
                    var b = $("h4");
                    for (var i = 0; i < b.length; i++) {
                        $(b[i]).addClass("target");
                    }
                    var c = $("h2");
                    for (var i = 0; i < c.length; i++) {
                        $(c[i]).addClass("target");
                    }
                });


                function js_open(name) {
                    window.open(name);
                }
            </script>

</body>

</html>