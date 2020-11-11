<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>아이디를 찾으러왔나?</title>
    <style>
        input{
          width: 350px;
          height: 40px;
          font-size: 30px;
      }
        table{
            margin:0 auto;
        }
        td{
            text-align: center;
        }
        img{
            width:400px;
            height:100px;
            text-align: center;    
        }
        button{
        width: 430px;
          height: 60px;
      }
      h3{
          color: rgb(132, 189, 246);
      }
    </style>
</head>
<body>
    <br>
    <form action="idSearchAction" method="post">
        <table>
            <tr>
                <td colspan="2"><img src="images/logo.jpg" alt=""></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td colspan="2"><h3><b>아이디 찾기</b></h3></td>
            </tr>
            <tr>
                <td colspan="2"><br></td>
            </tr>
            <tr>
                <td>이름 : </td>
                <td><input type="text" name = "name" size = "42"></td>
            </tr>
            <tr>
                <td colspan="2"><br></td>
            </tr>
            <tr>
                <td>전화번호 :</td>
                <td><input type="phone" name = "phone" size = "42"></td>
            </tr>
            <tr>
                <td colspan="2"><br></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" class="btn btn-primary">아이디 찾기</td>
            </tr>
        </table>
    </form>
</body>
</html>