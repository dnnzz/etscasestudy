<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html>

    <head>
      <title>Kullanıcılar</title>
      <link href="webjars/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
      <script src="webjars/jquery/3.3.1/dist/jquery.min.js"></script>
      <script src="webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="./assets/style.css">
    </head>

    <body class="bg-dark">
      <%@ include file="./global/header.jsp" %>
        <div class="col-12 d-flex flex-column">
          <h1 class="table-header text-center">Kullanıcı Listesi</h1>
          <section class="container table-section">
            <input type="search" class="light-table-filter" data-table="user-table" style="border-radius:5%;" placeholder="Kayıtlarda ara" />

            <table class="user-table">
              <thead>
                <tr>
                  <th>İsim</th>
                  <th>Soyisim</th>
                  <th>Telefon</th>
                  <th>Adres</th>
                  <th>Kan Grubu</th>
                  <th>Aksiyonlar</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="user" items="${userlist}">
                  <tr>
                    <td>${user.name}</td>
                    <td>${user.surName}</td>
                    <td>${user.phoneNumber}</td>
                    <td>${user.address}</td>
                    <td>${user.bloodType}</td>
                    <td>
                      <div class="d-flex justify-content-around">
                        <a class="btn btn-md btn-danger ml-2" href="/case-study/deleteuser/${user.id}">Sil</a>
                      </div>
                    </td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
             <%@ include file="./global/footer.jsp" %>
          </section>
        <script type="text/javascript">
          (function (document) {
            'use strict';

            var LightTableFilter = (function (Arr) {

              var _input;
              console.log(Arr);

              function _onInputEvent(e) {
                _input = e.target;
                var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
                Arr.forEach.call(tables, function (table) {
                  Arr.forEach.call(table.tBodies, function (tbody) {
                    Arr.forEach.call(tbody.rows, _filter);
                  });
                });
              }

              function _filter(row) {
                var text = row.textContent.toLowerCase(), val = _input.value.toLowerCase();
                row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
              }

              return {
                init: function () {
                  var inputs = document.getElementsByClassName('light-table-filter');
                  Arr.forEach.call(inputs, function (input) {
                    input.oninput = _onInputEvent;
                  });
                }
              };
            })(Array.prototype);

            document.addEventListener('readystatechange', function () {
              if (document.readyState === 'complete') {
                LightTableFilter.init();
              }
            });

          })(document);
        </script>
    </body>

    </html>