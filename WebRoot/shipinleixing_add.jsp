<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>


<script src="js/jquery.validate.js"></script>

<div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="titles"> 添加视频类型 </span>
        </div>
        <div class="panel-body">
            <form action="shipinleixing.jsp?a=insert" method="post" name="form1" id="form1">
                <!-- form 标签开始 -->

                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">分类名称<span style="color: red">*</span></label>
                        <div class="col-sm-10">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="输入分类名称"
                                style="width: 250px"
                                data-rule-required="true"
                                data-msg-required="请填写分类名称"
                                remote="factory/checkno.jsp?checktype=insert&table=shipinleixing&col=fenleimingcheng"
                                data-msg-remote="内容重复了"
                                id="fenleimingcheng"
                                name="fenleimingcheng"
                                value=""
                            />
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

