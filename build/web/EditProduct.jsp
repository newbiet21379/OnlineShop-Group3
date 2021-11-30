<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Edit Product</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/managerproduct.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
        
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="edit" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>ProductID</label>
                                    <input value="" name="id" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Product Name</label>
                                    <input value="" name="name" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <input value="" name="Description" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>OriginalPrice</label>
                                    <input value="" name="OriginalPrice" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>SellPrice</label>
                                    <input value="" name="SellPrice" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>SalePercent</label>
                                    <input value="" name="SalePercent" type="text" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label>Amount</label>
                                    <input value="" name="Amount" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>StatusID</label>
                                    <input value="" name="sttID" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>BrandID</label>
                                    <input value="" name="BrandID" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>height</label>
                                    <input value="" name="height" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>width</label>
                                    <input value="" name="width" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>weight</label>
                                    <input value="" name="weight" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select name="Category" class="form-select" aria-label="Default select example">
                                        <c:forEach items="${listCate}" var="o">
                                        <option value="${o.categoryID}">${o.categoryName}</option>
                                    </c:forEach>
                                    </select>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>