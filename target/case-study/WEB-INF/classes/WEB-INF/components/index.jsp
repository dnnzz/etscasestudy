<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Kullanıcılar</title>
<link href="webjars/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
<script src="webjars/jquery/3.3.1/dist/jquery.min.js"></script>
<script src="webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./assets/style.css">
</head>
<body>
    <%@ include file="./global/header.jsp"%>

  <section class="main-section d-flex">
   <div class="col-md-6 d-flex bg-dark-yellow justify-content-center flex-column" style="height:100vh;">
   <h1 class="grey-text text-center align-middle">
   <a class="a-hero-section" href="/case-study/allusers">Kullanıcılar Listesi</a></h1>
   </div>
    <div class="col-md-6 bg-dark d-flex justify-content-center flex-column">
       <h1 class="dark-yellow-text text-center align-middle">
       <a class="a-hero-section dark-yellow-text" href="/case-study/newUsrForm">Kullanıcı Ekle</a></h1>
       </div>
   </section>

</body>
</html>