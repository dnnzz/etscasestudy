<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!DOCTYPE html>
    <html>

    <head>
      <title>Yeni kullanici</title>
      <link href="webjars/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
      <script src="webjars/jquery/3.3.1/dist/jquery.min.js"></script>
      <script src="webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="./assets/style.css">
    </head>

    <body class="bg-dark">
      <%@ include file="./global/header.jsp" %>
      <div class="form-box">
                  <p class="box-title">Yeni kullanıcı kaydet</p>
                  <form:form method="POST" action="save">
                      <form:input path="name" type="text" placeholder="İsim" autocomplete="off" />
                      <form:input path="surName" type="text" placeholder="Soyisim" autocomplete="off" />
                      <form:input path="phoneNumber" type="text" placeholder="Telefon Numarası" autocomplete="off" />
                      <form:input path="address" type="text" placeholder="Adres" autocomplete="off" />
                      <form:input path="bloodType" type="text" placeholder="Kan grubu" autocomplete="off" />
                      <button type="submit" class="submit-btn">Kaydet</button>
                  </form:form>
          </div>
      <%@ include file="./global/footer.jsp" %>
      </section>
    </body>

    </html>