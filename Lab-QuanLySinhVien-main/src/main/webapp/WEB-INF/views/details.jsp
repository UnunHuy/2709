<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Detail</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #333;
        }

        h2 {
            color: #555;
        }

        p {
            color: #777;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Sinh Vien Detail</h1>
    <h2>${sinhvien.id}</h2>
    <h2>${sinhvien.hoten}</h2>
    <h2>${sinhvien.khoahoc.tenkhoahoc}</h2>
    <h2>${sinhvien.khoahoc.nienkhoa}</h2>
    <a href="${pageContext.request.contextPath}/">Back to Sinh viên List</a>
</div>
</body>
</html>
