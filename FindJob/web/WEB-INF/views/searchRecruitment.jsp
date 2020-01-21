<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

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
                <p class="margin"><c:url value="/streamRecruitment" var="url"/><a class="menu" href="${url}">채용 흐름 </a></p>
            </div>
        </div>
    </div>
    <hr>
</section>


<br>
<center>
    <h4 class="mb-3">채용공고 상세검색 </h4>
    <div class="col-md-6 order-md-3 text-left">
        <form class="needs-validation" name=form1 action="<c:url value="/searchRecruitment/result"/>" method="get">
            <div class="mb-3">
                <label for="work_location">근무지역 </label>
                <input type="text" class="form-control" name="work_location" id="work_location" placeholder="ex)강남구, 성남시분당구">
                <div class="invalid-feedback">
                    Please enter a valid email address for shipping updates.
                </div>
            </div>

            <div class="mb-3">
                <label for="recruitment_school">학력 </label>
                <select class="custom-select d-block w-100" name="recruitment_school">
                    <option selected>대졸이상</option>
                    <option>초대졸이상</option>
                    <option>석사이상</option>
                    <option>박사이상</option>
                    <option>학력무관</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="recruitment_form">고용형태 </label>
                <select class="custom-select d-block w-100" name="recruitment_form">
                    <option selected>정규직</option>
                    <option>계약직</option>
                    <option>인턴</option>
                    <option>위촉직</option>
                </select>
            </div>

            <button class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button>
        </form>
    </div>
</center>

<br>
<c:if test="${! empty All || ! empty search}">
<div class="row justify-content-center">
    <div class="col-md-8">
        <h4 class="mb-3" align=center>위치 정보 </h4>
        <c:if test="${! empty All}">
            <iframe src = "http://13.125.213.221:5601/app/kibana#/visualize/create?type=region_map&indexPattern=d344bf50-3a89-11ea-97ee-6fe13df95fbf&_g=()&_a=(filters:!(),linked:!f,query:(language:lucene,query:''),uiState:(mapCenter:!(36.24205802497115,128.11157226562503),mapZoom:8),vis:(aggs:!((enabled:!t,id:'1',params:(),schema:metric,type:count),(enabled:!t,id:'2',params:(field:work_location.keyword,missingBucket:!f,missingBucketLabel:Missing,order:desc,orderBy:'1',otherBucket:!f,otherBucketLabel:Other,size:250),schema:segment,type:terms)),params:(addTooltip:!t,colorSchema:'Yellow%20to%20Red',emsHotLink:'https:%2F%2Fmaps.elastic.co%2Fv6.7%3Flocale%3Den%23file%2Fsouth_korea_municipalities',isDisplayWarning:!t,legendPosition:bottomright,mapCenter:!(0,0),mapZoom:2,outlineWeight:1,selectedJoinField:(description:'name%20(ko)',name:label_ko,type:property),selectedLayer:(attribution:'%3Ca%20href%3D%22https:%2F%2Fgithub.com%2Fsouthkorea%2Fsouthkorea-maps%22%3ESouth%20Korea%20Maps%3C%2Fa%3E%20%7C%20%3Ca%20href%3D%22https:%2F%2Fsgis.kostat.go.kr%22%3EKOSTAT%20-%20copyright%20to%20KOGL%20Type1%3C%2Fa%3E%20%7C%20%3Ca%20href%3D%22https:%2F%2Fwww.elastic.co%2Felastic-maps-service%22%3EElastic%20Maps%20Service%3C%2Fa%3E',created_at:'2019-01-16T05:35:44.061242',fields:!((description:'Sigungu%20Code%20(%EC%8B%9C%EA%B5%B0%EA%B5%AC%EC%BD%94%EB%93%9C)',name:sigungu_cd,type:id),(description:'name%20(en)',name:label_en,type:property),(description:'name%20(ko)',name:label_ko,type:property)),format:(type:geojson),id:south_korea_municipalities,isEMS:!t,layerId:'elastic_maps_service.South%20Korea%20Municipalities',name:'South%20Korea%20Municipalities',origin:elastic_maps_service),showAllShapes:!t,wms:(enabled:!f,options:(format:image%2Fpng,transparent:!t),selectedTmsLayer:(attribution:'%3Cp%3E%26%23169;%20%3Ca%20href%3D%22https:%2F%2Fwww.openstreetmap.org%2Fcopyright%22%3EOpenStreetMap%20contributors%3C%2Fa%3E%7C%3Ca%20href%3D%22https:%2F%2Fopenmaptiles.org%22%3EOpenMapTiles%3C%2Fa%3E%7C%3Ca%20href%3D%22https:%2F%2Fwww.maptiler.com%22%3EMapTiler%3C%2Fa%3E%7C%3Ca%20href%3D%22https:%2F%2Fwww.elastic.co%2Felastic-maps-service%22%3EElastic%20Maps%20Service%3C%2Fa%3E%3C%2Fp%3E%26%2310;',id:road_map,maxZoom:18,minZoom:0,origin:elastic_maps_service))),title:'New%20Visualization',type:region_map))" style="width:100%; height:700px"></iframe>
        </c:if>
        <c:if test="${! empty Part}">
            <iframe src="http://13.125.213.221:5601/app/kibana#/visualize/create?type=region_map&indexPattern=d344bf50-3a89-11ea-97ee-6fe13df95fbf&_g=(filters:!())&_a=(filters:!(('$state':(store:appState),meta:(alias:!n,disabled:!f,index:d344bf50-3a89-11ea-97ee-6fe13df95fbf,key:work_location.keyword,negate:!f,params:(query:${search.work_location},type:phrase),type:phrase,value:${search.work_location}),query:(match:(work_location.keyword:(query:${search.work_location},type:phrase)))),('$state':(store:appState),meta:(alias:!n,disabled:!f,index:d344bf50-3a89-11ea-97ee-6fe13df95fbf,key:recruitment_school.keyword,negate:!f,params:(query:${search.recruitment_school},type:phrase),type:phrase,value:${search.recruitment_school}),query:(match:(recruitment_school.keyword:(query:${search.recruitment_school},type:phrase)))),('$state':(store:appState),meta:(alias:!n,disabled:!f,index:d344bf50-3a89-11ea-97ee-6fe13df95fbf,key:recruitment_form.keyword,negate:!f,params:(query:${search.recruitment_form},type:phrase),type:phrase,value:${search.recruitment_form}),query:(match:(recruitment_form.keyword:(query:${search.recruitment_form},type:phrase))))),linked:!f,query:(language:lucene,query:''),uiState:(mapCenter:!(37.41039164333599,127.075252532959),mapZoom:12),vis:(aggs:!((enabled:!t,id:'1',params:(),schema:metric,type:count),(enabled:!t,id:'2',params:(field:work_location.keyword,missingBucket:!f,missingBucketLabel:Missing,order:desc,orderBy:'1',otherBucket:!f,otherBucketLabel:Other,size:250),schema:segment,type:terms)),params:(addTooltip:!t,colorSchema:'Yellow%20to%20Red',emsHotLink:'https:%2F%2Fmaps.elastic.co%2Fv6.7%3Flocale%3Den%23file%2Fsouth_korea_municipalities',isDisplayWarning:!t,legendPosition:bottomright,mapCenter:!(0,0),mapZoom:2,outlineWeight:1,selectedJoinField:(description:'name%20(ko)',name:label_ko,type:property),selectedLayer:(attribution:'%3Ca%20href%3D%22https:%2F%2Fgithub.com%2Fsouthkorea%2Fsouthkorea-maps%22%3ESouth%20Korea%20Maps%3C%2Fa%3E%20%7C%20%3Ca%20href%3D%22https:%2F%2Fsgis.kostat.go.kr%22%3EKOSTAT%20-%20copyright%20to%20KOGL%20Type1%3C%2Fa%3E%20%7C%20%3Ca%20href%3D%22https:%2F%2Fwww.elastic.co%2Felastic-maps-service%22%3EElastic%20Maps%20Service%3C%2Fa%3E',created_at:'2019-01-16T05:35:44.061242',fields:!((description:'Sigungu%20Code%20(%EC%8B%9C%EA%B5%B0%EA%B5%AC%EC%BD%94%EB%93%9C)',name:sigungu_cd,type:id),(description:'name%20(en)',name:label_en,type:property),(description:'name%20(ko)',name:label_ko,type:property)),format:(type:geojson),id:south_korea_municipalities,isEMS:!t,layerId:'elastic_maps_service.South%20Korea%20Municipalities',name:'South%20Korea%20Municipalities',origin:elastic_maps_service),showAllShapes:!t,wms:(enabled:!f,options:(format:image%2Fpng,transparent:!t),selectedTmsLayer:(attribution:'%3Cp%3E%26%23169;%20%3Ca%20href%3D%22https:%2F%2Fwww.openstreetmap.org%2Fcopyright%22%3EOpenStreetMap%20contributors%3C%2Fa%3E%7C%3Ca%20href%3D%22https:%2F%2Fopenmaptiles.org%22%3EOpenMapTiles%3C%2Fa%3E%7C%3Ca%20href%3D%22https:%2F%2Fwww.maptiler.com%22%3EMapTiler%3C%2Fa%3E%7C%3Ca%20href%3D%22https:%2F%2Fwww.elastic.co%2Felastic-maps-service%22%3EElastic%20Maps%20Service%3C%2Fa%3E%3C%2Fp%3E%26%2310;',id:road_map,maxZoom:18,minZoom:0,origin:elastic_maps_service))),title:'New%20Visualization',type:region_map))" style="width:100%; height:700px"></iframe>
        </c:if>
    </div>
</div>
</c:if>

<br><br>

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

