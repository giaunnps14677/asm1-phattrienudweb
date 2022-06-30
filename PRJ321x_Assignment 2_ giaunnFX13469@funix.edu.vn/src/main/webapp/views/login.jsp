<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
<div class="container">
        <div class="row">
            <div class="col-6 sign-in">
                <h1 class="text-center fw-bold">Sign in</h1>
                
                <%
                String uname = "", pass = "", reme = "";
                Cookie[] cookies = request.getCookies();
                if(cookies != null){
                	for(Cookie cook: cookies){
                		if(cook.getName().equals("cookUname")){
                			uname = cook.getValue();
                		}else if(cook.getName().equals("cookPass")){
                			pass = cook.getValue();
                		}else if(cook.getName().equals("cookRem")){
                			reme = cook.getValue();
                		}
                	}
                }
                %>
                
                <form action="<%= request.getContextPath() + "/login"%>" method="POST">
                	<div class="mb-3">
                    <input type="email" class="form-control" id="user" placeholder="enter email" name="user" value="<%= uname %> "/>
                  </div>
                  <div class="mb-3">
                    <input type="password" class="form-control" id="pass" placeholder="enter password" name="pass" value="<%= pass %> "/>
                  </div>
                  <div class="mb-3 text-center">
                    Remember me <input type="checkbox" name="remember" value=1 checked="checked"  
                    
                    <%= "1".equals(reme) ? "checked = '/checked'" : "" %>/>
                  </div>
                
                  <p class="text-center"><a href="#" class="forgot">Forgot your password?</a></p>
            
                  <div class="btn-login text-center">
                    <button type="submit" class="btn btn-danger" onclick="myFunction()">LOGIN</button>
                  </div>
                  </form>
                </div>
            <div class="col-6 welcome">
                <div class="content-welcom text-center">
                    <h2 class="fw-bold">Welcome Back!</h2>
                </div>
                <p class="text-center">To keep connected with us <br> please login with your personal <br> info</p>
            </div>
        </div>
    </div>

    <script>
        function myFunction(){
            let user = document.getElementById("user").value;
            let pass = document.getElementById("pass").value;
            if(!(user == "user@fpt.com" && pass == "1" || pass == "123" && user == "duongdt@fpt.com")){
               alert("Dang nhap khong thanh cong");
               
               document.getElementById("user").value = '';
               document.getElementById("pass").value = '';

               return false;
            }
            
        }
        function cancel(){
            document.getElementById("user").value = '';
            document.getElementById("pass").value = '';
        }
    </script>
</body>
</html>