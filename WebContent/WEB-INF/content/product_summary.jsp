<%@ page pageEncoding="GBK" language="java" import="java.sql.*" errorPage="" %>
<% String inputUname=(String)session.getAttribute("inputUname"); %>
?<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>��������_���ﳵ</title>
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
	 <% if(inputUname==null){ %>
	<div class="span6">��ӭ���٣�����<strong> <a href="login.jsp" name="loginname" >��¼</a></strong></div>
        <% }else { %>
        
        <div class="span6">��ӭ���٣�<strong> <a href="Umessage.jsp" name="loginname" ><%=inputUname%></a><a href="loginout.jsp">&nbsp;/&nbsp;�˳�</a></strong></div>       
        <% } %>       
	<div class="span6">
	<div class="pull-right">
		<!--a href="product_summary.html"><span class="">Fr</span></a>
		<a href="product_summary.html"><span class="">Es</span></a>
		<span class="btn btn-mini">En</span>
		<a href="product_summary.html"><span>&pound;</span></a>
		<span class="btn btn-mini">$155.00</span>
		<a href="product_summary.html"><span class="">$</span></a-->
		<a href="product_summary.jsp"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> �ҵĹ��ﳵ </span> </a> 
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
    <a class="brand" href="index.jsp"><img src="themes/images/logo1.png" alt="��������"/></a>
		<form class="form-inline navbar-search" method="post" action="products.jsp" >
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
	 <li class=""><a href="product_sell.jsp">������</a></li>
	 <li class=""><a href="normal.jsp">���ۼ�¼</a></li>
	 <li class=""><a href="contact.jsp">�Ա���¼</a></li>
          <li class=""><a href="contact.jsp">Ͷ�߽���</a></li>
           <% if(session.getAttribute("inputUname")==null) { %>
	 <li class="">   
	 <a href="#login" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">��¼</span></a>
         <div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
			<h3>���¼</h3>
		  </div>
		 <div class="modal-body">
			<form class="form-horizontal loginFrm" method="post" action="logincheck.jsp">
			  <div class="control-group">								
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                               
                                <input type="text" id="inputUname" placeholder="�û���" name="inputUname"><!--�û����ı���ΪUname-->
                                <a href="login.jsp">&nbsp; &nbsp; ��û���˺ţ���Ҫע�᣿</a>
                                
			  </div>
			  <div class="control-group">
                              	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                
				<input type="password" id="inputPwd" placeholder="����" name="inputPwd"><!--�����ı���ΪPwd-->
                                <a href="forgetpass.jsp">&nbsp; &nbsp; ��������?</a>
                          </div>
                            
			
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			<button type="submit" class="btn btn-success" >��¼</button>
                         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			<button class="btn" data-dismiss="modal" aria-hidden="true">�˳�</button>
                        </form>
		  </div>
	</div>
	</li>
        <% } else {%>
        <li class=""> 
        <a href="#login" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">�˳�</span></a>
        </li>
        <% }%>
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
                     <li><a href="products.jsp">ȫ����Ʒ</a></li>
			<li class="subMenu open"><a> ���Ӳ�Ʒ</a>
				<ul>
				<li><a class="active" href="products.jsp"><i class="icon-chevron-right"></i>�ֻ�</a></li>
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>����</a></li>
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>�������</a></li>
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>����</a></li>
				</ul>
			</li>
			<li class="subMenu"><a> ����</a>
			<ul style="display:none">
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>�·�</a></li>
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>����</a></li>												
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>Ь��</a></li>	
															
			</ul>
			</li>
			<li class="subMenu"><a>�鼮</a>
				<ul style="display:none">
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>С˵</a></li>
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>ɢ��</a></li>												
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>�������鼮</a></li>	
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>����</a></li>
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>��˼�и�</a></li>												
				<li><a href="products.jsp"><i class="icon-chevron-right"></i>רҵ�鼮</a></li>												
														
			</ul>
			</li>
			<li><a href="products.jsp">������Ʒ</a></li>
			
		</ul>
		<br/>
		  <div class="thumbnail">
                      <a href="products.jsp">
			<img src="themes/images/products/panasonic.jpg" alt="�������" /></a>
			<div class="caption">
			  <h5>�������</h5>
				<h4 style="text-align:center"><a class="btn" href="#">�����Ʒ<i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">?222.00</a></h4>
			</div>
		  </div><br/>
			<div class="thumbnail">
                             <a href="products.jsp"> 
				<img src="themes/images/products/46.jpg" title="Bootshop New Kindel" alt="Bootshop Kindel"></a>
				<div class="caption">
				  <h5>�������ʻ㾫��</h5>
				    <h4 style="text-align:center"><!--a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a--> <a class="btn" href="#">�����Ʒ <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">?222.00</a></h4>
				</div>
			  </div><br/>			
	</div>

<!-- Sidebar end=============================================== -->
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.jsp">��������</a> <span class="divider">/</span></li>
		<li class="active">���ﳵ</li>
    </ul>
	<h3> ���ﳵ[ <small>3 ����Ʒ</small>]<a href="products.jsp" class="btn btn-large pull-right"><i class="icon-arrow-left"></i> �������� </a></h3>	
	 <% if(session.getAttribute("inputUname")==null) { %>
        <hr class="soft"/>
         
        <div class="alert alert-block alert-error fade in">
		<button type="button" class="close" data-dismiss="alert">��</button>	
              
	<table class="table table-bordered">
		<tr><th> ���Ѿ�ע��</th></tr>
		 <tr> 
		 <td>
			<form class="form-horizontal">
				<div class="control-group">
				  <label class="control-label" for="inputUname">�û���</label>
				  <div class="controls">
					<input type="text" id="inputUname" placeholder="�û���">
				  </div>
				</div>
				<div class="control-group">
				  <label class="control-label" for="inputPwd">����</label>
				  <div class="controls">
					<input type="password" id="inputPwd" placeholder="����">
				  </div>
				</div>
				<div class="control-group">
				  <div class="controls">
					<button type="submit" class="btn">��¼</button> OR <a href="register.jsp" class="btn">����ע��</a>
				  </div>
				</div>
				<div class="control-group">
					<div class="controls">
					  <a href="forgetpass.jsp" style="text-decoration:underline">�������룿</a>
					</div>
				</div>
			</form>
		  </td>
		  </tr>
	</table>
                	
	 </div>	<% } %>			
	<table class="table table-bordered">
              <thead>
                <tr>
                  <th>��Ʒ����</th>
                  <th>��ϸ����</th>
                  <th>����</th>
		  <th>����</th>
                  <th>�ۿ�</th>
                  <th>�ܼ�/th>
                  <th>ȡ�����</th>
				</tr>
              </thead>
              <tbody>
                <tr>
                  <td> <img width="60" src="themes/images/products/9.jpg" alt=""/></td>
                  <td>��֮��<br/>�������</td>
				  <td>
					<div class="input-append"><input class="span1" style="max-width:34px" placeholder="1" id="appendedInputButtons" size="16" type="text"><button class="btn" type="button"><i class="icon-minus"></i></button><button class="btn" type="button"><i class="icon-plus"></i></button></div>
				  </td>
                  <td>?222.0</td>
                  <td>?222.0</td>                
                  <td>?222.0</td>
                  <td><button class="btn btn-danger" type="button"><i class="icon-remove icon-white"></i></button></td>
                </tr>
		   <tr>
                  <td> <img width="60" src="themes/images/products/10.jpg" alt=""/></td>
                   <td>ë�����<br/>�������</td>
				  <td>
					<div class="input-append"><input class="span1" style="max-width:34px" placeholder="1" id="appendedInputButtons" size="16" type="text"><button class="btn" type="button"><i class="icon-minus"></i></button><button class="btn" type="button"><i class="icon-plus"></i></button></div>
				  </td>
                  <td>?222.0</td>
                  <td>?222.0</td>                
                  <td>?222.0</td>
                  <td><button class="btn btn-danger" type="button"><i class="icon-remove icon-white"></i></button></td>
                </tr>	
                  <tr>
                  <td> <img width="60" src="themes/images/products/11.jpg" alt=""/></td>
                   <td>�ǿ�֮��<br/>�������</td>
				  <td>
					<div class="input-append"><input class="span1" style="max-width:34px" placeholder="1" id="appendedInputButtons" size="16" type="text"><button class="btn" type="button"><i class="icon-minus"></i></button><button class="btn" type="button"><i class="icon-plus"></i></button></div>
				  </td>
                  <td>?222.0</td>
                  <td>?222.0</td>                
                  <td>?222.0</td>
                  <td><button class="btn btn-danger" type="button"><i class="icon-remove icon-white"></i></button></td>
                </tr>
				
                <tr>
                  <td colspan="6" style="text-align:right">�ܼۣ�	</td>
                <td>?222.0</td>
                </tr>
		 <tr>
                  <td colspan="6" style="text-align:right">���ۿ�:	</td>
                  <td>?222.0</td>
                </tr>
                <tr>
                  <td colspan="6" style="text-align:right"><strong>��֧��</strong></td>
                  <td class="label label-important" style="display:block"> <strong> ?222</strong></td>
                </tr>
                 <tr>
                     <td colspan="6" style="text-align:center">
                  <div class="control-group">
					<div class="controls">
					  <button type="submit" class="btn">ȷ���µ�</button>
					</div>
				  </div>
                     </td>
                </tr>
				</tbody>
            </table>
		
	                        
	
	
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
				<a href="Umessage.jsp">������Ϣ</a>
				<a href="login.jsp">�����¼</a> 
				
			 </div>
			<div class="span3">
				<h5>�ۺ���Ϣ</h5>
                                <a href="contact.jsp">��ϵ����</a>	
				<a href="faq.jsp">��������</a>
			 </div>
			<div class="span3">
				<h5>��Ʒ��Ϣ</h5>
				<a href="index.jsp">�����ϼ�</a> 
				<a href="index.jsp">������Ʒ</a>  
				<a href="index.jsp">�ؼ���Ʒ</a>  				
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