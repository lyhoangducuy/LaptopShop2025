<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>User Management - Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="../../../../resources/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
    <jsp:include page="../../layouts/admin/header.jsp" />
    <div id="layoutSidenav">
        <jsp:include page="../../layouts/admin/sidebar.jsp" />

        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">User Management</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>

                    <div class="card p-4 shadow-sm">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h5 class="mb-0">List of Users</h5>
                            <a href="/admin/user/create" class="btn btn-primary btn-sm">
                                <i class="fas fa-plus"></i> Create User
                            </a>
                        </div>

                        <table class="table table-bordered table-striped align-middle">
                            <thead class="table-light">
                                <tr class="text-center">
                                    <th>ID</th>
                                    <th>Username</th>
                                    <th>Full Name</th>
                                    <th>Phone</th>
                                    <th>Email</th>
                                    <th>Role</th>
                                    <th>Avatar</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="u" items="${users}">
                                    <tr class="text-center">
                                        <td>${u.id}</td>
                                        <td>${u.username}</td>
                                        <td>${u.fullname}</td>
                                        <td>${u.phone}</td>
                                        <td>${u.email}</td>
                                        <td>${u.role}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${not empty u.avatar}">
                                                    <img src="/uploads/${u.avatar}" alt="Avatar" width="50" height="50" style="border-radius:50%;object-fit:cover;">
                                                </c:when>
                                                <c:otherwise>
                                                    <img src="/resources/img/no-avatar.png" alt="No Avatar" width="50" height="50" style="border-radius:50%;opacity:0.5;">
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <a href="/admin/user/detail/${u.id}" class="btn btn-sm btn-info text-white">View</a>
                                            <a href="/admin/user/edit/${u.id}" class="btn btn-sm btn-warning">Edit</a>
                                            <a href="/admin/user/delete/${u.id}" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>

                                <c:if test="${empty users}">
                                    <tr>
                                        <td colspan="8" class="text-center text-muted">No users found.</td>
                                    </tr>
                                </c:if>
                            </tbody>
                        </table>
                    </div>
                </div>
            </main>

            <jsp:include page="../../layouts/admin/footer.jsp" />
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../../../../resources/js/scripts.js"></script>
</body>
</html>
