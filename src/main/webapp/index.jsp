<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
   
   <link rel="stylesheet" href="${pageContext.request.contextPath}/style/index.css">

</head>
<body>
    <%@ include file="views/common/header.jsp" %>
    
    <section class="main">
    	
        <div id="banner">
            <img src="${pageContext.request.contextPath}/img/banner.png" alt="배너" style="width: 1151px; object-fit: cover;">
        </div>
        

   
        <c:forEach var='p' items="${list }">
        <div class="contents">
            <div class="contents-preview">
                <div class="thumnail">
                    <img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                </div>
                <div class="thumnail-info">
                    <div class="name-heart">
                        <div class="name">
                            <p>${p.title }</p>
                        </div>
                        <div class="heart">
                            <img src="${pageContext.request.contextPath}/img/heart.png" alt="">
                            <p>2</p>
                        </div>
                    </div>
                    <div class="price-beforeDay">
                        <div class="price">
                            <p>${p.sellPrice }</p>
                        </div>
                        <div class="beforeDay">
                            <p>${p.enrollDate }</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		</c:forEach>
        <div>
            <div class="pagination">
                <a href="#">&laquo;</a>
                <a href="#">1</a>
                <a href="#" class="active">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">6</a>
                <a href="#">7</a>
                <a href="#">8</a>
                <a href="#">9</a>
                <a href="#">10</a>
                <a href="#">&raquo;</a>
              </div>
        </div>
    </section>
    
   	<script>
    $(document).ready(function(){
    	location.href="${pageContext.request.contextPath}/list.pr";
	})
	</script>
    
    <%@ include file="views/common/footer.jsp" %>
</body>
</html>