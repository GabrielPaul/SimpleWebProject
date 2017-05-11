<%-- 
    Document   : index
    Created on : 2016-12-1, 0:04:03
    Author     : dell
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ page pageEncoding="utf-8" language="java" import="java.sql.*" errorPage="" %>
<% String inputUname=(String)session.getAttribute("inputUname"); %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>旧物新用</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<!--Less styles --> 
   <!-- Other Less css file //different less files has different color scheam
	<link rel="stylesheet/less" type="text/css" href="themes/less/simplex.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/classified.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/amelia.less">  MOVE DOWN TO activate
	-->
	<!--<link rel="stylesheet/less" type="text/css" href="themes/less/bootshop.less">
	<script src="themes/js/less.js" type="text/javascript"></script> -->
	
<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen"/>
    <link href="themes/css/base.css" rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
	<link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->	
	<link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="themes/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png">
	<style type="text/css" id="enject"></style>
  </head>
<body>
    <!-- 最顶层================================================== -->
<div id="header">
<div class="container">
<div id="welcomeLine" class="row">
    
    <% if(inputUname==null){ %>
	<div class="span6">欢迎光临！请您<strong> <a href="login.jsp" name="loginname" >登录</a></strong></div>
        <% }else { %>
        
        <div class="span6">欢迎光临！<strong> <a href="Umessage.jsp" name="loginname" ><%=inputUname%></a><a href="loginout.jsp">&nbsp;/&nbsp;退出</a></strong></div>       
        <% } %>       
	<div class="span6">
	<div class="pull-right">
		<a href="product_summary.html"><span class="">Fr</span></a>
		<a href="product_summary.html"><span class="">Es</span></a>
		<span class="btn btn-mini">En</span>
		<a href="product_summary.html"><span>&pound;</span></a>
		<span class="btn btn-mini">$155.00</span>
		<a href="product_summary.html"><span class="">$</span></a>
		<a href="product_summary.jsp"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> 我的购物车 </span> </a> 
	</div>
	</div>
</div>
<!-- 导航栏 ================================================== -->
<div id="logoArea" class="navbar">
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner">
    <a class="brand" href="index.jsp"><img src="themes/images/logo1.png" alt="旧物新用"/></a>
		<form class="form-inline navbar-search" method="post" action="products.jsp" >
			<input id="srchFld" class="srchTxt" type="text" name="inputselect"/> <!-- 输入查询框 -->
			<select class="srchTxt" name="inputselect1"><!-- 物品分类选择框 -->
				<option>全部</option>
				<option>书籍 </option>
				<option>手机</option>
				<option>电脑 </option>
				<option>衣物</option>
				<option>生活用品</option>
			</select> 
			<button type="submit" id="submitButton" class="btn btn-primary">查询</button>
		</form>
		<ul id="topMenu" class="nav pull-right">
			<li ><a href="product_sell.jsp">我想卖</a></li>
			<li ><a href="normal.jsp">出售记录</a></li>
			<li ><a href="contact.jsp">淘宝记录</a></li>
			<li ><a href="contact.jsp">投诉建议</a></li>
			<li ><a href="#login" role="button" data-toggle="modal" style="padding-right:0">
					<span class="btn btn-large btn-success">登录</span>
				</a>
			<div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3>请登录</h3>
			</div>
			<div class="modal-body">
			<form class="form-horizontal loginFrm" method="post" action="logincheck.jsp">
				<div class="control-group">								
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="inputUname" placeholder="用户名" name="inputUname"><!--用户名文本框为Uname-->
                    <a href="login.jsp">&nbsp; &nbsp; 还没有账号，需要注册？</a>
                </div>
				<div class="control-group">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="password" id="inputPwd" placeholder="密码" name="inputPwd"><!--密码文本框为Pwd-->
                    <a href="forgetpass.jsp">&nbsp; &nbsp; 忘记密码?</a>
                </div>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				<button type="submit" class="btn btn-success" >登录</button>
                         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				<button class="btn" data-dismiss="modal" aria-hidden="true">退出</button>
            </form>
		  </div>
	</div>
	</li>
    </ul>
  </div>
</div>
</div>
</div>
<!-- Header End====================================================================== -->
<div id="carouselBlk">
	<div id="myCarousel" class="carousel slide">
		<div class="carousel-inner">
		  <div class="item active">
		  <div class="container">
			<a href="product_details.jsp"><img style="width:100%" src="themes/images/carousel/1.jpg" alt="special offers"/></a>
			<div class="carousel-caption">
				  <h4>滚动栏</h4>
				  <p>介绍</p>
				</div>
		  </div>
		  </div>
		  <div class="item">
		  <div class="container">
			<a href="product_details.jsp"><img style="width:100%" src="themes/images/carousel/2.jpg" alt=""/></a>
				<div class="carousel-caption">
				  <h4>滚动栏l</h4>
				  <p>介绍</p>
				</div>
		  </div>
		  </div>
		  <div class="item">
		  <div class="container">
			<a href="product_details.jsp"><img src="themes/images/carousel/3.jpg" alt=""/></a>
			<div class="carousel-caption">
				  <h4>滚动栏l</h4>
				  <p>介绍</p>
				</div>
			
		  </div>
		  </div>  
                      <div class="item">
		  <div class="container">
			<a href="product_details.jsp"><img src="themes/images/carousel/4.jpg" alt=""/></a>
			<div class="carousel-caption">
				  <h4>滚动栏l</h4>
				  <p>介绍</p>
				</div>
			
		  </div>
		  </div>  
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
	  </div> 
</div>
<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
		<!--div class="well well-small"><a id="myCart" href="product_summary.html"><img src="themes/images/ico-cart.png" alt="cart">3 Items in your cart  <span class="badge badge-warning pull-right">$155.00</span></a></div-->
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
                    <li><a href="products.jsp">全部商品</a></li>
			<li class="subMenu open"><a>电子产品</a>
				<ul>
				<li><a class="active" href="products.jsp">><i class="icon-chevron-right"></i>手机</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>电脑</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>数码相机</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>其他</a></li>
				</ul>
			</li>
			<li class="subMenu"><a> 衣物</a>
			<ul style="display:none">
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>衣服</a></li>
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>裤子</a></li>												
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>鞋子</a></li>	
															
			</ul>
			</li>
			<li class="subMenu"><a>书籍</a>
				<ul style="display:none">
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>小说</a></li>
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>散文</a></li>												
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>四六级书籍</a></li>	
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>考研</a></li>
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>雅思托福</a></li>												
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>专业书籍</a></li>												
														
			</ul>
			</li>
			<li><a href="products.jsp">生活用品</a></li>
			
		</ul>
		<br/>
		  <div class="thumbnail">
                      <a href="product_details.jsp">
			<img src="themes/images/products/panasonic.jpg" alt="数码相机" /></a>
			<div class="caption">
			  <h5>数码相机</h5>
				<h4 style="text-align:center"><a class="btn" href="product_summary.jsp">添加<i class="icon-shopping-cart"></i></a> &nbsp; &nbsp; &nbsp; &nbsp; ?222.00</h4>
			</div>
		  </div><br/>
			<div class="thumbnail">
                             <a href="product_details.jsp">
				<img src="themes/images/products/46.jpg" title="Bootshop New Kindel" alt="Bootshop Kindel"></a>
				<div class="caption">
				  <h5>四六级词汇精讲</h5>
				   <h4 style="text-align:center"><a class="btn" href="product_summary.jsp">添加<i class="icon-shopping-cart"></i></a> &nbsp; &nbsp; &nbsp; &nbsp; ?222.00</h4>
				</div>
			  </div><br/>
			<div class="thumbnail">
                             <a href="product_details.jsp">
				<img src="themes/images/products/13.jpg" title="Bootshop New Kindel" alt="Bootshop Kindel"></a>
				<div class="caption">
				  <h5>精品手表</h5>
				   <h4 style="text-align:center"><a class="btn" href="product_summary.jsp">添加<i class="icon-shopping-cart"></i></a> &nbsp; &nbsp; &nbsp; &nbsp; ?222.00</h4>
				</div>
			  </div><br/>
	</div>
<!-- Sidebar end=============================================== -->
		<div class="span9">		
			<div class="well well-small">
			<h4>精品推荐<!--small class="pull-right">200+ featured products</small--></h4>
			<div class="row-fluid">
			<div id="featured" class="carousel slide">
			<div class="carousel-inner">
			  <div class="item active">
			  <ul class="thumbnails">
				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i><!--新商品标记-->
					<a href="product_details.jsp"><img src="themes/images/products/b1.jpg" alt=""></a>
					<div class="caption">
					  <h5>精品辣条</h5>
					 <h4><span class="pull-center">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;?222.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
				
					<a href="product_details.jsp"><img src="themes/images/products/b2.jpg" alt=""></a>
					<div class="caption">
					  <h5>沐浴露</h5>
					  <h4><span class="pull-center">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;?222.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i>
					<a href="product_details.jsp"><img src="themes/images/products/b3.jpg" alt=""></a>
					<div class="caption">
					  <h5>小清新夹克</h5>
					    <h4><span class="pull-center">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;?222.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
				  
					<a href="product_details.jsp"><img src="themes/images/products/b4.jpg" alt=""></a>
					<div class="caption">
					  <h5>宿舍除味剂</h5>
					    <h4><span class="pull-center">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;?222.00</span></h4>
					</div>
				  </div>
				</li>
			  </ul>
			  </div>
			
			   <div class="item">
			  <ul class="thumbnails">
				<li class="span3">                                  
				  <div class="thumbnail">
                                       <i class="tag"></i>
                                       <i class="tag"></i>
					<a href="product_details.jsp"><img src="themes/images/products/9.jpg" alt=""></a>
					<div class="caption">
					  <h5>爱之花仙子</h5>
					  <h4><span class="pull-center">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;?222.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<a href="product_details.jsp"><img src="themes/images/products/10.jpg" alt=""></a>
					<div class="caption">
					  <h5>情侣小熊</h5>
					  <h4><span class="pull-center">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;?222.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
                                       <i class="tag"></i>
					<a href="product_details.jsp"><img src="themes/images/products/11.jpg" alt=""></a>
					<div class="caption">
					  <h5>星空之爱</h5>
					  <h4><span class="pull-center">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;?222.00</span></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<a href="product_details.jsp"><img src="themes/images/products/1.jpg" alt=""></a>
					<div class="caption">
					  <h5>另一只眼</h5>
					  <h4><span class="pull-center">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;?222.00</span></h4>
					</div>
				  </div>
				</li>
			  </ul>
			  </div>
			 
			  </div>
			  <a class="left carousel-control" href="#featured" data-slide="prev">?</a>
			  <a class="right carousel-control" href="#featured" data-slide="next">?</a>
			  </div>
			  </div>
		</div>
		<h4>最新上架</h4>
			  <ul class="thumbnails">
				<li class="span3">
				  <div class="thumbnail">
					<a  href="product_details.jsp"><img src="themes/images/products/12.jpg" alt=""/></a>
					<div class="caption">
					  <h5>糖糖</h5>
					  <p> 
						物品描述
					  </p>
					 
					  <h4 style="text-align:center"><a class="btn" href="product_summary.jsp">添加<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary">?222.00</a></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<a  href="product_details.jsp"><img src="themes/images/products/7.jpg" alt=""/></a>
					<div class="caption">
					  <h5>读卡器</h5>
					  <p> 
						物品描述
					  </p>
					<h4 style="text-align:center"><a class="btn" href="product_summary.jsp">添加<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary">?222.00</a></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<a  href="product_details.jsp"><img src="themes/images/products/8.jpg" alt=""/></a>
					<div class="caption">
					  <h5>卡托</h5>
					  <p> 
						物品描述
					  </p>
					 <h4 style="text-align:center"><a class="btn" href="product_summary.jsp">添加<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" >?222.00</a></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<a  href="product_details.jsp"><img src="themes/images/products/9.jpg" alt=""/></a>
					<div class="caption">
					  <h5>爱之花</h5>
					  <p> 
						物品描述
					  </p>
					<h4 style="text-align:center"><a class="btn" href="product_summary.jsp">添加<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" >?222.00</a></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<a  href="product_details.jsp"><img src="themes/images/products/10.jpg" alt=""/></a>
					<div class="caption">
					  <h5>毛绒玩具</h5>
					  <p> 
						物品描述
					  </p>
					  <h4 style="text-align:center"><a class="btn" href="product_summary.jsp">添加<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary">?222.00</a></h4>
					</div>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<a  href="product_details.jsp"><img src="themes/images/products/11.jpg" alt=""/></a>
					<div class="caption">
					  <h5>星空之爱</h5>
					  <p> 
						物品描述 
					  </p>
					 <h4 style="text-align:center"><a class="btn" href="product_summary.jsp">添加<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary">?222.00</a></h4>
					</div>
				  </div>
				</li>
			  </ul>	

		</div>
		</div>
	</div>
</div>
<!-- Footer ================================================================== -->
<div  id="footerSection">
	<div class="container">
		<div class="row">
			<div class="span3">
				<h5>个人账户</h5>
				<a href="Umessage.jsp">您的信息</a>
				<a href="login.jsp">购买记录</a> 
				
			 </div>
			<div class="span3">
				<h5>综合信息</h5>
                                <a href="contact.jsp">联系我们</a>	
				<a href="faq.jsp">常见问题</a>
			 </div>
			<div class="span3">
				<h5>商品信息</h5>
				<a href="index.jsp">最新上架</a> 
				<a href="index.jsp">畅销商品</a>  
				<a href="index.jsp">特价商品</a>  				
			 </div>
			<div id="socialMedia" class="span3 pull-right">
				<h5>合作方</h5>
				<a href="http://ai.taobao.com"><img width="60" height="60" src="themes/images/taobao.jpg" title="淘宝" alt="淘宝"/></a>
				<a href="https://www.jd.com/"><img width="60" height="60" src="themes/images/jingdong.png" title="京东" alt="京东"/></a>
				<a href="http://www.suning.com/"><img width="60" height="60" src="themes/images/suning.png" title="苏宁易购" alt="苏宁易购"/></a>
			 </div> 
		 </div>
		<p class="pull-right">&copy; 旧物新用</p>
	</div>
	</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="themes/js/jquery.js" type="text/javascript"></script>
	<script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="themes/js/google-code-prettify/prettify.js"></script>
	
	<script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>
	
	<!-- Themes switcher section ============================================================================================= -->
<div id="secectionBox">
<link rel="stylesheet" href="themes/switch/themeswitch.css" type="text/css" media="screen" />
<script src="themes/switch/theamswitcher.js" type="text/javascript" charset="utf-8"></script>
	<div id="themeContainer">
	<div id="hideme" class="themeTitle">样式选择</div>
	<div class="themeName">原始皮肤</div>
	<div class="images style">
	<a href="themes/css/#" name="bootshop"><img src="themes/switch/images/clr/bootshop.png" alt="bootstrap business templates" class="active"></a>
	<a href="themes/css/#" name="businessltd"><img src="themes/switch/images/clr/businessltd.png" alt="bootstrap business templates" class="active"></a>
	</div>
	<div class="themeName">背景样式 (11)</div>
	<div class="images style">
		<a href="themes/css/#" name="amelia" title="Amelia"><img src="themes/switch/images/clr/amelia.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="spruce" title="Spruce"><img src="themes/switch/images/clr/spruce.png" alt="bootstrap business templates" ></a>
		<a href="themes/css/#" name="superhero" title="Superhero"><img src="themes/switch/images/clr/superhero.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="cyborg"><img src="themes/switch/images/clr/cyborg.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="cerulean"><img src="themes/switch/images/clr/cerulean.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="journal"><img src="themes/switch/images/clr/journal.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="readable"><img src="themes/switch/images/clr/readable.png" alt="bootstrap business templates"></a>	
		<a href="themes/css/#" name="simplex"><img src="themes/switch/images/clr/simplex.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="slate"><img src="themes/switch/images/clr/slate.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="spacelab"><img src="themes/switch/images/clr/spacelab.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="united"><img src="themes/switch/images/clr/united.png" alt="bootstrap business templates"></a>
		<p style="margin:0;line-height:normal;margin-left:-10px;display:none;"><small>These are just examples and you can build your own color scheme in the backend.</small></p>
	</div>
	<div class="themeName">背景颜色（20）</div>
	<div class="images patterns">
		<a href="themes/css/#" name="pattern1"><img src="themes/switch/images/pattern/pattern1.png" alt="bootstrap business templates" class="active"></a>
		<a href="themes/css/#" name="pattern2"><img src="themes/switch/images/pattern/pattern2.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern3"><img src="themes/switch/images/pattern/pattern3.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern4"><img src="themes/switch/images/pattern/pattern4.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern5"><img src="themes/switch/images/pattern/pattern5.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern6"><img src="themes/switch/images/pattern/pattern6.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern7"><img src="themes/switch/images/pattern/pattern7.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern8"><img src="themes/switch/images/pattern/pattern8.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern9"><img src="themes/switch/images/pattern/pattern9.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern10"><img src="themes/switch/images/pattern/pattern10.png" alt="bootstrap business templates"></a>
		
		<a href="themes/css/#" name="pattern11"><img src="themes/switch/images/pattern/pattern11.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern12"><img src="themes/switch/images/pattern/pattern12.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern13"><img src="themes/switch/images/pattern/pattern13.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern14"><img src="themes/switch/images/pattern/pattern14.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern15"><img src="themes/switch/images/pattern/pattern15.png" alt="bootstrap business templates"></a>
		
		<a href="themes/css/#" name="pattern16"><img src="themes/switch/images/pattern/pattern16.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern17"><img src="themes/switch/images/pattern/pattern17.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern18"><img src="themes/switch/images/pattern/pattern18.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern19"><img src="themes/switch/images/pattern/pattern19.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern20"><img src="themes/switch/images/pattern/pattern20.png" alt="bootstrap business templates"></a>
		 
	</div>
	</div>
</div>
<span id="themesBtn"></span>
<!--漂浮框开始-->
<SCRIPT src="themes/js/fd.js"></SCRIPT>
	<div id="gg1" style="width:300px;height:206px;cursor:pointer;"onclick="showid('smallLay')";>
    <a href="#lightbox1" rel="lightbox1" class="lbOn">
    	<img src="themes/images/statement.png">
     </a>   
     <div id="kaig" style="width:300px;text-align:justify;" onclick="on_gb()">关闭</div>
    </div>
    <script type="text/javascript">
    
        var ad1=new AdMove("gg1");
        ad1.Run();
		function on_dianji(){
			window.location = "/news_article.php?ar_id=49";
			}
		function on_gb(){
			document.getElementById("gg1").style.display="none";
			}	
    //-->
    </script>
<!--漂浮框结束-->
</body>
</html>
