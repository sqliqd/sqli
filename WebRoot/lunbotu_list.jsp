<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%
String orderby = util.Request.get("order", "id"); // 获取搜索框中的排序字段、默认为发布时间
String sort = util.Request.get("sort", "desc"); // 获取搜索框中的排序类型、默认为倒序

String where = " 1=1 "; // 防止sql 搜索条件为： where and a=b 这样的错误

// 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中

if (request.getParameter("title") != null && !"".equals(request.getParameter("title"))) {
    where += " AND title LIKE '%" + request.getParameter("title") + "%'";
}

List<Map> lists = Query.make("lunbotu").where(where).order(orderby + " " + sort).page(15);
%>
 <%@ include file="head.jsp" %>


<div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="titles"> 轮播图查询 </span>
        </div>
        <div class="panel-body">
            <div class="form-search pa10 bg-warning">
                <form class="form-inline" action="?" size="small" id="formSearch">
                    <!-- form 标签开始 -->

                    标题： <input type="text" class="form-control" style="" name="title" value="<%= request.getParameter("title") !=null ? request.getParameter("title") : "" %>" />

                    <select class="form-control" name="orderby" id="orderby">
                        <option value="id">按发布时间</option>
                    </select>

                    <select class="form-control" name="sort" id="sort">
                        <option value="desc">倒序</option>
                        <option value="asc">升序</option>
                    </select>

                    <button type="submit" class="btn btn-default">搜索</button>

                    <!--form标签结束-->
                </form>
            </div>

            <script>
                $("#orderby").val("<%= orderby %>");
                $("#sort").val("<%= sort %>".toLocaleLowerCase());
            </script>

            <div class="list-table">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                        <tr align="center">
                            <th width="60" data-field="item">序号</th>
                            <th>标题</th>
                            <th>图片</th>
                            <th>连接地址</th>

                            <th width="220" data-field="handler">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        int i = 0;
                        for (Map map : lists) {
                            i++;
                        %>

                        <tr id="<%= map.get("id") %>" pid="">
                            <td width="30" align="center">
                                <label> <%= i %> </label>
                            </td>
                            <td><%= map.get("title") %></td>
                            <td><% if ("".equals(map.get("image"))) { %>
-<%} else { %><img width="100" src="<%= map.get("image") %>" /><%} %>
</td>
                            <td><%= map.get("url") %></td>

                            <td align="center">
                                <a class="btn btn-success btn-xs" href="lunbotu_updt.jsp?id=<%= map.get("id") %>" title="编辑"> 编辑 </a>

                                <a class="btn btn-danger btn-xs" href="lunbotu.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('确定删除？此操作不可恢复')" title="删除">
                                    删除
                                </a>

                                <!--qiatnalijne-->
                            </td>
                        </tr>
                        <%} %>

                    </tbody>
                </table>
            </div>

            ${page.info}
        </div>
    </div>
</div>

<%@ include file="foot.jsp" %>

