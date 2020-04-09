<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ page pageEncoding="utf-8" language="java" errorPage=""%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>旧物新用_上架物品</title>
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
	<div class="span6">欢迎光临！请您<strong> <a href="login.html">登录</a></strong></div>
	<div class="span6">
	<div class="pull-right">
		<!--a href="product_summary.html"><span class="">Fr</span></a>
		<a href="product_summary.html"><span class="">Es</span></a>
		<span class="btn btn-mini">En</span>
		<a href="product_summary.html"><span>&pound;</span></a>
		<span class="btn btn-mini">$155.00</span>
		<a href="product_summary.html"><span class="">$</span></a-->
		<a href="product_summary.html"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> 我的购物车 </span> </a> 
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
    <a class="brand" href="index.html"><img src="themes/images/logo1.png" alt="旧物新用"/></a>
		<form class="form-inline navbar-search" method="post" action="products.html" >
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
 <li class=""><a href="product_sell.html">我想卖</a></li>
	 <li class=""><a href="normal.html">出售记录</a></li>
	 <li class=""><a href="contact.html">淘宝记录</a></li>
          <li class=""><a href="contact.html">投诉建议</a></li>
	 <li class="">
	 <a href="#login" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">登录</span></a>
         <div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3>请登录</h3>
		  </div>
		  <div class="modal-body">
			<form class="form-horizontal loginFrm">
			  <div class="control-group">								
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                               
                                <input type="text" id="inputEmail" placeholder="用户名" name="Uname"><!--用户名文本框为Uname-->
                                <a href="#">&nbsp; &nbsp; 还没有账号，需要注册？</a>
                                
			  </div>
			  <div class="control-group">
                              	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                
				<input type="password" id="inputPassword" placeholder="密码" name="Pwd"><!--密码文本框为Pwd-->
                                <a href="#">&nbsp; &nbsp; 忘记密码?</a>
                          </div>
                               <!--div>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp;
                                <label class="checkbox">     
				<input type="checkbox"> 记住密码
				</label>
                              
			  </div-->
			</form>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			<button type="submit" class="btn btn-success">登录</button>
                         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			<button class="btn" data-dismiss="modal" aria-hidden="true">退出</button>
		  </div>
	</div>
	</li>
    </ul>
  </div>
</div>
</div>
</div>
<!-- Header End====================================================================== -->

<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
		<!--div class="well well-small"><a id="myCart" href="product_summary.html"><img src="themes/images/ico-cart.png" alt="cart">3 Items in your cart  <span class="badge badge-warning pull-right">$155.00</span></a></div-->
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
                     <li><a href="products.html">全部商品</a></li>
			<li class="subMenu open"><a> 电子产品</a>
				<ul>
				<li><a class="active" href="products.html"><i class="icon-chevron-right"></i>手机</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>电脑</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>数码相机</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>其他</a></li>
				</ul>
			</li>
			<li class="subMenu"><a> 衣物</a>
			<ul style="display:none">
				<li><a href="products.html"><i class="icon-chevron-right"></i>衣服</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>裤子</a></li>												
				<li><a href="products.html"><i class="icon-chevron-right"></i>鞋子</a></li>	
															
			</ul>
			</li>
			<li class="subMenu"><a>书籍</a>
				<ul style="display:none">
				<li><a href="products.html"><i class="icon-chevron-right"></i>小说</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>散文</a></li>												
				<li><a href="products.html"><i class="icon-chevron-right"></i>四六级书籍</a></li>	
				<li><a href="products.html"><i class="icon-chevron-right"></i>考研</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>雅思托福</a></li>												
				<li><a href="products.html"><i class="icon-chevron-right"></i>专业书籍</a></li>												
														
			</ul>
			</li>
			<li><a href="products.html">生活用品</a></li>
			
		</ul>
		<br/>
		  <div class="thumbnail">
                      <a href="products.html">
			<img src="themes/images/products/panasonic.jpg" alt="数码相机" /></a>
			<div class="caption">
			  <h5>数码相机</h5>
				<h4 style="text-align:center"><a class="btn" href="#">添加商品<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">¥222.00</a></h4>
			</div>
		  </div><br/>
			<div class="thumbnail">
                             <a href="products.html"> 
				<img src="themes/images/products/46.jpg" title="Bootshop New Kindel" alt="Bootshop Kindel"></a>
				<div class="caption">
				  <h5>四六级词汇精讲</h5>
				    <h4 style="text-align:center"><!--a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a--> <a class="btn" href="#">添加商品 <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">¥222.00</a></h4>
				</div>
			  </div><br/>
			
	</div>

<!-- Sidebar end=============================================== -->
	<div class="span9">
    <ul class="breadcrumb">
    <li><a href="index.html">旧物新用</a> <span class="divider">/</span></li>
    <li><a href="products.html">我想卖</a> </li>
  
    </ul>	
	<div class="row">	
          <div class="span9">
            <div id="myTabContent" class="tab-content">
              <div class="tab-pane fade active in" id="home">
			  <h4>商品详细信息</h4>
			  <s:form action="#" enctype="multipart/form-data" method="post">
					<s:textfield type="text" id="goodsName" label="商品名称"
						name="goods.goodsName" class="form-control" />
			        <s:select name="category" label="商品类型"
         				list="{'书籍','衣物','鞋子','裤子','运动相关','生活用品','数码产品','其他'}" />
					<s:select name="degreeOld" label="几成新"
							list="{10,9,8,7,6,5,4,3,2,1}" />
					<s:select name="onSellTime" label="上架几个月"
							list="{1,2,3}" />
					<s:textfield type="text" id="goodsName" label="售价（元）"
						name="goods.price" class="form-control" />
					<s:textarea type="text" id="description" label="详细描述"
						name="goods.description" class="form-control" />
					<s:token />
			  		<s:submit value="确认上架"/>
			  	
			   </s:form>
			  
			  <!--
                <table class="table table-bordered">
				<tbody>		
				<tr class="techSpecRow"><td style="text-align:center" class="techSpecTD1">商品名称：</td><td style="text-align:center" class="techSpecTD2">  <input type="text" id="inputEmail"  name="Pname"></td></tr>
                                <tr class="techSpecRow"><td style="text-align:center" class="techSpecTD1">商品类型：</td><td style="text-align:center" class="techSpecTD2">  
                                    <select class="span1" name="Producttype">			
                                        <option >手机 </option>
                                           <option >电脑 </option>
                                           <option >数码相机 </option>
                                           <option >衣物</option> 
                                           <option >书籍</option>
                                           <option >生活用品</option>
                                    </select>
                                    <input type="text" id="inputEmail"  name="Pname">
                                    </td></tr>
				<tr class="techSpecRow"><td style="text-align:center" class="techSpecTD1">颜色：</td><td style="text-align:center" class="techSpecTD2">  <input type="text" id="inputEmail"  name="Uname"></td></tr>
				<tr class="techSpecRow"><td style="text-align:center" class="techSpecTD1">尺寸：</td><td style="text-align:center"  class="techSpecTD2">   <input type="text" id="inputEmail"  name="Uname"></td></tr>
                                <tr class="techSpecRow"><td style="text-align:center" class="techSpecTD1">新旧程度：</td><td style="text-align:center" class="techSpecTD2">  <input type="text" id="inputEmail" name="Uname"></td></tr>
				<tr class="techSpecRow"><td style="text-align:center" class="techSpecTD1">生产日期：</td><td style="text-align:center" class="techSpecTD2">  <input type="text" id="inputEmail"  name="Uname"></td></tr>
				<tr class="techSpecRow"><td style="text-align:center" class="techSpecTD1">是否三包：</td><td style="text-align:center" class="techSpecTD2">  <input type="text" id="inputEmail"  name="Uname"></td></tr>
                                <tr class="techSpecRow"><td style="text-align:center" class="techSpecTD1">上架时间：</td><td style="text-align:center" class="techSpecTD2">  
                                    <select class="span1" name="month">				
					<option value="1">1&nbsp;&nbsp;</option>
					<option value="2">2&nbsp;&nbsp;</option>
					<option value="3">3&nbsp;&nbsp;</option>
					<option value="4">4&nbsp;&nbsp;</option>
					<option value="5">5&nbsp;&nbsp;</option>
					<option value="6">6&nbsp;&nbsp;</option>
					<option value="7">7&nbsp;&nbsp;</option>
                                        <option value="8">8&nbsp;&nbsp;</option>
                                        <option value="9">9&nbsp;&nbsp;</option>
                                        <option value="10">10&nbsp;&nbsp;</option>
                                        <option value="11">11&nbsp;&nbsp;</option>
                                        <option value="12">12&nbsp;&nbsp;</option>
			</select>
                                        &nbsp;&nbsp;<strong>月</strong>&nbsp;&nbsp;
			<select class="span1" name="days">				
					<option value="1">1&nbsp;&nbsp;</option>
					<option value="2">2&nbsp;&nbsp;</option>
					<option value="3">3&nbsp;&nbsp;</option>
					<option value="4">4&nbsp;&nbsp;</option>
					<option value="5">5&nbsp;&nbsp;</option>
					<option value="6">6&nbsp;&nbsp;</option>
					<option value="7">7&nbsp;&nbsp;</option>
                                        <option value="8">8&nbsp;&nbsp;</option>
                                        <option value="9">9&nbsp;&nbsp;</option>
                                        <option value="10">10&nbsp;&nbsp;</option>
                                        <option value="11">11&nbsp;&nbsp;</option>
                                        <option value="12">12&nbsp;&nbsp;</option>
                                        <option value="13">13&nbsp;&nbsp;</option>
					<option value="14">14&nbsp;&nbsp;</option>
					<option value="15">15&nbsp;&nbsp;</option>
					<option value="16">16&nbsp;&nbsp;</option>
					<option value="17">17&nbsp;&nbsp;</option>
					<option value="18">18&nbsp;&nbsp;</option>
					<option value="19">19&nbsp;&nbsp;</option>
                                        <option value="20">20&nbsp;&nbsp;</option>
                                        <option value="21">21&nbsp;&nbsp;</option>
                                        <option value="22">22&nbsp;&nbsp;</option>
                                        <option value="23">23&nbsp;&nbsp;</option>
                                        <option value="24">24&nbsp;&nbsp;</option>
                                        <option value="25">25&nbsp;&nbsp;</option>
					<option value="26">26&nbsp;&nbsp;</option>
					<option value="27">27&nbsp;&nbsp;</option>
                                        <option value="28">28&nbsp;&nbsp;</option>
                                        <option value="29">29&nbsp;&nbsp;</option>
                                        <option value="30">30&nbsp;&nbsp;</option>
                                        <option value="31">31&nbsp;&nbsp;</option>
			</select>
			         &nbsp;&nbsp;<strong>日</strong>
                                    </td></tr>
                                <tr class="techSpecRow"><td style="text-align:center" class="techSpecTD1">您的用户名：</td><td style="text-align:center" class="techSpecTD2">  <input type="text" id="inputEmail"  name="Uname"></td></tr>
                                <tr class="techSpecRow"><td style="text-align:center" class="techSpecTD1">您的住址：</td><td style="text-align:center" class="techSpecTD2">  <input type="text" id="inputEmail" name="Uname"></td></tr>
                                 <tr class="techSpecRow"><td style="text-align:center" class="techSpecTD1">您的联系方式：</td><td style="text-align:center" class="techSpecTD2">  <input type="text" id="inputEmail" name="Uname"></td></tr>
                                  <tr class="techSpecRow"><td style="text-align:center" class="techSpecTD1">您的详细描述：</td><td style="text-align:center" class="techSpecTD2">
                                       <div class="control-group">
                                             <textarea rows="3" placeholder="具体描述" id="textarea" class="input-xlarge"></textarea>
                                    </div> </td></tr>
                                    <tr class="techSpecRow"><td style="text-align:center" class="techSpecTD1">上传宝贝照片：</td><td style="text-align:center" class="techSpecTD2">  
                                         <input type="file" id="picPath" name="doc" onchange="PreviewImage('Preview',this,120,120);" />
                                         <div id="Preview" style="filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale);">
                                            </div>
                                        </td></tr>
                                    <tr>
                     <td colspan="6" style="text-align:center">
                                       <div class="control-group">
					<div class="controls">
					  <button type="submit" class="btn">确认上架</button>
					</div>
				  </div>
                     </td>
                </tr>
				</tbody>
				</table>
				-->
				
              </div>
		
		</div>
          </div>

	</div>
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
				<a href="Umessage.html">您的信息</a>
				<a href="login.html">购买记录</a> 
				
			 </div>
			<div class="span3">
				<h5>综合信息</h5>
                                <a href="contact.html">联系我们</a>	
				<a href="faq.html">常见问题</a>
			 </div>
			<div class="span3">
				<h5>商品信息</h5>
				<a href="index.html">最新上架</a> 
				<a href="index.html">畅销商品</a>  
				<a href="index.html">特价商品</a>  				
			 </div>
			<div id="socialMedia" class="span3 pull-right">
				<h5>合作方</h5>
				<a href="http://ai.taobao.com"><img width="60" height="60" src="themes/images/taobao.jpg" title="淘宝" alt="淘宝"/></a>
				<a href="https://www.jd.com/"><img width="60" height="60" src="themes/images/jingdong.png" title="京东" alt="京东"/></a>
				<a href="http://www.suning.com/"><img width="60" height="60" src="themes/images/suning.png" title="苏宁易购" alt="苏宁易购"/></a>
			 </div> 
		 </div>
		<p class="pull-right">&copy; 旧物新用</p>
	</div><!-- Container End -->
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
<!-- 上传照片的-->
 <script type="text/javascript" language="javascript">
        function checkPic() {
            var picPath = document.getElementById("picPath").value;
            var type = picPath.substring(picPath.lastIndexOf(".") + 1, picPath.length).toLowerCase();
            if (type !=="jpg" && type !== "bmp" && type !== "gif" && type !== "png") {
                alert("请上传正确的图片格式");
                return false;
            }
            return true;
        }
        //图片预览
        function PreviewImage(divImage, upload, width, height) {
            if (checkPic()) {
                try {
                    var imgPath;      //图片路径

                    var Browser_Agent = navigator.userAgent;
                    //判断浏览器的类型
                    if (Browser_Agent.indexOf("Firefox") !== -1) {
                        //火狐浏览器

//getAsDataURL在Firefox7.0 无法预览本地图片，这里需要修改
                        imgPath = upload.files[0].getAsDataURL();
                        document.getElementById(divImage).innerHTML = "<img id='imgPreview' src='" + imgPath + "' width='" + width + "' height='" + height + "'/>";
                    } else {
                        //IE浏览器 ie9 必须在兼容模式下才能显示预览图片
                        var Preview = document.getElementById(divImage);
                        Preview.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = upload.value;
                        Preview.style.width = width;
                        Preview.style.height = height;
                    }
                } catch (e) {
                    alert("请上传正确的图片格式");
                }
            }
        }
    </script>


</body>
</html>