<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%
String updtself = "0"; // 设置更新
HashMap mmm = new CommDAO().getmap(request.getParameter("id"), "yonghu");
%>
 <%@ include file="head.jsp" %>


<script src="js/jquery.validate.js"></script>
<link rel="stylesheet" href="js/layer/theme/default/layer.css" />
<script src="js/layer/layer.js"></script>

<div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="titles"> 添加用户 </span>
        </div>
        <div class="panel-body">
            <form action="yonghu.jsp?a=update" method="post" name="form1" id="form1">
                <!-- form 标签开始 -->

                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">用户名<span style="color: red">*</span></label>
                        <div class="col-sm-10">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="输入用户名"
                                style="width: 150px"
                                data-rule-required="true"
                                data-msg-required="请填写用户名"
                                remote="factory/checkno.jsp?checktype=update&id=<%= mmm.get("id") %>&table=yonghu&col=yonghuming"
                                data-msg-remote="内容重复了"
                                id="yonghuming"
                                name="yonghuming"
                                value="<%= Info.html(mmm.get("yonghuming")) %>"
                            />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">姓名<span style="color: red">*</span></label>
                        <div class="col-sm-10">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="输入姓名"
                                style="width: 150px"
                                data-rule-required="true"
                                data-msg-required="请填写姓名"
                                id="xingming"
                                name="xingming"
                                value="<%= Info.html(mmm.get("xingming")) %>"
                            />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">性别</label>
                        <div class="col-sm-10">
                            <select class="form-control class_xingbie4" data-value="<%= Info.html(mmm.get("xingbie")) %>" id="xingbie" name="xingbie" style="width: 250px">
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select>
                            <script>
                                $(".class_xingbie4").val($(".class_xingbie4").attr("data-value"));
                            </script>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">手机</label>
                        <div class="col-sm-10">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="输入手机"
                                style="width: 150px"
                                phone="true"
                                data-msg-phone="请输入正确手机号码"
                                id="shouji"
                                name="shouji"
                                value="<%= Info.html(mmm.get("shouji")) %>"
                            />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">头像</label>
                        <div class="col-sm-10">
                            <div class="input-group" style="width: 250px">
                                <input type="text" class="form-control" id="touxiang" name="touxiang" value="<%= Info.html(mmm.get("touxiang")) %>" />

                                <span class="input-group-btn"
                                    ><button
                                        type="button"
                                        class="btn btn-default"
                                        onclick="layer.open({type:2,title:'上传图片',fixed:true,shadeClose:true,shade:0.5,area:['320px','150px'],content:'upload.html?result=touxiang'})"
                                    >
                                        上传图片
                                    </button></span
                                >
                            </div>
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

