<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style-trangchu.css">
<style>
        .menu-hover{
            color: orange;
        }
    </style>
</head>
<body>
<div class="container-fluid head">
        <div class="container">
            <div class="row mt-5">
                <div class="col-3">
                    <span class="prj">PRJ321x</span><br>
                    <span class="welcom">Welcome to my<br> Website</span>
                </div>
                <div class="col-9">
                    <!-- <div class="dropdown menu-left"> -->
                        <button class="btn btn-secondary dropdown-toggle menu-left" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                            Categories
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item" href="#">Iphone</a></li>
                            <li><a class="dropdown-item" href="#">Samsum</a></li>
                            <li><a class="dropdown-item" href="#">Oppo</a></li>
                        </ul>
                    <!-- </div> -->
                    <div class="menu-right">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Recipient's username" aria-label="What are you looking for?" aria-describedby="button-addon2">
                            <button class="btn btn-outline-secondary" type="button" id="button-addon2" style="background-color: rgb(238, 136, 36); color: #fff;"></button>
                          </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- menu -->
    <div class="container-fluid menu mb-5">
            <div class="row">
                <div class="col-3"></div>
                      <!-- Navbar content -->

                        <nav class="navbar navbar-expand-lg navbar-light col-9">
                              
                              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                  <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#"  style="color: #fff;" onMouseOver="this.style.color='#ee8824'" onMouseOut="this.style.color='#fff'">Home</a>
                                  </li>
                                  <li class="nav-item">
                                    <a class="nav-link menu-hover" href="#"  style="color: #fff; " onMouseOver="this.style.color='#ee8824'" onMouseOut="this.style.color='#fff'">Products</a>
                                  </li>
                                  <li class="nav-item">
                                    <a class="nav-link menu-hover" href="#"  style="color: #fff; " onMouseOver="this.style.color='#ee8824'" onMouseOut="this.style.color='#fff'">About Us</a>
                                  </li>
                                  <li class="nav-item dropdown">
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                      <li><a class="dropdown-item" href="#">Action</a></li>
                                      <li><a class="dropdown-item" href="#">Another action</a></li>
                                      <li><hr class="dropdown-divider"></li>
                                      <li><a class="dropdown-item" href="#">Something else here</a></li>
                                    </ul>
                                  </li>
                                </ul>
                                <form class="d-flex">
                                  <button class="btn btn-outline-success" type="button"  style="color: #fff; border: none;" onclick="window.location='login.jsp'">Login</button>
                                </form>
                              </div>
                        </nav>
                </div>
    </div>

    
    <div class="container-fluid">

        <div class="container">

            <!-- item -->
            <div class="row">
                <div class="row col-9">
                    <div class="col-4">
                        <div class="border-item">
                            <img src="${pageContext.request.contextPath}/image/iphone.png" alt="iphone" width="100%">
                            <div class="content m-3">
                                <span class="name-item">CELLPHONE</span><br>
                                <span class="content-item">Iphone 11 Pro Max 512GB</span><br>
                                <span class="price-item">$43.99</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="border-item">
                            <img src="${pageContext.request.contextPath}/image/iphone2.png" alt="iphone" width="100%">
                            <div class="content m-3">
                                <span class="name-item">CELLPHONE</span><br>
                                <span class="content-item">Iphone 11 Pro Max 512GB</span><br>
                                <span class="price-item">$43.99</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="border-item">
                            <img src="${pageContext.request.contextPath}/image/realme.png" alt="iphone" width="100%">
                            <div class="content m-3">
                                <span class="name-item">REALME</span><br>
                                <span class="content-item">Realme 512GB</span><br>
                                <span class="price-item">$43.99</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="border-item">
                            <img src="${pageContext.request.contextPath}/image/realme2.png" alt="iphone" width="100%">
                            <div class="content m-3">
                                <span class="name-item">REALME</span><br>
                                <span class="content-item">Realme Max 512GB</span><br>
                                <span class="price-item">$43.99</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="border-item">
                            <img src="${pageContext.request.contextPath}/image/samsum.png" alt="iphone" width="100%">
                            <div class="content m-3">
                                <span class="name-item">SAMSUM</span><br>
                                <span class="content-item">Samsum 512GB</span><br>
                                <span class="price-item">$43.99</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="border-item">
                            <img src="${pageContext.request.contextPath}/image/iphone.png" alt="iphone" width="100%">
                            <div class="content m-3">
                                <span class="name-item">CELLPHONE</span><br>
                                <span class="content-item">Iphone 11 Pro Max 512GB</span><br>
                                <span class="price-item">$43.99</span>
                            </div>
                        </div>
                    </div>
                    
                    
                </div>
                <div class="col-3"></div>
            </div>

            <!-- page -->
            <nav aria-label="Page navigation example" class="page">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#">4</a></li>
                  <li class="page-item"><a class="page-link" href="#">5</a></li>
                  <li class="page-item"><a class="page-link" href="#">6</a></li>
                  <li class="page-item"><a class="page-link" href="#">7</a></li>
                  <li class="page-item"><a class="page-link" href="#">8</a></li>
                  <li class="page-item"><a class="page-link" href="#">9</a></li>
                  <li class="page-item"><a class="page-link" href="#">10</a></li>
                  <li class="page-item"><a class="page-link" href="#">11</a></li>
                  <li class="page-item"><a class="page-link" href="#">12</a></li>
                  <li class="page-item"><a class="page-link" href="#">13</a></li>
                  <li class="page-item"><a class="page-link" href="#">14</a></li>
                  <li class="page-item"><a class="page-link" href="#">15</a></li>
                  <li class="page-item"><a class="page-link" href="#">16</a></li>
                  <li class="page-item"><a class="page-link" href="#">17</a></li>
                  <li class="page-item"><a class="page-link" href="#">18</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
        </div>
    </div>

    <!-- footer -->
    <div class="container-fluid footer">
                <p>© 2018. Công ty cổ phần Thế Giới Di Động. <br>
                     GPDKKD: 0303217354 do sở KH & ĐT TP.HCM cấp ngày 02/01/2007. GPMXH: 238/GP-BTTTT do Bộ Thông Tin và Truyền Thông cấp ngày 04/06/2020. <br>
                    Địa chỉ: 128 Trần Quang Khải, P. Tân Định, Q.1, TP.Hồ Chí Minh. Điện thoại: 028 38125960. Email: cskh@thegioididong.com.  <br>
                    Chịu trách nhiệm nội dung: Huỳnh Văn Tốt. Xem chính sách sử dụng</p>
           
    </div>
    
    <script>
    function myFunction(){
    	window.location.href = '${pageContext.request.contextPath}/views/login.jsp';
    }
    </script>
</body>
</html>