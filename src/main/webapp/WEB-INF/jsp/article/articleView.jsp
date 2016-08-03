<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title></title>
    
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS -->
    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/css/fms/style.css">
    <link rel="stylesheet" href="/css/fms/fms-customize.css">
<!--     <link rel="stylesheet" href="/css/article/view.css"> -->
	
	<!-- Sweet Alert 2 -->
	<link rel="stylesheet" href="/css/product/sweetalert2.min.css">
	
	<!-- Scripts -->
	<script src="/js/jquery.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	
</head>

<style>
		.bgcolor{
			background: -webkit-linear-gradient(#EBDBFF , #FFEFD5); /* For Safari 5.1 to 6.0 */
		 	background: -o-linear-gradient(#EBDBFF , #FFEFD5); /* For Opera 11.1 to 12.0 */
		  	background: -moz-linear-gradient(#EBDBFF , #FFEFD5); /* For Firefox 3.6 to 15 */
		  	background: linear-gradient(#EBDBFF , #FFEFD5); /* Standard syntax */
		}
		
		.breadcrumb-line{position:relative;margin:0 0 35px;border-radius:4px;background-color:#e1e5eb;}
		.breadcrumb{
		/*  	background:rgba(0,0,0,0); */
		/* 	border-radius:0; */
			height:40px;
			line-height:40px;
			margin:0;
			overflow:hidden;
			padding:0 20px 0 0;
			text-overflow:ellipsis;
			white-space:nowrap
		}
		.breadcrumb-buttons{background:#d7dee3;border-radius:0 4px 4px 0;display:inline-block;list-style:none;margin:0;padding-left:15px;position:absolute;right:0;top:0}
		.breadcrumb .icon,.breadcrumb-buttons .icon{font-size:18px;vertical-align:text-bottom}
		.breadcrumb-buttons li a{line-height:40px;position:relative;margin-right:14px;text-decoration:none}
		.breadcrumb li{display:inline}
		.breadcrumb li a{-webkit-transition:none 0s ease 0s;transition:none 0s ease 0s;text-align:center;text-decoration:none;}
		.breadcrumb li:first-child a{
		    background: #00d8b2;
		    background: #707478; 
		/* 	background:#c8d2d8; */
			padding: 11px 15px;
			display:inline-block;
			border-radius:4px 0 0 4px;
			color: #fff;
		/* 	color: #888; */
		}
		.breadcrumb .icon{font-size:18px}
		.breadcrumb>li+li:before{font-family:"FontAwesome";content:"\f054";vertical-align:middle;color: #ccc;}
		.breadcrumb li:last-child a{font-weight:700;color:#888}
		
		/* ==============
		   Author div
		================= */
		.authordiv {
			position: relative;
			width: 80px;
			height: 80px;
			overflow: hidden;
		}
		
		.msgAuthordiv {
			position: relative;
			width: 25px;
			height: 25px;
			overflow: hidden;
		}

		/*橫*/
		.authordiv img {
			position: absolute;
			left: 50%;
			top: 50%;
			height: 100%;
			width: auto;
			-webkit-transform: translate(-50%, -50%);
			-ms-transform: translate(-50%, -50%);
			transform: translate(-50%, -50%);
		}
		/*直*/
		.authordiv img.portrait {
			width: 100%;
			height: auto;
		}
				
		/* ==============
		   Post Area
		================= */
		.post{
		/* 	background-color:white; */
		 	border:#e8ecf3 solid 1px;
			border-top:#e8ecf3 solid 3px;
		  	background-color:#fff;
/* 		 	margin-bottom:10px; */
		 	border-radius:4px;
		 	transition: all 0.5s ease-in-out;
		}
		
		.post:hover{
		/* 	border:#ccd3ff solid 2px; */
			border-top:#727CB6 solid 3px;
		 	transition: all 0.3s ease-in-out;
		}
		.postprofile{
		/* 	border:#e8ecf3 solid 1px; */
			padding-top:20px;
		/* 	border-right:#e8ecf3 solid 1px; */
			
		}
		.postprofile h3{
			margin:5px 0 0;
		}
		
		.postbody{
			padding:0px 20px 0 30px;
			border-left:#e8ecf3 solid 1px;
		}
		.postbody ul {
			margin:10px;
		}
		.postbody  ul > li{
		 	font-size:20px;
			float: right;
		}
		
		.postbody  ul > li >a {
		    border-radius: 5px;
		    padding: 4px 7px;
		    margin-left:5px;
		}
		
		.pbhead{
			border-bottom: 4px solid #e5e5e5;
		}
		.pbhead:after{
		    bottom: 0;
		    display: block;
		    width: 80px;
		    height: 4px;
		    margin-bottom: -4px;
		    margin-top:15px;
		    content: "";
		    background-color: #ee836e;
		}
		
		.content ul > li{
			font-size:16px;
			margin-left:20px;
		}
		
 		.content ul > li:first-child{
 			cursor:pointer;  /* for comment+num*/
 		}
 				
 		/* ==============
		   Comment Area
		================= */
		.panel.panel-default{
			border-top: none;
			border-bottom: none;
		}
		
		.panel>.list-group:first-child .list-group-item:first-child, 
		.panel>.panel-collapse>.list-group:first-child .list-group-item:first-child{
			border-top: 1px solid #4cae4c;
		}
		
		.panel-group .panel-footer{
			border-bottom: 1px solid #ddd;		
		}
		
		.panel>.panel-collapse>.list-group .list-group-item:hover {
			background:#f5f5f5;
			border-width: 0px 0;
		}
		
		/* ==============
		   Reply Area
		================= */
		/*dividerHeading*/
		.dividerHeading,
		.widget_title
		{
		    text-align: center;
		    position: relative;
		    margin-bottom:25px;
		}
		.dividerHeading h4,
		.widget_title h4
		{
		    font-size:18px;
		    position:relative;
		    line-height:0;
		    border-bottom: 1px solid #727CB6;
		}
		.dividerHeading h4 span{
		    background:white;
		    position:relative;
		    line-height: 7px;
		    top: 4px;
		    display: inline-block;
		
		}
		.dividerHeading h4 span:before,
		.dividerHeading h4 span:after,
		.widget_title h4 span:after,
		.widget_title h4 span:before
		{
		    color:#E74C3C;
		    font-size:10px;
		    content: "\f10c";
		    font-family:fontawesome;
		    display: inline-block;
		
		}
		.dividerHeading h4 span:before,
		.widget_title h4 span:before
		{
		    margin-right:10px ;
		}
		.dividerHeading h4 span:after,
		.widget_title h4 span:after
		{
		    margin-left:10px ;
		}
		
		/* 修改樣式 */
		
		.dividerHeading h4 span:after, 
		.widget_title h4 span:after, 
		.widget_title h4 span:before {
		    color: #727CB6;
		}
		
		.dividerHeading h4 span:before, 
		.dividerHeading h4 span:after, 
		.widget_title h4 span:after, 
		.widget_title h4 span:before {
		    color: #727CB6;
		}
		
		.dividerHeading h4 span {
		    background: #faeadf; /*new post bgcolor*/
		}
				
		.dividerHeading h4,
		.widget_title h4{
		    font-size: 21px;
		    font-weight: normal;
		    margin-bottom: 0px;
		    padding: 0px;
		    position: relative;
		}
		
		.dividerHeading h4::before, .widget_title h4::before { 
			border: 0px;
		    content: none;
		}
		
		#replyForm button{
			margin:0 5px;
		}
		
		.hasbutton{
			text-align:center; 
			margin-top:20px;
			margin-bottom:20px;
		}
		
		.btn-like{
		/* 	background: #ff9b9b; */
			background: #ff2691;
		}
		
		.btn-like:hover{
		/* 	background: #ff7f7f; */
			background: #ff007f;
		}

		.swal {
		    border-radius: 20px !important;
		    width: 400px !important;
		    margin-left: -200px !important;
		}

</style>


<body>
<!--加入header&nav -->
<c:import url="/WEB-INF/jsp/fms_header_nav.jsp" />
			
			<!-- **每頁不同的內容從這裡開始** -->
				<div class="grey_bg row bgcolor">
				
<div class="row sub_content">
	<div class="col-lg-1 col-md-1 col-sm-1"></div>
	<div class="col-lg-10 col-md-10 col-sm-10 article">
	
		<div class="breadcrumb-line clearfix">
			<ul class="breadcrumb">
					   <li><a href="/articles/listfms" data-original-title="" title=""><span class="icon fa fa-home"></span></a></li>
			   		   <li><a href="/articles/listfms?articleType=${article.articleType}" data-navbar-reference="index" itemprop="url" data-original-title="" title=""><span itemprop="title">${article.articleType}</span></a></li>
			</ul>
		</div>
		
		<!-- start article -->
		<div class="col-lg-12 post" style="margin-bottom:0px; border-top:#727CB6 solid 3px;">
			<div class="postprofile col-lg-3">
				<dl>
					<dt>
						<div class="authordiv img-circle">
						<img  class="authorimg" src="/members/show?memberId=${article.memberId}">
						</div>
						<h3><a href="/members/overview/${article.memberId}">${article.nickname}</a></h3>
						
					</dt>
					<dd>Post:${article.articlesWorteByAuthorSize}</dd>
					<dd>Joined:${article.memberRegiDate}</dd>
				</dl>			
			</div>
			
			<div class="postbody col-lg-9">		
				<div class="pbhead">
					<h2>【${article.articleType}】${article.articleTitle}</h2>
					<ul>
						<li><a class="btn-danger" title="report" data-toggle="modal" data-target="#reportModal"><i class="fa fa-warning"></i></a></li>
						<li><a href="#collapseArticle" class="btn-success" title="comments" data-toggle="collapse" data-target="#collapseArticle"><i class="fa fa-comments-o"></i></a></li>
						<li><a href="#replyarea" class="btn-warning" title="reply"><i class="fa fa-reply"></i></a></li>
						<c:if test="${article.memberId==memberId}">
							<li><a href="/articles/edit/${article.articleId}" class="btn-info" title="edit"><i class="fa fa-pencil"></i></a></li>
						</c:if>
						<li><a class="btn-info btn-like" title="like" onclick="like_article(${article.articleId})"><i class="fa fa-heart"></i></a></li>
					</ul>
					<small style="clear:both;">&nbsp;&nbsp;<i class="fa fa-clock-o"></i>&nbsp;${fn:substring(article.articleTime,0,19)}</small>
				</div>
				<div class="content">
					${article.articleContent}
					<ul>
						<li style="color:#4cae4c;" data-toggle="collapse" data-target="#collapseArticle">
							<i class="fa fa-comments-o"></i><span id="acms_num">&nbsp;${article.acms.size()}</span>
						</li>
						<li style="color:#ff9600;"><i class="fa fa-reply"></i><span id="ar_num">&nbsp;${arSize}</span></li>
						<li style="color:#ff007f;"><i class="fa fa-heart"></i><span id="memberSave_num">&nbsp;${article.memberSave.size()}</span></li>
					</ul>
				</div>
			</div>			
		</div>
		
		<!-- start articleComment -->
		<div class="col-lg-12" style="padding:0px;">
			<div class="panel-group">
				<div class="panel panel-default">
			      	<div id="collapseArticle" class="panel-collapse collapse">
			        <ul class="list-group" id="articleCMsArea" >
			        	<c:forEach var="acm" items="${article.acms}">
				        	<li class="list-group-item">
					        	<div class="msgAuthordiv authordiv img-circle" style="float:left;">
									<img  class="authorimg" src="/members/show?memberId=${acm.memberId}">
								</div>
					        	<span style="margin-left:10px; color:#337ab7; font-weight:bold;">
					        		<a href="/members/overview/${acm.memberId}">${acm.nickname}：</a>
					        	</span>
					        	<span>${acm.acmMsg}</span>  
					        	<span style="float:right;">
					        		${fn:substring(acm.acmTime,0,19)}
					        		<a href="#" style="margin-left:10px; color:#fff; background:black; padding:0 5px;"><i class="fa fa-warning"></i>&nbsp;Report</a>
					        		<a href="#" style="margin-left:10px; color:#fff; background:black; padding:0 5px;"><i class="fa fa-close"></i>&nbsp;Delete</a>				        		
					        		</span>			        	
				        	</li>
						</c:forEach>
			        </ul>
			        <div class="panel-footer">
			        	<form id="leaveMsg">
							<input type="hidden" name="memberId" value="${memberId}"/>
							<input type="hidden" name="articleId" value="${article.articleId}"/>
							<input type="hidden" name="acmShow" value="true"/>
							<input type="hidden" name="acmReport" value="0"/>
							<textarea name="acmMsg" id="acmMsg" class="form-control" placeholder="Write a comment" rows="1" style="resize:none;"></textarea>
						</form>
			        </div>
			      </div>
			    </div>
			</div>
		</div>
		<!-- end of articleComment -->
		<!-- end of article -->
		
		
		<!-- start articleReply -->
		<div id="articleReply">
			<c:forEach var="areply" items="${areplies}">
			<div class="col-lg-12 post">
				<div class="postprofile col-lg-3">
					<dl>
						<dt>
							<div class="authordiv img-circle">
							<img  class="authorimg" src="/members/show?memberId=${areply.memberId}">
							</div>
							<h3><a href="/members/overview/${areply.memberId}">${areply.nickname}</a></h3>
							
						</dt>
						<dd>Post:</dd>
						<dd>Joined:${areply.memberRegiDate}</dd>
					</dl>
				
				</div>
				<div class="postbody col-lg-9">		
					<div class="pbhead">
					<h2>${areply.arTitle}</h2>
					<ul>
						<li><a href="#" class="btn-danger" title="report"><i class="fa fa-warning"></i></a></li>
						<li><a href="#collapse${areply.arId}" class="btn-success" title="comments" data-toggle="collapse" data-target="#collapse${areply.arId}"><i class="fa fa-comments-o"></i></a></li>
						<li><a href="#replyarea" class="btn-warning" title="reply"><i class="fa fa-reply"></i></a></li>
						<c:if test="${areply.memberId==memberId}">
							<li><a href="#" class="btn-info" title="edit"><i class="fa fa-pencil"></i></a></li>
						</c:if>
					</ul>
					<small style="clear:both;">&nbsp;&nbsp;<i class="fa fa-clock-o"></i>&nbsp;${fn:substring(areply.arTime,0,19)}</small>
					</div>
					<div class="content">
						${areply.arContent}
						<ul>
							<li style="color:#4cae4c;" data-toggle="collapse" data-target="#collapse${areply.arId}">
								<i class="fa fa-comments-o"></i><span id="arcms${areply.arId}_num">&nbsp;${areply.arcms.size()}</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
			
			<!-- start articleReply comment-->
			<div class="col-lg-12" style="padding:0px;">
				<div class="panel-group">
					<div class="panel panel-default">
				      	<div id="collapse${areply.arId}" class="panel-collapse collapse">
				        <ul class="list-group">
				        	<c:forEach var="arcm" items="${areply.arcms}">
					        	<li class="list-group-item">
						        	<div class="msgAuthordiv authordiv img-circle" style="float:left;">
										<img  class="authorimg" src="/members/show?memberId=${arcm.memberId}">
									</div>
						        	<span style="margin-left:10px; color:#337ab7; font-weight:bold;">${arcm.nickname}：</span>
						        	<span>${arcm.arcmMsg}</span>  
						        	<span style="float:right;">
						        		${fn:substring(arcm.arcmTime,0,19)}
						        		<a href="#" style="margin-left:10px; color:#fff; background:black; padding:0 5px;"><i class="fa fa-warning"></i>&nbsp;Report</a>
						        		<a href="#" style="margin-left:10px; color:#fff; background:black; padding:0 5px;"><i class="fa fa-close"></i>&nbsp;Delete</a>				        		
						        	</span>			        	
					        	</li>
							</c:forEach>
				        </ul>
				        <div class="panel-footer">
				        	<form name="leaveRCM">
								<input type="hidden" name="memberId" value="${memberId}"/>
								<input type="hidden" name="arId" value="${areply.arId}"/>
								<input type="hidden" name="arcmShow" value="true"/>
								<input type="hidden" name="arcmReport" value="0"/>
								<textarea name="arcmMsg" class="form-control" placeholder="Write a comment" rows="1" style="resize:none;" onkeydown="save_arcm(event,$(this))"></textarea>
							</form>
				        </div>
				      </div>
				    </div>
				</div>
			</div>		
			<!-- end of articleReply comment-->		
			
			</c:forEach>
		</div>
		<!-- end of articleReply -->

		<!-- Reply form-->
		<section class="team row sub_content">
					<div class="col-lg-12 col-md-12 col-sm-12" style="margin-top:30px;" id="replyarea">
			            <div class="dividerHeading">
			                <h4><span>Reply</span></h4>
			            </div>
			        </div>
		</section>
		<FORM id="replyForm">
		<div class="row">
			<div class="form-group">
				<div class="col-lg-12">
					<input type="hidden" name="memberId" value="${memberId}"/>
					<input type="hidden" name="articleId" value="${article.articleId}"/>
					<input type="hidden" name="arReport" value="0"/>
					<input type="hidden" name="arShow" value="true"/>
					<input type="text" name="arTitle" id="arTitle" class="form-control" value="RE:【${article.articleType}】${article.articleTitle}">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group">
				<div class="col-lg-12">
					<textarea class="ckeditor" id="arContent" name="arContent" cols="80" rows="12"></textarea>
				</div>
			</div>
		</div>	
		<div class="row">
			<div class="form-group">
				<div class="col-lg-12 hasbutton">
					<button class="btn btn-default btn-lg" id="btn_reply" type="button" data-toggle="modal" data-target="#myModal" onclick="toModal()"><i class="fa fa-reply fa-fw" aria-hidden="true"></i>&nbsp;Reply</button>
					<a href = "/login"><button class="btn btn-warning btn-lg" id="btn_login" type="button">&nbsp;Please Login</button></a>
				</div>
			</div>
		</div>		
		</FORM>
		<!-- end of Reply form -->
	
	</div>
	<div class="col-lg-1 col-md-1 col-sm-1"></div>	
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">    
<!--       Modal content -->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body">
        </div>
        <div class="modal-footer">
        	<button type="button" name="confirm" id="confirm" class="btn btn-default" data-dismiss="modal">Confirm</button>
        	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>      
    </div>
</div>
<!-- end of Modal -->
					
<!-- Report Modal -->
<div class="modal fade" id="reportModal" role="dialog">
    <div class="modal-dialog">    
<!--       Modal content -->
      <div class="modal-content">
	      <div class="modal-header">
	        	<button type="button" class="close" data-dismiss="modal">&times;</button>
	        	<h4 class="modal-title">Report this Article</h4>
	      </div>
	      <div class="modal-body">
	      	<input type="text" class="form-control" id="reportTitle" name="reportTitle" placeholder="Report Title">
	      	<textarea cols="50" rows="5" class="form-control" id="reportDetail" name="reportDetail" placeholder="Report Detail" style="resize:none"></textarea>
	      </div>
	      <div class="modal-footer">
	      	<button type="button" name="sendReport" id="sendReport" class="btn btn-default" data-dismiss="modal">Confirm</button>
	      	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
      </div>
      
    </div>
</div>
<!-- end of Report Modal -->

				</div>        
            <!-- **每頁不同的內容結束** -->

<!--加入footer -->
<c:import url="/WEB-INF/jsp/fms_footer.jsp" />

	<!-- Scripts -->
	<script src="/js/jquery.validate.min.js"></script>

	<script type="text/javascript" src="/js/fms/swipe.js"></script>
	<script type="text/javascript" src="/js/fms/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="/js/fms/jquery-scrolltofixed-min.js"></script>
	<script type="text/javascript" src="/js/fms/jquery.smartmenus.min.js"></script>
	<script type="text/javascript" src="/js/fms/jquery.smartmenus.bootstrap.min.js"></script>
	<script type="text/javascript" src="/js/fms/fms-main.js"></script>
	
	<!-- Sweet Alert 2 -->
	<script type="text/javascript" src="/js/product/sweetalert2.min.js"></script>
	
	<script src="/ckeditor/ckeditor.js"></script>
	
	<!-- template -->
	<script id="article_reply" type="text/template">
	<div class="col-lg-12 post">
		<div class="postprofile col-lg-3">
			<dl>
				<dt>
					<div class="authordiv img-circle">
					<img  class="authorimg" src="/members/show?memberId=_memberId">
					</div>
					<h3><a href="/members/overview/_memberId">_nickname</a></h3>					
				</dt>
				<dd>Post:</dd>
				<dd>Joined:_memberRegiDate</dd>
			</dl>
		</div>
		<div class="postbody col-lg-9">		
			<div class="pbhead">
			<h2>_arTitle</h2>
			<ul>
				<li><a href="#" class="btn-danger" title="report"><i class="fa fa-warning"></i></a></li>
				<li><a href="#collapse_arId" class="btn-success" title="comments" data-toggle="collapse" data-target="#collapse_arId"><i class="fa fa-comments-o"></i></a></li>
				<li><a href="#replyarea" class="btn-warning" title="reply"><i class="fa fa-reply"></i></a></li>
				<li><a href="#" class="btn-info" title="edit"><i class="fa fa-pencil"></i></a></li>
			</ul>
			<small style="clear:both;">&nbsp;&nbsp;<i class="fa fa-clock-o"></i>&nbsp;_arTime</small>
			</div>
			<div class="content">
				_arContent
				<ul>
					<li style="color:#4cae4c;" data-toggle="collapse" data-target="#collapse_arId">
						<i class="fa fa-comments-o"></i><span id="arcms_arId_num">&nbsp;_arcmsSize</span>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="col-lg-12" style="padding:0px;">
		<div class="panel-group">
			<div class="panel panel-default">
		      	<div id="collapse_arId" class="panel-collapse collapse">
		        <ul class="list-group">
		        </ul>
		        <div class="panel-footer">
		        	<form name="leaveRCM">
						<input type="hidden" name="memberId" value="_memberId"/>
						<input type="hidden" name="arId" value="_arId"/>
						<input type="hidden" name="arcmShow" value="true"/>
						<input type="hidden" name="arcmReport" value="0"/>
						<textarea name="arcmMsg" class="form-control" placeholder="Write a comment" rows="1" style="resize:none;" onkeydown="save_arcm(event,$(this))"></textarea>
					</form>
		        </div>
		      </div>
		    </div>
		</div>
	</div>			
	</script>
	
	<script id="article_cm" type="text/template">
	<li class="list-group-item">
       	<div class="msgAuthordiv authordiv img-circle" style="float:left;">
			<img  class="authorimg" src="/members/show?memberId=_memberId">
		</div>
       	<span style="margin-left:10px; color:#337ab7; font-weight:bold;">
			<a href="/members/overview/_memberId">_nickname：</a>
		</span>
       	<span>_acmMsg</span>  
       	<span style="float:right;">_acmTime
			<a href="#" style="margin-left:10px; color:#fff; background:black; padding:0 5px;"><i class="fa fa-warning"></i>&nbsp;Report</a>
			<a href="#" style="margin-left:10px; color:#fff; background:black; padding:0 5px;"><i class="fa fa-close"></i>&nbsp;Delete</a>				        		
		</span>	
    </li>
	</script>
	
	<script>
	$(function(){
		
		$('title').text("【${article.articleType}】${article.articleTitle}");
		
		/* ============ USER IMG =========== */
		var list = $('.authorimg');
		for(var i = 0; i < list.length; i++) {
			var temp = $(list[i]);
			if (temp.height() > temp.width()) {
				temp.addClass('portrait');
			} else {
				temp.removeClass('portrait');
			}
		}
// 		console.log(list);

		//未登入不可reply
		if('${memberId}' == ''){
			$('#btn_login').show();
// 			$('#btn_reply').hide();
			$('#btn_reply').attr('disabled',true);
		} else { 
 			$('#btn_login').hide();
// 			$('#btn_reply').show();
			$('#btn_reply').attr('disabled',false);
		}
		
		//replyform驗證
		$('#replyForm').validate({
			onfocusout: function (element) {
		        $(element).valid();
		    },
			rules:{
				arTitle:{required:true},
			},//end of rules
			messages:{
// 				arTitle:'必填'
			},//end of messages			
		});
		
		
		// 文章回覆
		$('#confirm').on('click',function(){
			$('#arContent').val(CKEDITOR.instances['arContent'].getData());
			$.ajax({
					url:'/articlereplies/insert',
					type:'post',
					contentType:'application/json;charset=UTF-8',
					data:JSON.stringify($('#replyForm').serializeObject()),
					dataType:'json',
					success:function(data){
// 						console.log(data);
						$('#arTitle').val('RE:【${article.articleType}】${article.articleTitle}');
						CKEDITOR.instances['arContent'].setData('');
						$($('#article_reply').html()
										.replace(/_memberId/g,data.memberId)
										.replace('_nickname',data.nickname)
										.replace('_memberRegiDate',data.memberRegiDate)
										.replace('_arTitle',data.arTitle)
										.replace(/_arId/g,data.arId)
// 										.replace('_arId',data.arId)
										.replace('_arTime',data.arTime)
										.replace('_arContent',data.arContent)
// 										.replace('_arId',data.arId)
// 										.replace('_arId',data.arId)
										.replace('_arcmsSize',data.arcmsSize)
// 										.replace('_arId',data.arId)
										.replace('_memberId',data.memberId)
// 										.replace('_arId',data.arId)
										
						).appendTo($('#articleReply'));
						$('#ar_num').text(" " + (parseInt($('#ar_num').text()) + 1));
	 				},
	 				error:function(x,y,z){
	 					console.log('x-->'+x);
	 					console.log('y-->'+y);
	 					console.log('z-->'+z);
	 				}
				});		
			
		}); //end of 文章回覆
		
		// 文章留言 (keydown觸發事件 → 驗證  → 呼叫 save_msg())	
		$('textarea[name="acmMsg"]').keydown(function(event){ 
		    var keyCode = (event.keyCode ? event.keyCode : event.which);  
		    if($('textarea[name="acmMsg"]').val().trim()!=""  && keyCode == 13){
			    save_msg($(this));
		    }
		});
		
		// 檢舉文章
		$("#sendReport").click(function(){
			var reportTitle=$("#reportTitle").val();
			var reportDetail=$("#reportDetail").val();
			var memberId='${memberId}';
			var articleId='${article.articleId}';
			var reviewId=0;  //不用參數要設0
			var acmId=0;
			var rcmId=0;
			var reportData = {"memberId":memberId,
							"articleId":articleId,
							"reviewId":reviewId,
							"acmId":acmId,
							"rcmId":rcmId,
							"reportTitle":reportTitle,
							"reportDetail":reportDetail};
			$.ajax({
				url:"/webmail/sendmail",
				type:"POST",
				data:reportData,
				success:function(result){
					$('#reportTitle').val("");
					$('#reportDetail').val("");
					console.log(result);		
				}
			});
		});
		
		$.fn.serializeObject = function()
		{
		    var o = {};
		    var a = this.serializeArray();
		    $.each(a, function() {
		        if (o[this.name] !== undefined) {
		            if (!o[this.name].push) {
		                o[this.name] = [o[this.name]];
		            }
		            o[this.name].push(this.value || '');
		        } else {
		            o[this.name] = this.value || '';
		        }
		    });
		    return o;
		};
		
	});
	
	//文章收藏
	function like_article(aId){
// 		console.log(aId);
		$.ajax({
			url:'/members/like/article/'+ aId,
			type:'POST',
			dataType:'json',
			success:function(result){
				if(result){  //true-->收藏成功
					swal({
						type: 'success',
						text: '<h1 style="line-height:0px;">收藏成功!</h1>',
						showConfirmButton: false,
						customClass: 'swal',
						timer: 1500,
					});
					$('#memberSave_num').text(" " + (parseInt($('#memberSave_num').text()) + 1));
				} else {  //false-->收藏失敗
					swal({
						type: 'info',
						text: '<h1 style="line-height:0px;">已經收藏過囉!</h1>',
						showConfirmButton: false,
						customClass: 'swal',
						timer: 1500,
					});
				}			
			}			
		});
	}// end of 文章收藏
	
	// 文章留言
	function save_msg(a){
// 		console.log(a);
// 		console.log(JSON.stringify($('#leaveMsg').serializeObject()));
		$.ajax({
			url:'/articleCMs/insert',
			type:'post',
			contentType:'application/json;charset=UTF-8',
			data:JSON.stringify($('#leaveMsg').serializeObject()),
			dataType:'json',
			success:function(result){
// 				console.log(result);
				$($('#article_cm').html()
								.replace(/_memberId/g,result.memberId)
								.replace('_nickname',result.nickname)
								.replace('_acmMsg',result.acmMsg)
								.replace('_acmTime',result.acmTime)
								).appendTo($('#articleCMsArea'));
				$('#acms_num').text(" "+(parseInt($('#acms_num').text())+1));
				$('textarea[name="acmMsg"]').val("");
			}
		});
	}// end of 文章留言
	
	// 回覆留言
	function save_arcm(event,a){
	    var keyCode = (event.keyCode ? event.keyCode : event.which);  
	    if(a.val().trim()!=""  && keyCode == 13){
// 			console.log(JSON.stringify(a.parent().serializeObject()));
// 			console.log(a.parent().parent().prev());
			$.ajax({
	 			url:'/articleRCMs/insert',
	 			type:'post',
	 			contentType:'application/json;charset=UTF-8',
	 			data:JSON.stringify(a.parent().serializeObject()),
	 			dataType:'json',
	 			success:function(result){
// 					console.log(result);
					var arId = result.arId;
	 				$($('#article_cm').html()
	 								.replace(/_memberId/g,result.memberId)
	 								.replace('_nickname',result.nickname)
	 								.replace('_acmMsg',result.arcmMsg)
	 								.replace('_acmTime',result.arcmTime)
	 								).appendTo(a.parent().parent().prev());
	 				$('#arcms'+arId+'_num').text(" "+(parseInt($('#arcms'+arId+'_num').text())+1));
	 				a.val("");
	 			}
	 		});
	    }
	}// end of 回覆留言
	
	function toModal(){
		if($('#replyForm').validate().form() && CKEDITOR.instances['arContent'].getData().replace(/&nbsp;/g,'').replace(/<p>/g, "").replace(/<\/p>/g,"").trim().length != 0){
			$("#myModal .modal-title").text('Please Check Your Post');
			$("#myModal .modal-body").empty()
							.append('<p>Title：'+ $(':text[name=arTitle]').val() +'</p>')		
							.append('<p>Content：'+ CKEDITOR.instances['arContent'].getData() +'</p>');
			$('#confirm').show();
		}else{
			$("#myModal .modal-title").text('Please Modify Your Post');
			$("#myModal .modal-body").empty()
							.append('<p>Please Enter the Required Fields</p>');
			$('#confirm').hide();
			
		}
	}
	
	
	</script>
<!-- https://themeforest.net/item/flatboots-phpbb-31-and-30-/8536771 -->
<!-- http://preview.themeforest.net/item/flatboots-phpbb-31-and-30-/full_screen_preview/8536771 -->
<!-- http://preview.themeforest.net/item/eles-responsive-phpbb-31-theme/full_screen_preview/13769708 -->
<!-- http://www.rockettheme.com/phpbb/styles -->
<%-- ${article.member.articlesWorteByAuthor.size()} --%>
</body>
</html>