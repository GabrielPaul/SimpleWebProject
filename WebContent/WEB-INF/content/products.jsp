?<!DOCTYPE html>
<%@ page pageEncoding="GBK" language="java" import="java.sql.*" errorPage="" %>
 <% String inputUname=(String)session.getAttribute("inputUname"); %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>��������</title>
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
    <!-- ���================================================== -->
<div id="header">
<div class="container">
<div id="welcomeLine" class="row">
	 <% if(inputUname.equals("")){ %>
	<div class="span6">��ӭ���٣�����<strong> <a href="login.jsp" name="loginname" >��¼</a></strong></div>
        <% }else { %>
        <div class="span6">��ӭ���٣�����<strong> <a href="Umessage.jsp" name="loginname" ><%=inputUname%>  </a></strong></div>
        <% } %>
	<div class="span6">
	<div class="pull-right">
		<!--a href="product_summary.html"><span class="">Fr</span></a>
		<a href="product_summary.html"><span class="">Es</span></a>
		<span class="btn btn-mini">En</span>
		<a href="product_summary.html"><span>&pound;</span></a>
		<span class="btn btn-mini">$155.00</span>
		<a href="product_summary.html"><span class="">$</span></a-->
		<a href="product_summary.html"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> �ҵĹ��ﳵ </span> </a> 
	</div>
	</div>
</div>
<!-- ������ ================================================== -->
<div id="logoArea" class="navbar">
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner">
    <a class="brand" href="index.html"><img src="themes/images/logo1.png" alt="��������"/></a>
		<form class="form-inline navbar-search" method="post" action="products.html" >
		<input id="srchFld" class="srchTxt" type="text" name="inputselect"/> <!-- �����ѯ�� -->
		  <select class="srchTxt" name="inputselect1"><!-- ��Ʒ����ѡ��� -->
			<option>ȫ��</option>
			<option>�鼮 </option>
			<option>�ֻ�</option>
			<option>���� </option>
			<option>����</option>
			<option>������Ʒ</option>
		</select> 
		  <button type="submit" id="submitButton" class="btn btn-primary">��ѯ</button>
    </form>
    <ul id="topMenu" class="nav pull-right">
 <li class=""><a href="product_sell.html">������</a></li>
	 <li class=""><a href="normal.html">���ۼ�¼</a></li>
	 <li class=""><a href="contact.html">�Ա���¼</a></li>
          <li class=""><a href="contact.html">Ͷ�߽���</a></li>
	 <li class="">
	 <a href="#login" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">��¼</span></a>
         <div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
			<h3>���¼</h3>
		  </div>
		  <div class="modal-body">
			<form class="form-horizontal loginFrm">
			  <div class="control-group">								
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                               
                                <input type="text" id="inputEmail" placeholder="�û���" name="Uname"><!--�û����ı���ΪUname-->
                                <a href="#">&nbsp; &nbsp; ��û���˺ţ���Ҫע�᣿</a>
                                
			  </div>
			  <div class="control-group">
                              	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                
				<input type="password" id="inputPassword" placeholder="����" name="Pwd"><!--�����ı���ΪPwd-->
                                <a href="#">&nbsp; &nbsp; ��������?</a>
                          </div>
                               <!--div>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp;
                                <label class="checkbox">     
				<input type="checkbox"> ��ס����
				</label>
                              
			  </div-->
			</form>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			<button type="submit" class="btn btn-success">��¼</button>
                         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			<button class="btn" data-dismiss="modal" aria-hidden="true">�˳�</button>
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
                     <li><a href="products.html">ȫ����Ʒ</a></li>
			<li class="subMenu open"><a> ���Ӳ�Ʒ</a>
				<ul>
				<li><a class="active" href="products.html"><i class="icon-chevron-right"></i>�ֻ�</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>����</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>�������</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>����</a></li>
				</ul>
			</li>
			<li class="subMenu"><a> ����</a>
			<ul style="display:none">
				<li><a href="products.html"><i class="icon-chevron-right"></i>�·�</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>����</a></li>												
				<li><a href="products.html"><i class="icon-chevron-right"></i>Ь��</a></li>	
															
			</ul>
			</li>
			<li class="subMenu"><a>�鼮</a>
				<ul style="display:none">
				<li><a href="products.html"><i class="icon-chevron-right"></i>С˵</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>ɢ��</a></li>												
				<li><a href="products.html"><i class="icon-chevron-right"></i>�������鼮</a></li>	
				<li><a href="products.html"><i class="icon-chevron-right"></i>����</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>��˼�и�</a></li>												
				<li><a href="products.html"><i class="icon-chevron-right"></i>רҵ�鼮</a></li>												
														
			</ul>
			</li>
			<li><a href="products.html">������Ʒ</a></li>
			
		</ul>
		<br/>
		  <div class="thumbnail">
                      <a href="products.html">
			<img src="themes/images/products/panasonic.jpg" alt="�������" /></a>
			<div class="caption">
			  <h5>�������</h5>
				<h4 style="text-align:center"><a class="btn" href="#">�����Ʒ<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">?222.00</a></h4>
			</div>
		  </div><br/>
			<div class="thumbnail">
                             <a href="products.html"> 
				<img src="themes/images/products/46.jpg" title="Bootshop New Kindel" alt="Bootshop Kindel"></a>
				<div class="caption">
				  <h5>�������ʻ㾫��</h5>
				    <h4 style="text-align:center"><!--a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a--> <a class="btn" href="#">�����Ʒ <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">?222.00</a></h4>
				</div>
			  </div><br/>
			<div class="thumbnail">
                             <a href="products.html"> 
				<img src="themes/images/products/13.jpg" title="Bootshop New Kindel" alt="Bootshop Kindel"></a>
				<div class="caption">
				  <h5>��Ʒ�ֱ�</h5>
				    <h4 style="text-align:center"><!--a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a--> <a class="btn" href="#">�����Ʒ <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">?222.00</a></h4>
				</div>
			  </div><br/>
	</div>
<!-- Sidebar end=============================================== -->
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">��������</a> <span class="divider">/</span></li>
		<li class="active">ȫ����Ʒ</li>
    </ul>
	<h3>ȫ����Ʒ <small class="pull-right"> ����100����Ʒ</small></h3>	
	
	<hr class="soft"/>
	<form class="form-horizontal span6">
		<div class="control-group">
		  <label class="control-label alignL">���з�ʽ </label>
			<select>
              <option>��������˳��</option>
              <option>�������ŵ���</option>
              <option>�ϼ�ʱ��</option>
              <option>�۸�Ӹߵ���</option>
               <option>�۸�ӵ͵���</option>
            </select>
		</div>
	  </form>
	  
<div id="myTab" class="pull-right">
 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
 <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
</div>
<br class="clr"/>
<div class="tab-content">
	<div class="tab-pane" id="listView">
		<div class="row">	  
			<div class="span2">
				<img src="themes/images/products/9.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>��Ʒ����</h3>				
				<hr class="soft"/>		
				<p>
				��Ʒ����
				</p>
				<a class="btn btn-small pull-right" href="product_details.html">��������</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> ?222</h3>
			<br/>
			
			  <a href="product_details.html" class="btn btn-large btn-primary"> ��� <i class=" icon-shopping-cart"></i></a>
			  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
			
				</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
				<img src="themes/images/products/10.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>��Ʒ����</h3>				
				<hr class="soft"/>		
				<p>
				��Ʒ����
				</p>
				<a class="btn btn-small pull-right" href="product_details.html">��������</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> ?222</h3>
			<br/>
			
			  <a href="product_details.html" class="btn btn-large btn-primary"> ��� <i class=" icon-shopping-cart"></i></a>
			  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
			</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
				<img src="themes/images/products/11.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>��Ʒ����</h3>				
				<hr class="soft"/>		
				<p>
				��Ʒ����
				</p>
				<a class="btn btn-small pull-right" href="product_details.html">��������</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> ?222</h3>
			<br/>
			
			  <a href="product_details.html" class="btn btn-large btn-primary"> ��� <i class=" icon-shopping-cart"></i></a>
			  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				
			</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
				<img src="themes/images/products/12.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>��Ʒ����</h3>				
				<hr class="soft"/>		
				<p>
				��Ʒ����
				</p>
				<a class="btn btn-small pull-right" href="product_details.html">��������</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> ?222</h3>
			<br/>
			
			  <a href="product_details.html" class="btn btn-large btn-primary"> ��� <i class=" icon-shopping-cart"></i></a>
			  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				</form>
			</div>
		</div>
	
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
				<img src="themes/images/products/13.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>��Ʒ����</h3>				
				<hr class="soft"/>		
				<p>
				��Ʒ����
				</p>
				<a class="btn btn-small pull-right" href="product_details.html">��������</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> ?222</h3>
			<br/>
			
			  <a href="product_details.html" class="btn btn-large btn-primary"> ��� <i class=" icon-shopping-cart"></i></a>
			  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div class="span2">
				<img src="themes/images/products/46.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>��Ʒ����</h3>				
				<hr class="soft"/>		
				<p>
				��Ʒ����
				</p>
				<a class="btn btn-small pull-right" href="product_details.html">��������</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> ?222</h3>
			<br/>
			
			  <a href="product_details.html" class="btn btn-large btn-primary"> ��� <i class=" icon-shopping-cart"></i></a>
			  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				</form>
			</div>
		</div>
		<hr class="soft"/>
	</div>

	<div class="tab-pane  active" id="blockView">
		<ul class="thumbnails">
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="themes/images/products/b1.jpg" alt=""/></a>
				<div class="caption">
				  <h5>��Ʒ����</h5>
				  <p> 
					���ҵ�ַ
				  </p>
				   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">���<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">?222</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="themes/images/products/b2.jpg" alt=""/></a>
				<div class="caption">
				   <h5>��Ʒ����</h5>
				  <p> 
					���ҵ�ַ
				  </p>
				   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">���<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">?222</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="themes/images/products/b3.jpg" alt=""/></a>
				<div class="caption">
				  <h5>��Ʒ����</h5>
				  <p> 
					���ҵ�ַ
				  </p>
				   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">���<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">?222</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
				<div class="caption">
				  <h5>��Ʒ����</h5>
				  <p> 
					���ҵ�ַ
				  </p>
				   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">���<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">?222</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="themes/images/products/1.jpg" alt=""/></a>
				<div class="caption">
				  <h5>��Ʒ����</h5>
				  <p> 
					���ҵ�ַ
				  </p>
				   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">���<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">?222</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="themes/images/products/2.jpg" alt=""/></a>
				<div class="caption">
				  <h5>��Ʒ����</h5>
				  <p> 
					���ҵ�ַ
				  </p>
				   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">���<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">?222</a></h4>
				</div>
			  </div>
			</li>
		  </ul>
	<hr class="soft"/>
	</div>
</div>

	
	<div class="pagination">
			<ul>
			<li><a href="#">&lsaquo;</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">...</a></li>
			<li><a href="#">&rsaquo;</a></li>
			</ul>
			</div>
			<br class="clr"/>
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
				<h5>�����˻�</h5>
				<a href="Umessage.html">������Ϣ</a>
				<a href="login.html">�����¼</a> 
				
			 </div>
			<div class="span3">
				<h5>�ۺ���Ϣ</h5>
                                <a href="contact.html">��ϵ����</a>	
				<a href="faq.html">��������</a>
			 </div>
			<div class="span3">
				<h5>��Ʒ��Ϣ</h5>
				<a href="index.html">�����ϼ�</a> 
				<a href="index.html">������Ʒ</a>  
				<a href="index.html">�ؼ���Ʒ</a>  				
			 </div>
			<div id="socialMedia" class="span3 pull-right">
				<h5>������</h5>
				<a href="http://ai.taobao.com"><img width="60" height="60" src="themes/images/taobao.jpg" title="�Ա�" alt="�Ա�"/></a>
				<a href="https://www.jd.com/"><img width="60" height="60" src="themes/images/jingdong.png" title="����" alt="����"/></a>
				<a href="http://www.suning.com/"><img width="60" height="60" src="themes/images/suning.png" title="�����׹�" alt="�����׹�"/></a>
			 </div> 
		 </div>
		<p class="pull-right">&copy; ��������</p>
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
	<div id="hideme" class="themeTitle">��ʽѡ��</div>
	<div class="themeName">ԭʼƤ��</div>
	<div class="images style">
	<a href="themes/css/#" name="bootshop"><img src="themes/switch/images/clr/bootshop.png" alt="bootstrap business templates" class="active"></a>
	<a href="themes/css/#" name="businessltd"><img src="themes/switch/images/clr/businessltd.png" alt="bootstrap business templates" class="active"></a>
	</div>
	<div class="themeName">������ʽ (11)</div>
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
	<div class="themeName">������ɫ��20��</div>
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

</body>
</html>