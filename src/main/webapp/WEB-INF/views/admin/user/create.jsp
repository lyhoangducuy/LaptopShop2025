<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>Create User - Admin</title>

        <!-- Bootstrap & Styles -->
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="../../../../resources/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <style>
            #avatarPreview {
                width: 120px;
                height: 120px;
                border-radius: 10px;
                object-fit: cover;
                border: 1px solid #ddd;
                margin-top: 8px;
            }
        </style>
    </head>

    <body class="sb-nav-fixed">
        <jsp:include page="../../layouts/admin/header.jsp" />

        <div id="layoutSidenav">
            <jsp:include page="../../layouts/admin/sidebar.jsp" />

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Create User</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>

                        <!-- Form -->
                        <div class="card shadow-sm p-4">
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="form-label">Email:</label>
                                    <input type="email" class="form-control" placeholder="Enter email">
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Username:</label>
                                    <input type="text" class="form-control" placeholder="Enter username">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="form-label">Password:</label>
                                    <input type="password" class="form-control" placeholder="Enter password">
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Full name:</label>
                                    <input type="text" class="form-control" placeholder="Enter full name">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="form-label">Phone:</label>
                                    <input type="text" class="form-control" placeholder="Enter phone number">
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Address:</label>
                                    <input type="text" class="form-control" placeholder="Enter address">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="form-label">Role:</label>
                                    <select class="form-select">
                                        <option value="">-- Select Role --</option>
                                        <option value="ADMIN">ADMIN</option>
                                        <option value="USER">USER</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label for="formFileLg" class="form-label">Avatar:</label>
                                    <input class="form-control form-control-sm" id="formFileLg" type="file" accept=".png, .jpg, .jpeg">
                                    <img id="avatarPreview" src="#" alt="Avatar preview" style="display:none;">
                                </div>
                            </div>

                            <div class="text-center mt-4">
                                <button class="btn btn-primary px-4">Save</button>
                                <button class="btn btn-secondary px-4">Cancel</button>
                            </div>
                        </div>
                    </div>
                </main>

                <jsp:include page="../../layouts/admin/footer.jsp" />
            </div>
        </div>

        <!-- JS Libraries -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../../../../resources/js/scripts.js"></script>

        <!-- jQuery Preview Script -->
        <script>
            $(document).ready(function () {
                $('#formFileLg').change(function (event) {
                    const file = event.target.files[0];
                    if (file) {
                        const reader = new FileReader();
                        reader.onload = function (e) {
                            $('#avatarPreview').attr('src', e.target.result).show();
                        };
                        reader.readAsDataURL(file);
                    } else {
                        $('#avatarPreview').hide();
                    }
                });
            });
        </script>
    </body>
</html>
