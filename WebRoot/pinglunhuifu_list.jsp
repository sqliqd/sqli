<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%
String orderby = util.Request.get("order", "id"); // 获取搜索框中的排序字段、默认为发布时间
String sort = util.Request.get("sort", "desc"); // 获取搜索框中的排序类型、默认为倒序

String where = " 1=1 "; // 防止sql 搜索条件为： where and a=b 这样的错误

// 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中

if (request.getParameter("pinglunid") != null && !"".equals(request.getParameter("pinglunid"))) {
    where += " AND pinglunid='" + request.getParameter("pinglunid") + "' ";
}

List<Map> lists = Query.make("pinglunhuifu").where(where).order(orderby + " " + sort).page(15);
%>
 <%@ include file="head.jsp" %>


<div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="titles"> 评论回复查询 </span>
        </div>
        <div class="panel-body">
            <div class="list-table">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                        <tr align="center">
                            <th width="60" data-field="item">序号</th>
                            <th>标题</th>
                            <th>评论内容</th>
                            <th>评论人</th>
                            <th>回复内容</th>
                            <th>回复人</th>
                            <th>回复时间</th>

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
                            <td><%= map.get("biaoti") %></td>
                            <td>
                                <pre style="padding: 5px; background: none; border: none; margin: 0"><%= map.get("pinglunneirong") %></pre>
                            </td>
                            <td><%= map.get("pinglunren") %></td>
                            <td>
                                <pre style="padding: 5px; background: none; border: none; margin: 0"><%= map.get("huifuneirong") %></pre>
                            </td>
                            <td><%= map.get("huifuren") %></td>
                            <td><%= Info.subStr(map.get("addtime"), 19 , "") %></td>

                            <td align="center">


                                <a
                                    class="btn btn-danger btn-xs"
                                    href="pinglunhuifu.jsp?a=delete&id=<%= map.get("id") %>"
                                    onclick="return confirm('确定删除？此操作不可恢复')"
                                    title="删除"
                                >
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

