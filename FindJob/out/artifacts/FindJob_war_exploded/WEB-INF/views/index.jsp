<%--
  Created by IntelliJ IDEA.
  User: jangsohyeon
  Date: 2020/01/05
  Time: 10:33 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="true"%>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>파인드잡 </title>

  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/resources/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="${pageContext.request.contextPath}/resources/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/resources/bootstrap/css/agency.min.css" rel="stylesheet">

</head>

<body id="page-top">
<header>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
      <c:url value="/" var="url"/><a class="navbar-brand js-scroll-trigger" href="${url}">FindJob</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <c:if test="${empty loginDTO}">
              <c:url value="/login" var="url"/><a class="nav-link js-scroll-trigger" href="${url}">Login</a>
            </c:if>
            <c:if test="${!empty loginDTO}">
              <c:url value="/logout" var="url"/><a class="nav-link js-scroll-trigger" href="${url}">Logout</a>
            </c:if>
          </li>
          <li class="nav-item">
            <c:url value="/register" var="url"/><a class="nav-link js-scroll-trigger" href="${url}">회원가입 </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>

<!--  Menu -->
<section class="page-section-top" id="services">
  <hr>
  <div class="container">
    <div class="row text-center">
      <div class="margin">
        <p class="margin"><c:url value="/" var="url"/><a class="menu" href="${url}">HOME</a></p>
      </div>
      <div class="margin">
        <p class="margin"><c:url value="/recruitment" var="url"></c:url><a class="menu" href="${url}">채용 </a></p>
      </div>
      <div class="margin">
        <p class="margin"><c:url value="/searchRecruitment" var="url"/><a class="menu" href="${url}">상세 검색 </a></p>
      </div>
      <div class="margin">
        <p class="margin"><a class="menu" href="#">뉴스 </a></p>
      </div>
    </div>
  </div>
  <hr>
</section>

<section class="page-section" id="portfolio">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-heading text-uppercase">최신 공고 </h2>
      </div>
    </div>
    <div class="row">
      <c:forEach var="recruitment" items="${recruitmentMainList}" varStatus="status">
        <div class="col-md-4 col-sm-6 portfolio-item">
          <div class="card portfolio-caption">
            <h4>${companyMainList[status.index].company_name }</h4>
            <p>${recruitment.recruit_name }</p>
            <p></p>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</section>

<!-- Footer -->
<footer class="footer">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-md-4">
        <span class="copyright">Copyright &copy; FindJob Website 2020</span>
      </div>
      <div class="col-md-4">
        <ul class="list-inline social-buttons">
          <li class="list-inline-item">
            <a href="https://twitter.com/">
              <i class="fab fa-twitter"></i>
            </a>
          </li>
          <li class="list-inline-item">
            <a href="https://www.facebook.com/">
              <i class="fab fa-facebook-f"></i>
            </a>
          </li>
          <li class="list-inline-item">
            <a href="https://www.linkedin.com/feed/">
              <i class="fab fa-linkedin-in"></i>
            </a>
          </li>
        </ul>
      </div>
      <div class="col-md-4">
        <ul class="list-inline quicklinks">
          <li class="list-inline-item">
            <a href="#">Privacy Policy</a>
          </li>
          <li class="list-inline-item">
            <a href="#">Terms of Use</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/resources/bootstrap/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/resources/bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Contact form JavaScript -->
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/jqBootstrapValidation.js"></script>
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/contact_me.js"></script>

<!-- Custom scripts for this template -->
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/agency.min.js"></script>

</body>
</html>

