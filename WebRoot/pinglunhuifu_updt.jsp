<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%
String updtself = "0"; // 设置更新
HashMap mmm = new CommDAO().getmap(request.getParameter("id"), "pinglunhuifu");

Map readMap = new CommDAO().getmap(String.valueOf(mmm.get("pinglunid")), "pinglun");
%>
 <%@ include file="head.jsp" %>


<script src="js/jquery.validate.js"></script>

<div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="titles"> 添加评论回复 </span>
        </div>
        <div class="panel-body">
            <form action="pinglunhuifu.jsp?a=update" method="post" name="form1" id="form1">
                <!-- form 标签开始 -->

                <input type="hidden" name="pinglunid" value="<%= mmm.get("pinglunid") %>" />
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">表<span style="color: red">*</span></label>
                        <div class="col-sm-10"><%= mmm.get("biao") %><input type="hidden" id="biao" name="biao" value="<%= Info.html(mmm.get("biao")) %>" /></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">表id<span style="color: red">*</span></label>
                        <div class="col-sm-10"><%= mmm.get("biaoid") %><input type="hidden" id="biaoid" name="biaoid" value="<%= Info.html(mmm.get("biaoid")) %>" /></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">标题<span style="color: red">*</span></label>
                        <div class="col-sm-10"><%= mmm.get("biaoti") %><input type="hidden" id="biaoti" name="biaoti" value="<%= Info.html(mmm.get("biaoti")) %>" /></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">评论内容</label>
                        <div class="col-sm-10">
                            <pre style="padding: 5px; background: none; border: none; margin: 0"><%= mmm.get("pinglunneirong") %></pre>
                            <input type="hidden" id="pinglunneirong" name="pinglunneirong" value="<%= Info.html(mmm.get("pinglunneirong")) %>" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">回复内容</label>
                        <div class="col-sm-10">
                            <textarea style="width: 80%; height: 120px" class="form-control" placeholder="输入回复内容" id="huifuneirong" name="huifuneirong">
<%= Info.html(mmm.get("huifuneirong")) %></textarea
                            >
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                        <div class="col-sm-10">
                            <input name="id" value="<%= mmm.get("id") %>" type="hidden" />
                            <input name="referer" value="<%=request.getHeader("referer") %>" type="hidden" />
                            <input name="updtself" value="<%= updtself %>" type="hidden" />

                            <button type="submit" class="btn btn-primary" name="Submit">提交</button>
                            <button type="reset" class="btn btn-default" name="Submit2">重置</button>
                            <button type="button" class="btn btn-default" onclick="history.back()">返回</button>
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
</div>

<%@ include file="foot.jsp" %>

