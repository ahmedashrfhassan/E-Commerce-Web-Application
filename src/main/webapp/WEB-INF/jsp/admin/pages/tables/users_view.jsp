<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
%>

<!-- Mirrored from www.urbanui.com/melody/template/pages/tables/js-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 15 Sep 2018 06:08:41 GMT -->

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
    <link rel="shortcut icon" href="assets/admin/images/favicon.png"/>
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
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="page-header">
                    <h3 class="page-title">
                        Data table
                    </h3>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Tables</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Data table</li>
                        </ol>
                    </nav>
                </div>

                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Data table</h4>
                        <div class="row">
                            <div class="col-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Search</h4>
                                        <form action="admin-view-users" class="form-inline" method="post">
                                            <label class="sr-only" for="inlineFormInputName2">User email</label>
                                            <input name="email" type="email" class="form-control mb-2 mr-sm-2"
                                                   id="inlineFormInputName2" placeholder="email" value="">
                                            <button type="submit" class="btn btn-primary mb-2">Search</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="table-responsive">
                                    <table id="user-listing" class="table">
                                        <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>User name</th>
                                            <th>Email</th>
                                            <th>Address</th>
                                            <th>Date of birth</th>
                                            <th>Credit limit</th>
                                            <th>Role</th>
                                            <th>Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${allUsers}" var="user">
                                            <tr id="${user.id}">
                                                <td>${user.id}</td>
                                                <td>${user.userName}</td>
                                                <td>${user.email}</td>
                                                <td>${user.address}</td>
                                                <td>${user.dateOfBirth}</td>
                                                <td>${user.creditLimit}</td>
                                                <td>
                                                    <label class="badge badge-primary">${user.role}</label>
                                                </td>
                                                <td>
                                                    <a class="btn btn-outline-primary"
                                                       href="admin-order-view?user=${user.id}">View Orders
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
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
                    <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2018 <a
                            href="https://www.urbanui.com/" target="_blank">Urbanui</a>. All rights reserved.</span>
                    <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i
                            class="far fa-heart text-danger"></i></span>
                </div>
            </footer>
            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="assets/admin/vendors/js/vendor.bundle.base.js"></script>
    <script src="assets/admin/vendors/js/vendor.bundle.addons.js"></script>
    <!-- endinject -->
    <!-- inject:js -->
    <script src="assets/admin/js/off-canvas.js"></script>
    <script src="assets/admin/js/hoverable-collapse.js"></script>
    <script src="assets/admin/js/misc.js"></script>
    <script src="assets/admin/js/settings.js"></script>
    <script src="assets/admin/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="assets/admin/js/js-grid.js"></script>
    <script src="assets/admin/js/db.js"></script>
    <script src="assets/admin/js/select2.js"></script>

    <!-- End custom js for this page-->
    <script>
    </script>
</body>


<!-- Mirrored from www.urbanui.com/melody/template/pages/tables/js-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 15 Sep 2018 06:08:42 GMT -->


</html>