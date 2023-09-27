<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Sinh Viên</title>

    <!-- Add Bootstrap CSS via CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container w-50">
    <h1 class="mt-5 mb-4 text-center">Update SinhVien</h1>
    <form:form action="${pageContext.request.contextPath}/sinhvien/add" method="post" modelAttribute="sinhvien">
        <form:hidden path="id" />
        <div class="mb-3">
            <form:label path="hoten" class="form-label">Họ tên:</form:label>
            <form:input path="hoten" class="form-control"/>
            <form:errors path="hoten" class="text-danger"/>
        </div>

        <div class="mb-3">
            <form:label path="diachi" class="form-label">Địa chỉ:</form:label>
            <form:input path="diachi" class="form-control"/>
            <form:errors path="diachi" class="text-danger"/>
        </div>

        <div class="mb-3">
            <form:label path="namsinh" class="form-label">Ngày sinh:</form:label>
            <form:input  type="number" path="namsinh" class="form-control"/>
            <form:errors path="namsinh" class="text-danger"/>
        </div>

        <div class="mb-3">
            <form:label path="gioitinh" class="form-label">Giới tính:</form:label>
            <form:select path="gioitinh" class="form-control">
                <form:option value="true">Nam</form:option>
                <form:option value="false">Nữ</form:option>
            </form:select>
            <form:errors path="gioitinh" class="text-danger"/>
        </div>

        <div class="mb-3">
            <form:label path="quequan" class="form-label">Quê quán:</form:label>
            <form:input path="quequan" class="form-control"/>
            <form:errors path="quequan" class="text-danger"/>
        </div>
        <%--        <div class="mb-3">--%>
        <%--            <form:label path="khoahoc" class="form-label">Khóa học:</form:label>--%>
        <%--            <form:select path="khoahoc" class="form-control">--%>
        <%--                <form:options items="${khoahocList}" itemValue="id" itemLabel="tenkhoahoc" />--%>
        <%--            </form:select>--%>
        <%--            <form:errors path="khoahoc" class="text-danger"/>--%>
        <%--        </div>--%>
        <select class="form-control" id="khoahoc" name="khoahoc.id" required>
            <c:forEach items="${khoahocList}" var="khoahoc">
                <option value="${khoahoc.id}" >${khoahoc.tenkhoahoc}</option>
            </c:forEach>
        </select>

        <div class="text-center">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        <a href="${pageContext.request.contextPath}/">Back to SinhVien List</a>
    </form:form>
</div>

<!-- Add Bootstrap JavaScript and Popper.js via CDN (required for some Bootstrap features) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.9.3/dist/umd/popper.min.js"></script>
</body>
</html>
