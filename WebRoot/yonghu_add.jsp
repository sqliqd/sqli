<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
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
            <form action="yonghu.jsp?a=insert" method="post" name="form1" id="form1">
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
                                remote="factory/checkno.jsp?checktype=insert&table=yonghu&col=yonghuming"
                                data-msg-remote="内容重复了"
                                id="yonghuming"
                                name="yonghuming"
                                value=""
                            />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">密码<span style="color: red">*</span></label>
                        <div class="col-sm-10">
                            <input
                                type="password"
                                class="form-control"
                                placeholder="输入密码"
                                style="width: 150px"
                                data-rule-required="true"
                                data-msg-required="请填写密码"
                                id="mima"
                                name="mima"
                                value=""
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
                                value=""
                            />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">性别</label>
                        <div class="col-sm-10">
                            <select class="form-control class_xingbie2" data-value="" id="xingbie" name="xingbie" style="width: 250px">
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select>
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
                                value=""
                            />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">头像</label>
                        <div class="col-sm-10">
                            <div class="input-group" style="width: 250px">
                                <input type="text" class="form-control" id="touxiang" name="touxiang" value="" />

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

