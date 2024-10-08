<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<script src="js/jquery.validate.js"></script>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">
                <span class="titles"> 添加评论 </span>
            </div>
            <div class="panel-body">
                <form action="pinglun.jsp?a=insert" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">评论内容</label>
                            <div class="col-sm-10">
                                <textarea style="width: 80%; height: 120px" class="form-control" placeholder="输入评论内容" id="pinglunneirong" name="pinglunneirong"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">评论人</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入评论人"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="pinglunren"
                                    name="pinglunren"
                                    value="<%= session.getAttribute("username") !=null ? session.getAttribute("username") : "" %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
                                <input type="hidden" name="biao" id="biao" value="<%= request.getParameter("biao") !=null ? request.getParameter("biao") : "" %>" />
                                <input type="hidden" name="biaoid" id="biaoid" value="<%= request.getParameter("biaoid") !=null ? request.getParameter("biaoid") : "" %>" />
                                <input type="hidden" name="biaoti" id="biaoti" value="<%= request.getParameter("biaoti") !=null ? request.getParameter("biaoti") : "" %>" />

                                <button type="submit" class="btn btn-primary" name="Submit">提交</button>
                                <button type="reset" class="btn btn-default" name="Submit2">重置</button>
                            </div>
                        </div>
                    </div>

                    <!--form标签结束-->
                </form>

                <script>
                    $(function () {
                        $("#form1").validate();
                    });
                </script>
            </div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

