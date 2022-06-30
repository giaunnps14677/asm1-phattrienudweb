<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/CSS/login.css"/>
</head>
<body>
<div class="container">
        <div class="row content">
            <img src="${pageContext.request.contextPath}/template/image/phat.jpg" alt="phat"><div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label ">Username</label>
                <input type="email" class="form-control" id="user" placeholder="Enter Username">
              </div>
              <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Password</label>
                <input type="email" class="form-control" id="pass" placeholder="Enter Password">
              </div>
              <div class="d-grid gap-2">
                <button class="btn btn-success" type="button" style="background-color: #67ac5b; border: 1px solid #67ac5b;" onclick="myFunction()">Login</button>
              </div>
              <div class="form-check m-3">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">
                  Remember me
                </label>
              </div>

              <div class="footer">
                  <div class="left">
                    <button class="btn-cancel" id="cancel" onclick="cancel()">Cancel</button>
                  </div>
                  <div class="right">
                      <span>Forgot <a href="#">password?</a></span>
                  </div>
              </div>
        </div>
            
    </div>
    <script>
        function myFunction(){
            let user = document.getElementById("user").value;
            let pass = document.getElementById("pass").value;
            if(user != "username" || pass != "password" || user == "" || pass == ""){
               alert("Dang nhap khong thanh cong");
               return false;
            }
            window.location.href = '${pageContext.request.contextPath}/views/home.jsp';
        }
        function cancel(){
            document.getElementById("user").value = '';
            document.getElementById("pass").value = '';
        }
    </script>
</body>
</html>