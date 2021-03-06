<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Date Query</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1" />	
	<!-- CSS --
	<!-- Scripts -->
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="/css/fms/style.css">
  <link rel="stylesheet" href="/css/fms/fms-customize.css">
<script type="text/javascript" src="/js/fms/swipe.js"></script>
<script type="text/javascript" src="/js/fms/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="/js/fms/jquery-scrolltofixed-min.js"></script>
<script type="text/javascript" src="/js/fms/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="/js/fms/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="/js/fms/jflickrfeed.js"></script>
<script type="text/javascript" src="/js/fms/fms-main.js"></script>

<script type="text/javascript" src="/js/expDate/expDateSearch.js"></script>
<style>
#mainSpace{
 width: 450px;
 margin-top:50px;
  margin-left: auto;
  margin-right: auto;
}

#proList{
 margin-top: 25px;
 font-size: 24px;
}

#dateResult{
width:300px;
margin: auto auto;
}
.dividerHeading h3{
margin-left:180px; }
.portfolio-content {
	border: 1px solid #E7E6E6;
	padding: 5px 10px 30px 10px;
	text-align: center;
}
.portfolio-content h3 {
	font-size: 15px;
 	line-height: 15px; 
}
.portfolio-img {
	margin: 0 auto;
	height: 130px;
	width: 130px;
	overflow:hidden;
}
.portfolio-content img{
	height: 130px;
	width: 130px;
}
.portfolio-content p {
	line-height: 1.1;
	margin: 5px;
	font-size: 15px;
}
.portfolio-btn {
	margin-top: 20px;
}
body {
	font-family: Microsoft JhengHei, "Open Sans",Helvetica,Arial,sans-serif;	
}
.portfolio-item {
 	padding: 15px; 
}
.portfolio-item:hover .portfolio-content{
	border-bottom-color:#727CB6; 
}

.portfolio-all {
	background-color: #ffffff;
	margin-bottom: 10px;
}

.portfolio-title{
	height: 60px;
	background-color: #98DaD6;  /*blue */
	border-bottom: 1px solid #4FBAAA;
	color: #ffffff;
	text-align: center;
	padding: 10px;
}
#proList div:nth-child(3n+2) .portfolio-title{
	background-color: #DDD5C9;	/*beige*/
	border-bottom: 1px solid #C6BFB4;
} 
#proList div:nth-child(3n+3) .portfolio-title{
	background-color: #FF9985;	/*pink*/
	border-bottom: 1px solid #D97F88;
}
.portfolio-title h3 {
	font-size: 15px;
 	line-height: 15px; 
	color: #ffffff;
	margin: 5px;
}
#information p{
font-size: 20px;
line-height: 55px;
}
.grey_bg{
background-image: url("/images/expdateSearchBackground.jpg");
-moz-background-size:cover;
-webkit-background-size:cover;
-o-background-size:cover;
background-size:cover;
min-height: 610px;}
.div-inline{ display:inline} 
#information div{
width: 380px;
margin: auto auto;}
.icon1 {
	 color:white;
	 opacity: 1;
	 font-size: 5em;
	 text-align:center;
	 margin-top: 300px;
}
</style>
</head>

<body>
<!--加入header&nav -->
<c:import url="/WEB-INF/jsp/fms_header_nav.jsp" />
			
<!-- ////////////////////////////////////////////////////////////////////-->
<%@page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%-- <sec:authorize access="hasRole('ROLE_USER')">  --%>
         <c:set var="nickname" scope="session" value='<%=request.getSession().getAttribute("MemberNickname")%>'/>
         <c:if test="${not empty nickname}"> 
<div style="display:none" id="loginTokenName" ><%=SecurityContextHolder.getContext().getAuthentication().getName() %></div>
<div style="display:none" id="loginTokenId" value="<%=request.getSession().getAttribute("memberId")%>"></div>
		</c:if>
<!-- 檢查會員登入與否用的token -->
<div class="grey_bg row">
	<div class="col-md-6" id="information">
	<div><h1>歡迎來到 Qutie 2016!</h1></div>
	<br>
	<div><p>
只要在右邊輸入包裝盒上的'生產批號'，Qutie就可以幫助你找到化妝品的到期日	 
<!-- 	 helps you calculate your cosmetics' production date or expiration date from the batch code found on the product package.-->
</p></div>
	<div><p>
	甚麼是'生產批號'，生產批號是各廠牌用很簡短的代碼，印在化妝保養品上的代碼
	<!-- What is batch code?  -  Batch codes are mostly short codes printed or stamped on the package with different font from the product specification, e.g. XLO25LA -->
	</p></div>
	<div><p>
	Qutie能為您計算這些品牌的到期日 Anna Sui, Aveda, Biotherm, BODY SHOP, Burt's bees, Chanel, Christian Dior, Clarins, Clinique, Decleor, Elizabeth Arden, Estee lauder, Givenchy, Guerlain, H2O+, Helena Rubinstein, Kiehl's , Lancome, L'occitane, L'Oreal, MAC, Neutrogena , Origins, Sisley, Sofina, Vichy, and YSL.
	<!-- The brands that can be calculated are Anna Sui, Aveda, Biotherm, BODY SHOP, Burt's bees, Chanel, Christian Dior, Clarins, Clinique, Decleor, Elizabeth Arden, Estee lauder, Givenchy, Guerlain, H2O+, Helena Rubinstein, Kiehl's , Lancome, L'occitane, L'Oreal, MAC, Neutrogena , Origins, Sisley, Sofina, Vichy, and YSL.-->
	</p></div>
	<div><p>
	如果您覺得您的化妝品可能過期了，請檢查您的化妝品顏色和味道，如有怪味或退色，請立即禁用 
	<!-- Check the color and smell if you think that your product has expired. Strange smell, separation of oil, change of color are signs of expiration.-->
	</p></div>
	</div>
	<div id="mainSpace" class="col-md-6">	
		<h1>保養品日期檢查</h1><br>
		<h4>生產日期 | 保存期限</h4><br>
					<div >
					<label for="selectBar">選擇品牌</label>	
					<select id="brandId" class="form-control" name="selectBar" style="border-radius:20px;">
							<c:set var="reloadBrandId" scope="session" value="${reloadBrandId}"/>
							<c:forEach items='${Brands}' var="items">
							<c:if test="${reloadBrandId!=items.brandId}">
							<option value='${items.brandId}'>${items.brandName}</option>
							</c:if>
							<c:if test="${reloadBrandId==items.brandId}">
							<option value='${items.brandId}' selected="selected">${items.brandName}</option>
							</c:if>
							</c:forEach>
					</select>
					</div>
					<div >
					<label for="batchCode">產品批號</label>	
					<input type="text" class="form-control" name="batchCode" id="batchCode"   value="${reloadBatchCode}" style="border-radius:20px;"/></div>
					<div style="display: inline-block;float:right;">
					<br>
					<button id="searchDate" class="btn btn-default btn-lg btn-block" >計算日期</button></div>
					
			
		
			<table id="dateResult"  >
				<tr>
					<td colspan="2" class="dateArea"><h5>製造日</h5></td>
					<td colspan="2" class="dateResult"><h2 id="mfd"></h2></td>
				</tr><tr>
					<td colspan="2" class="dateArea"><h5>到期日</h5></td>
					<td colspan="2" class="dateResult"><h2 id="exp"></h2></td>
				</tr>
			</table>
			<!-- 分隔線用 -->
			<br>
			<br>
			<div class="dividerHeading">
			
			</div>
			<!-- 分隔線用 -->
			<div id="checkBox">
			
			<c:forEach items='${categorys}' var="items">
			<div class="col-md-3"><input type="checkbox" class="checkbox div-inline" value="${items.categoryId}" checked>&nbsp;${items.categoryName}&nbsp;</div>
			</c:forEach>
			</div>

	</div>
	
	
	</div>
 			<div class="row"> 
			<div  class="col-md-1">
			</div>
			<div id="proList" class="col-md-10 col-sm-7">
			</div>
 			</div> 
	<!-- ////////////////////////////////////////////////////////////////////-->

<!--加入footer -->
<c:import url="/WEB-INF/jsp/fms_footer.jsp" />
			
</body>
</html>
