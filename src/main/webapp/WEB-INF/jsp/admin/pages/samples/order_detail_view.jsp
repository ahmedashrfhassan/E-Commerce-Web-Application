<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
%>

<!-- Mirrored from www.urbanui.com/melody/template/pages/samples/invoice.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 15 Sep 2018 06:10:26 GMT -->
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Amazonya Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="assets/admin/vendors/iconfonts/font-awesome/css/all.min.css">
  <link rel="stylesheet" href="assets/admin/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="assets/admin/vendors/css/vendor.bundle.addons.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="assets/admin/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="assets/admin/images/favicon.png" />
</head>

<body>
  <div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    <%@ include file="../../includes/header.jsp" %>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:../../partials/_settings-panel.html -->
      <%@ include file="../../includes/sidebar.jsp" %>

      <!-- partial -->
      <div class="main-panel" id="orderDetail">
        <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
              Invoice
            </h3>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Sample pages</a></li>
                <li class="breadcrumb-item active" aria-current="page">Invoice</li>
              </ol>
            </nav>
          </div>
          <div class="row">
              <div class="col-lg-12">
                  <div class="card px-2">
                      <div class="card-body">
                          <div class="container-fluid">
                            <h3 class="text-right my-5">ORDER # ${orderDetails[0].order.id}</h3>
                            <hr>
                          </div>
                          <div class="container-fluid d-flex justify-content-between">
                            <div class="col-lg-3 pl-0">
                              <p class="mt-5 mb-2"><b>${orderDetails[0].user.userName}</b></p>
                              <p>${orderDetails[0].user.address}</p>
                            </div>
                            <div class="col-lg-3 pr-0">
                              <p class="mt-5 mb-2 text-right"><b>Invoice to</b></p>
                              <p class="text-right">Email<br>${orderDetails[0].user.email}</p>
                            </div>
                          </div>
                          <div class="container-fluid d-flex justify-content-between">
                            <div class="col-lg-3 pl-0">
                              <p class="mb-0 mt-5">Invoice Date : 23rd Jan 2016</p>
                              <p>Due Date : 25th Jan 2017</p>
                            </div>
                          </div>
                          <div class="container-fluid mt-5 d-flex justify-content-center w-100">
                            <div class="table-responsive w-100">
                                <table class="table">
                                  <thead>
                                    <tr class="bg-dark text-white">
                                        <th>#</th>
                                        <th>Description</th>
                                        <th class="text-right">Product</th>
                                        <th class="text-right">Unit cost</th>
                                        <th class="text-right">Total</th>
                                      </tr>
                                  </thead>
                                  <tbody>
                                <c:forEach items="${orderDetails}" var="order">
                                    <tr class="text-right">
                                      <td class="text-left">+</td>
                                      <td class="text-left">${order.product.name}</td>
                                      <td>${order.quantity}</td>
                                      <td>${order.product.price}</td>
                                      <td>${order.price}</td>
                                    </tr>
                                </c:forEach>
                                  </tbody>
                                </table>
                              </div>
                          </div>
                          <div class="container-fluid mt-5 w-100">
                            <h4 class="text-right mb-5">Total : ${totalPrice}</h4>
                            <hr>
                          </div>
                          <div class="container-fluid w-100">
                            <a href="#" onclick="printOrder()" class="btn btn-primary float-right mt-4 ml-2"><i class="fa fa-print mr-1"></i>Print</a>
                            <a href="#" class="btn btn-success float-right mt-4"><i class="fa fa-share mr-1"></i>Send Invoice</a>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2018 <a href="https://www.urbanui.com/" target="_blank">Urbanui</a>. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="far fa-heart text-danger"></i></span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="assets/admin/vendors/js/vendor.bundle.base.js"></script>
  <script src="assets/admin/vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="assets/admin/js/off-canvas.js"></script>
  <script src="assets/admin/js/hoverable-collapse.js"></script>
  <script src="assets/admin/js/misc.js"></script>
  <script src="assets/admin/js/settings.js"></script>
  <script src="assets/admin/js/todolist.js"></script>
  <script>
    function printOrder() {
      var divContents = document.getElementById("orderDetail").innerHTML;
      var a = window.open('', '', 'height=700, width=500');
      a.document.write('<html><head>' +
              '<meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><title>Melody Admin</title><link rel="stylesheet" href="assets/admin/vendors/iconfonts/font-awesome/css/all.min.css"><link rel="stylesheet" href="assets/admin/vendors/css/vendor.bundle.base.css"><link rel="stylesheet" href="assets/admin/vendors/css/vendor.bundle.addons.css"><link rel="stylesheet" href="assets/admin/css/style.css"><link rel="shortcut icon" href="assets/admin/images/favicon.png" />'+'</head>');
      a.document.write('<body > <h1>Order <br>');
      a.document.write(divContents);
      a.document.write('</body></html>');
      a.document.close();
      a.print();
    }
  </script>
<%--  <script src="assets/admin/vendors/js/vendor.bundle.base.js"><script src="assets/admin/vendors/js/vendor.bundle.addons.js"></script><script src="assets/admin/js/off-canvas.js"></script><script src="assets/admin/js/hoverable-collapse.js"></script><script src="assets/admin/js/misc.js"></script><script src="assets/admin/js/settings.js"></script><script src="assets/admin/js/todolist.js"></script>--%>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.urbanui.com/melody/template/pages/samples/invoice.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 15 Sep 2018 06:10:26 GMT -->
</html>
