<%-- 
    Document   : trangchu
    Created on : Sep 28, 2024, 2:29:02 PM
    Author     : tranh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trần Thị Hương</title>
        <style>
            body,html{
                background-color: lightpink;
                display: flex;
                flex-direction: column;
                align-items: center;
            }
        </style>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%! int a = 4, b = 8; %>
        <h1 style="color: red;">
            <%
            out.print("Tổng = " + (a + b));
            %>
        </h1>
        <h1 style="color: yellow;">
            <%
            out.print("Hiệu = " + (a - b));
            %>
        </h1>
        <h1 style="color: blue;">
            <%
            out.print("Thương = " + (a / b));
            %>
        </h1>
        <% 
        Date currentDate = new Date();
        out.println("Ngày giờ hiện tại: " + currentDate.toString());
        %>
        <h3>
            <%
            out.println("Cổng: " + request.getLocalPort());
            %>
        </h3>
        <h3>
            <%
            out.println("Tên máy chủ: " + request.getServerName());
            %>
        </h3>

        <h2 style="color: green;">
            <%
            int sum = 0;
            for (int i = 1; i <= 100; i++) {
                sum += i;
            }
            out.print("Tổng từ 1 đến 100 = " + sum);
            %>
        </h2>

        <h2 style="color: purple;">
            <%
            // Truyền luôn giá trị a, b, c
            double aVal = 1;
            double bVal = 2;
            double cVal = 1;

            // In ra phương trình bậc 2
            out.print("Phương trình: " + aVal + "x² + " + bVal + "x + " + cVal + " = 0<br>");

            double delta = bVal * bVal - 4 * aVal * cVal;

            if (delta > 0) {
                double x1 = (-bVal + Math.sqrt(delta)) / (2 * aVal);
                double x2 = (-bVal - Math.sqrt(delta)) / (2 * aVal);
                out.print("Hai nghiệm phân biệt: x1 = " + x1 + ", x2 = " + x2);
            } else if (delta == 0) {
                double x = -bVal / (2 * aVal);
                out.print("Nghiệm kép: x = " + x);
            } else {
                out.print("Phương trình vô nghiệm.");
            }
            %>
        </h2>
    </body>
</html>
