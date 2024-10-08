


<br><br><br><br><br><br><br><br><br>
<%@ page language="java" pageEncoding="utf-8" %>
<table width="100%" height="210" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#D9E9FF" style="border-collapse: collapse">
    <tr align="middle" bgcolor="#ffffff">
        <td   colspan="4" bgcolor="#CADCEA"><h1>欢迎使用播客设计系统</h1>
            <h3  valign="bottom">当前用户： <%=request.getSession().getAttribute("username") %> </h3>

            <h3  valign="bottom">您的权限：<%=request.getSession().getAttribute("cx") %></h3>

        </td>
    </tr>
</table>