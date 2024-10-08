<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%
String orderby = util.Request.get("order", "id"); // 获取搜索框中的排序字段、默认为发布时间
String sort = util.Request.get("sort", "desc"); // 获取搜索框中的排序类型、默认为倒序

String where = " 1=1 "; // 防止sql 搜索条件为： where and a=b 这样的错误

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
 <%@ include file="header.jsp" %>


<link href="js/owl/owl.carousel.min.css" rel="stylesheet" />
<script src="js/owl/owl.carousel.min.js"></script>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="title-modelbox-widget">
            <h3 class="section-title">视频列表</h3>
            <div class="sidebar-widget-body">
                <div class="blog_carousel clearfix">
                    <div style="margin-bottom: 20px">
                        <form action="?" class="search">
                            <table class="jd-search">
                                <tbody>
                                    <tr>
                                        <td class="label1">分类</td>
                                        <td class="form-inline">
                                            <p class="search-radio">
                                                <input type="hidden" name="fenlei" value="<%= request.getParameter("fenlei") !=null ? request.getParameter("fenlei") : "" %>" />
                                                <a href="javascript:;" data-value="" onclick="selectRadio(this)">全部</a>
                                                <% List<Map> mapshipinleixing6 = new CommDAO().select("SELECT id,fenleimingcheng FROM shipinleixing"); %>
 <% for (Map r : mapshipinleixing6) { %>

                                                <a href="javascript:;" data-value="<%= r.get("id") %>" onclick="selectRadio(this)"><%= r.get("fenleimingcheng") %></a>
                                                <%} %>

                                            </p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="label1">标题</td>
                                        <td class="form-inline">
                                            <input type="text" class="form-control" style="width: 150px" name="biaoti" value="<%= request.getParameter("biaoti") !=null ? request.getParameter("biaoti") : "" %>" placeholder="请输入关键词" />
                                            <button type="submit" class="btn btn-default">搜索</button>
                                        </td>
                                    </tr>


                                </tbody>
                            </table>
                        </form>
                    </div>

                    <div class="row clearfix">
                        <% for (Map r : lists) { %>

                        <div class="article-col col-md-3 col-xs-12">
                            <article class="single_blog">
                                <figure>
                                    <div class="blog_thumb">
                                        <a href="shipinxinxidetail.jsp?id=<%= r.get("id") %>" class="img-box pb80 img-scale">
                                            <div class="img" style="background-image: url('<%= r.get("fengmian") %>')"></div>
                                        </a>
                                    </div>
                                    <figcaption class="blog_content">
                                        <h4 class="post_title">
                                            <a href="shipinxinxidetail.jsp?id=<%= r.get("id") %>"> <%= Info.subStr(r.get("biaoti"), 12) %> </a>
                                        </h4>
                                        <div class="articles_date">
                                            <span><i class="fa fa-calendar" aria-hidden="true"></i> <%= r.get("addtime") %></span>
                                            <span v-if="vo.senduser"><i class="fa fa-user" aria-hidden="true"></i> <%= r.get("faburen") %></span>
                                        </div>
                                        <p class="post_desc"><%= Info.subStr(r.get("jianjie"), 45) %></p>
                                        <a href="shipinxinxidetail.jsp?id=<%= r.get("id") %>" class="btn-see"> + 查看详情</a>
                                        <span class="article-price">点击量 <%= r.get("dianjiliang") %></span>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                        <%} %>

                    </div>

                    ${page.info}
                </div>
            </div>
            <!-- /.sidebar-widget-body -->
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

