<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%
String orderby = util.Request.get("order", "id"); // 获取搜索框中的排序字段、默认为发布时间
String sort = util.Request.get("sort", "desc"); // 获取搜索框中的排序类型、默认为倒序

String where = " 1=1 "; // 防止sql 搜索条件为： where and a=b 这样的错误
where += " AND faburen='" + session.getAttribute("username") + "' "; //  设置faburen为当前登录用户

// 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中

if (request.getParameter("bianhao") != null && !"".equals(request.getParameter("bianhao"))) {
    where += " AND bianhao LIKE '%" + request.getParameter("bianhao") + "%'";
}
if (request.getParameter("biaoti") != null && !"".equals(request.getParameter("biaoti"))) {
    where += " AND biaoti LIKE '%" + request.getParameter("biaoti") + "%'";
}
if (request.getParameter("fenlei") != null && !"".equals(request.getParameter("fenlei"))) {
    where += " AND fenlei ='" + request.getParameter("fenlei") + "'";
}

List<Map> lists = Query.make("shipinxinxi").where(where).order(orderby + " " + sort).page(15);
%>
 <%@ include file="head.jsp" %>


<div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="titles"> 视频信息查询 </span>
        </div>
        <div class="panel-body">
            <div class="form-search pa10 bg-warning">
                <form class="form-inline" action="?" size="small" id="formSearch">
                    <!-- form 标签开始 -->

                    编号： <input type="text" class="form-control" style="" name="bianhao" value="<%= request.getParameter("bianhao") !=null ? request.getParameter("bianhao") : "" %>" />

                    标题： <input type="text" class="form-control" style="" name="biaoti" value="<%= request.getParameter("biaoti") !=null ? request.getParameter("biaoti") : "" %>" />

                    分类：
                    <select class="form-control class_fenlei7" data-value="<%= request.getParameter("fenlei") !=null ? request.getParameter("fenlei") : "" %>" data-rule-required="true" data-msg-required="请填写分类" id="fenlei" name="fenlei">
                        <option value="">请选择</option>
                        <% List<Map> select = new CommDAO().select("SELECT * FROM shipinleixing ORDER BY id desc"); %>
 <% for (Map m : select) { %>

                        <option value="<%= m.get("id") %>"><%= m.get("fenleimingcheng") %></option>
                        <%} %>

                    </select>
                    <script>
                        $(".class_fenlei7").val($(".class_fenlei7").attr("data-value"));
                    </script>

                    <select class="form-control" name="orderby" id="orderby">
                        <option value="id">按发布时间</option>
                        <option value="dianjiliang">按点击量</option>
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
                            <th>编号</th>
                            <th>标题</th>
                            <th>封面</th>
                            <th>分类</th>
                            <th>视频</th>
                            <th>文件</th>
                            <th>点击量</th>
                            <th>发布人</th>
                            <th>发布时间</th>

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
                            <td><%= map.get("bianhao") %></td>
                            <td><%= map.get("biaoti") %></td>
                            <td><% if ("".equals(map.get("fengmian"))) { %>
-<%} else { %><img width="100" src="<%= map.get("fengmian") %>" /><%} %>
</td>
                            <td><% Map mapshipinleixing5 = new CommDAO().find("SELECT fenleimingcheng,id FROM shipinleixing where id='" + map.get("fenlei") + "'"); %>
<%= mapshipinleixing5.get("fenleimingcheng") %></td>
                            <td><% if (map.get("shipin").equals("")) { %>
无视频<%} else { %><a href="<%= map.get("shipin") %>" target="_blank">下载</a><%} %>
</td>
                            <td><% if (map.get("wenjian").equals("")) { %>
无文件<%} else { %><a href="<%= map.get("wenjian") %>" download="" target="_blank">下载</a><%} %>
</td>
                            <td><%= map.get("dianjiliang") %></td>
                            <td><%= map.get("faburen") %></td>
                            <td><%= Info.subStr(map.get("addtime"), 19 , "") %></td>

                            <td align="center">
                                <a class="btn btn-info btn-xs" href="shipinxinxi_detail.jsp?id=<%= map.get("id") %>" title="详情"> 详情 </a>

                                <a class="btn btn-success btn-xs" href="shipinxinxi_updt.jsp?id=<%= map.get("id") %>" title="编辑"> 编辑 </a>

                                <a
                                    class="btn btn-danger btn-xs"
                                    href="shipinxinxi.jsp?a=delete&id=<%= map.get("id") %>"
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

