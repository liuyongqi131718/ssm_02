<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/26
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../common/css/pagination.css" media="screen">
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/style.css"/>
    <link rel="stylesheet" href="../assets/css/ace.min.css" />
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css" />

    <!--  <link rel="stylesheet" href="font/css/font-awesome.min.css" />-->

    <script type="text/javascript">
        window.jQuery || document.write("<script src='../assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
    </script>
    <script type="text/javascript">
        if("ontouchend" in document) document.write("<script src='../assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
    </script>
    <!-- page specific plugin scripts -->

    <script src="../assets/layer/layer.js" type="text/javascript" ></script>
    <script type="text/javascript" src="../js/H-ui.js"></script>

    <script src="../common/js/highlight.min.js"></script>
    <!-- <script src="../My97DatePicker/WdatePicker.js"></script> -->
    <script src="../common/js/jquery.pagination.js"></script>
    <title>用户列表</title>
</head>

<body>
<div class="page-content clearfix">
    <div id="Member_Ratings">
        <div class="d_Confirm_Order_style">
            <form class="search_style" id="search_form">
                <ul class="search_content clearfix">
                    <li>
                        <label class="l_f">用户账号：</label>
                        <input name="username" id="username1" type="text"  class="text_add" placeholder="输入用户账号"  />
                    </li>
                    <li>
                        <label class="l_f">用户姓名：</label>
                        <input name="name" type="text" id="name1" class="text_add" placeholder="输入用户姓名"  />
                    </li>
                    <li>
                        <label class="l_f">手机号：</label>
                        <input name="tel"  id="tel1" type="text"  class="text_add" placeholder="输入手机号"  />
                    </li>
                    <li>
                        <label class="l_f">部门：</label>
                        <select name="post" style="width:90px">
                            <option>--所有--</option>
                            <option>部门1</option>
                            <option>部门2</option>
                            <option>部门3</option>
                        </select>
                    </li>
                    <li style="width:90px;">
                        <button type="button" class="btn_search" onclick="search_user()"><i class="icon-search"></i>查询</button>
                    </li>
                </ul>
            </form>
            <!---->
            <div class="border clearfix">
                <span class="l_f">
                    <%--<shiro:hasPermission name="userlist:add">
                        <a href="javascript: " id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加用户</a>
                    </shiro:hasPermission>--%>
                    <a href="javascript: " id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加用户</a>
                </span>
                <span class="r_f" id="count"></span>
            </div>
            <!---->
            <div class="table_menu_list">
                <table class="table table-striped table-bordered table-hover" id="sample-table">
                    <thead>
                    <tr>
                        <th width="25"><label>
                            <input type="checkbox" class="ace">
                            <span class="lbl"></span></label></th>
                        <th  >账号</th>
                        <th  >名称</th>
                        <th  >年龄</th>
                        <th >电话</th>
                        <th >QQ</th>
                        <th >职务</th>
                        <th >角色</th>
                        <th >添加时间</th>
                        <th >状态</th>
                        <th width="180">操作</th>
                    </tr>
                    </thead>
                    <tbody id="tbody">
                    <%--<tr>
                        <td><label>
                            <input type="checkbox" class="ace">
                            <span class="lbl"></span></label></td>
                        <td>001</td>
                        <td> 张三</td>
                        <td>23</td>
                        <td>13999999999</td>
                        <td>291023733</td>
                        <td >部门1</td>
                        <td>普通用户</td>
                        <td>2014-6-11 14:21</td>
                        <td class="td-status"><span class="label label-success radius">正常</span></td>
                        <td class="td-manage"><a onClick="member_stop(this,'10001')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a> <a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
                    </tr>--%>
                    <%--<tr>
                        <td><label>
                            <input type="checkbox" class="ace">
                            <span class="lbl"></span></label></td>
                        <td>001</td>
                        <td> 张三</td>
                        <td>23</td>
                        <td>13999999999</td>
                        <td>291023733</td>
                        <td >部门1</td>
                        <td>普通用户</td>
                        <td>2014-6-11 14:21</td>
                        <td class="td-status"><span class="label label-success radius">正常</span></td>
                        <td class="td-manage"><a onClick="member_stop(this,'10001')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a> <a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
                    </tr>--%>
                    </tbody>
                </table>
                <div class="m-style page"></div>
                <!-- <div class="page">
                    <a href="#">第一页</a> <a href="#">上一页</a> <input class="pageIndex"
                        value="1" /> / <input class="pageCount" readonly="readonly"
                        value="98765" /> <a href="#">下一页</a> <a href="#">第未页</a>
                </div> -->

            </div>
            </div>
        </div>
    </div>
</div>
<!--添加用户图层-->
<form class="add_menber" id="add_menber_style" style="display:none">
    <ul class=" page-content">
        <li>
            <label class="label_name">用户账号：</label>
            <span class="add_name">
            <input value="" name="username" type="text"  class="text_add"/>
            </span>
            <div class="prompt r_f"></div>
        </li>
        <li>
            <label class="label_name">用户姓名：</label>
            <span class="add_name">
            <input name="name" type="text"  class="text_add"/>
            </span>
            <div class="prompt r_f"></div>
        </li>
        <li>
            <label class="label_name">所属部门：</label>
            <span class="add_name">
            <select name="post" class="text_add" style="width:160px; margin-left:9px;">
      <div class="prompt r_f">
      </div>
      <option>--所有--</option>
      <option>部门1</option>
      <option>部门2</option>
      <option>部门3</option>
    </select>
            </span>
            <div class="prompt r_f"></div>
        </li>
        <li>
            <label class="label_name"> QQ：</label>
            <span class="add_name">
            <input name="qq" type="text"  class="text_add"/>
            </span>
            <div class="prompt r_f"></div>
        </li>
        <li>
            <label class="label_name">联系电话：</label>
            <span class="add_name">
            <input name="tel" type="text"  class="text_add"/>
            </span>
            <div class="prompt r_f"></div>
        </li>
        <li>
            <label class="label_name">用户年龄：</label>
            <span class="add_name">
            <input name="age" type="text"  class="text_add"/>
            </span>
            <div class="prompt r_f"></div>
        </li>
        <li >
            <label class="label_name">初始密码：</label>
            <span class="add_name">
            <input name="password" type="password" value="123456" class="text_add" />
            </span>
            <div class="prompt r_f"></div>
        </li>
        <li >
            <label class="label_name">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label>
            <span class="add_name">
            <label>
      <input name="sex" type="radio" checked="checked" class="ace" value="1">
      <span class="lbl">男</span></label>
            &nbsp;&nbsp;&nbsp;
            <label>
      <input name="sex" type="radio" class="ace" value="2">
      <span class="lbl">女</span></label>
            &nbsp;&nbsp;&nbsp; </span>
            <div class="prompt r_f"></div>
        </li>
        <li style="width:60%;">
            <label class="label_name">用户组：</label>
            <span class="add_name" id="role">
            <%--<label>
      <input name="form-field-radio2" type="radio" checked="checked" class="ace">
      <span class="lbl">普通用户</span>
            </label>
            &nbsp;&nbsp;&nbsp;--%>
           <%-- <label>
      <input name="form-field-radio2" type="radio" class="ace">
      <span class="lbl">管理员</span>
            </label>
            &nbsp;&nbsp;&nbsp;--%>
                <%--<label>
             <input name="form-field-radio2" type="radio"  class="ace">
      <span class="lbl">超级管理员</span></label>
                &nbsp;&nbsp;&nbsp;--%>
            </span>
            <label>
                <div class="prompt r_f"></div>
            </label>
        </li>
    </ul>
</form>

</body>
<div id="Searchresult"></div>
<div id="hiddenresult"></div>
<div id="Pagination" class="m-style pagination">
    <!-- 这里显示分页 -->
</div>
</body>
</html>
<script>
    var state;
    var arr;
    var ss=2;
    $().ready(function() {
        selectAdmin(null);
    });
    /*用户-添加*/
    $('#member_add').on('click', function(){
        $.ajax({
            url: '/selectAllAdminRole.do',
            type: 'post',  // 请求类型
            //data: param,  // post时请求体
            dataType: 'json',  // 返回请求的类型，有text/json两种
            async: true,   // 是否异步
            /*  cache: true,   // 是否缓存 */
            timeout:null,  // 设置请求超时
            contentType: 'application/x-www-form-urlencoded',
            success:function(data){
                var str="";
                $.each(data, function (index,element) {
                    str+="<label><input name='roleId' type='radio'  class='ace' value='"+element.id+"'><span class='lbl'>"+element.name+"</span></label>&nbsp;&nbsp;&nbsp;";
                });
                $("#role").html(str);
                console.log(data)
            }
        });
        layer.open({
            type: 1,
            title: '添加用户',
            maxmin: true,
            shadeClose: true, //点击遮罩关闭层
            area : ['800px' , ''],
            content:$('#add_menber_style'),
            btn:['提交','取消'],
            yes:function(index,layero){
                var num=0;
                var str="";
                $(".add_menber input[type$='text']").each(function(n){
                    if($(this).val()=="")
                    {

                        layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                            title: '提示框',
                            icon:0,
                        });
                        num++;
                        return false;
                    }
                });
                if(num>0){  return false;}
                else{
                    //$('#add_menber_style').submit();
                    $.ajax({
                        url: '/addAdmin.do',
                        type: 'post',  // 请求类型
                        data: $("#add_menber_style").serialize(),  // post时请求体
                        dataType: 'json',  // 返回请求的类型，有text/json两种
                        async: true,   // 是否异步
                        /*  cache: true,   // 是否缓存 */
                        timeout:null,  // 设置请求超时
                        contentType: 'application/x-www-form-urlencoded',
                        success:function(data){
                            if (data>0){
                                alert(123)
                                layer.alert('添加成功！',{
                                    title: '提示框',
                                    icon:1,
                                });
                                layer.close(index);
                                selectAdmin(null);
                            }

                        }
                    });

                }
            }
        });
    });
    /*用户-查看*/
    function member_show(title,url,id,w,h){
        layer_show(title,url+'#?='+id,w,h);
    }
    /*用户-停用*/
    function member_stop(obj,id){
        layer.confirm('确认要停用吗？',function(index){
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="icon-ok  bigger-120"></i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
            $(obj).remove();
            layer.msg('已停用!',{icon: 5,time:1000});
        });

    }
    /*用户查询*/
    function search_user(){
        var username=$("#username1").val();
        var name=$("#name1").val();
        var tel=$("#tel1").val();
        var post=$("#post").val();
        var param=$('#search_form').serialize();
        selectAdmin(param)
        //$("#search_form").submit();

    }
    /*用户-启用*/
    function member_start(obj,id){
        layer.confirm('确认要启用吗？',function(index){
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="icon-ok bigger-120"></i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
            $(obj).remove();
            layer.msg('已启用!',{icon: 6,time:1000});
        });
    }
    /*用户-编辑*/
    function member_edit(id){
        layer.open({
            type: 1,
            title: '修改用户信息',
            maxmin: true,
            shadeClose:false, //点击遮罩关闭层
            area : ['800px' , ''],
            content:$('#add_menber_style'),
            btn:['提交','取消'],
            yes:function(index,layero){
                var num=0;
                var str="";
                $(".add_menber input[type$='text']").each(function(n){
                    if($(this).val()=="")
                    {

                        layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                            title: '提示框',
                            icon:0,
                        });
                        num++;
                        return false;
                    }
                });
                if(num>0){  return false;}
                else{
                    $('#add_menber_style').submit();
                    layer.alert('添加成功！',{
                        title: '提示框',
                        icon:1,
                    });
                    layer.close(index);
                }
            }
        });
    }
    /*用户-删除*/
    function member_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            $(obj).parents("tr").remove();
            layer.msg('已删除!',{icon:1,time:1000});
        });
    }

    function selectAdmin(param){
        $.ajax({
            url: '/selectAllAdmin.do',
            type: 'post',  // 请求类型
            data: param,  // post时请求体
            dataType: 'json',  // 返回请求的类型，有text/json两种
            async: true,   // 是否异步
            /*  cache: true,   // 是否缓存 */
            timeout:null,  // 设置请求超时
            contentType: 'application/x-www-form-urlencoded',
            success:function(data){
                if (data!=null&&data.length!=0){
                    $("#count").html("共：<b>"+data.length+"</b>条");
                }
                /*$.each(data, function (index,element) {
                    if (element.state==1) {
                        state="正常"
                    }
                    if (element.state==0) {
                        state="停用"
                    }

                    html+="<tr><td><label><input type='checkbox' class='ace'> <span class='lbl'></span></label></td>";
                    html+="<td>"+element.username+"</td><td>"+element.name+"</td><td>"+element.age+"</td><td>"+element.tel+"</td><td>"+element.qq+"</td><td>"+element.post+"</td><td>"+element.roleName+"</td><td>"+element.addTime+"</td> <td class='td-status'><span class='label label-success radius'>"+state+"</span></td>";
                    html+="<td class='td-manage'><a onClick='member_stop(this,"+element.id+")'  href='javascript:;' title='停用'  class='btn btn-xs btn-success'><i class='icon-ok bigger-120'></i></a> <a title='编辑' onclick='member_edit("+element.id+")' href='javascript:;'  class='btn btn-xs btn-info' ><i class='icon-edit bigger-120'></i></a> <shiro:hasPermission name='userlist:delete'><a title='删除' href='javascript:;'  onclick='member_del(this,"+element.id+")' class='btn btn-xs btn-warning' ><i class='icon-trash  bigger-120'></i></a></shiro:hasPermission><shiro:lacksPermission name='userlist:delete'><a title='删除' href='javascript:;'  onclick='member_del(this,"+element.id+")' class='btn btn-xs btn-warning' disabled='disabled'><i class='icon-trash  bigger-120'></i></a></shiro:lacksPermission></td></tr>";
                });
                $("#tbody").html(html);*/
                arr = data;
                initPagination(arr,ss);
                //console.log(data)
            }
        });
    }

    function pageselectCallback(api){
        var currentPage=api.getCurrent();
        var beginRows=(currentPage-1)*ss;
        var endRows=currentPage*ss-1;
        var html;
        $.each(arr, function (index,element) {
            if (element.state==1) {
                state="正常"
            }
            if (element.state==0) {
                state="停用"
            }
            if(index>=beginRows&&index<=endRows){
                html+="<tr><td><label><input type='checkbox' class='ace'> <span class='lbl'></span></label></td>";
                html+="<td>"+element.username+"</td><td>"+element.name+"</td><td>"+element.age+"</td><td>"+element.tel+"</td><td>"+element.qq+"</td><td>"+element.post+"</td><td>"+element.roleName+"</td><td>"+element.addTime+"</td> <td class='td-status'><span class='label label-success radius'>"+state+"</span></td>";
                html+="<td class='td-manage'><a onClick='member_stop(this,"+element.id+")'  href='javascript:;' title='停用'  class='btn btn-xs btn-success'><i class='icon-ok bigger-120'></i></a> <a title='编辑' onclick='member_edit("+element.id+")' href='javascript:;'  class='btn btn-xs btn-info' ><i class='icon-edit bigger-120'></i></a> <shiro:hasPermission name='userlist:delete'><a title='删除' href='javascript:;'  onclick='member_del(this,"+element.id+")' class='btn btn-xs btn-warning' ><i class='icon-trash  bigger-120'></i></a></shiro:hasPermission><shiro:lacksPermission name='userlist:delete'><a title='删除' href='javascript:;'  onclick='member_del(this,"+element.id+")' class='btn btn-xs btn-warning' disabled='disabled'><i class='icon-trash  bigger-120'></i></a></shiro:lacksPermission></td></tr>";
            }
        });
        $("#tbody").html(html);
    }

    function init(arr,rows){
        var html="";
        $.each(arr, function (index,element) {
            if (element.state==1) {
                state="正常"
            }
            if (element.state==0) {
                state="停用"
            }
            if(index>=0&&index<=rows-1){
                html+="<tr><td><label><input type='checkbox' class='ace'> <span class='lbl'></span></label></td>";
                html+="<td>"+element.username+"</td><td>"+element.name+"</td><td>"+element.age+"</td><td>"+element.tel+"</td><td>"+element.qq+"</td><td>"+element.post+"</td><td>"+element.roleName+"</td><td>"+element.addTime+"</td> <td class='td-status'><span class='label label-success radius'>"+state+"</span></td>";
                html+="<td class='td-manage'><a onClick='member_stop(this,"+element.id+")'  href='javascript:;' title='停用'  class='btn btn-xs btn-success'><i class='icon-ok bigger-120'></i></a> <a title='编辑' onclick='member_edit("+element.id+")' href='javascript:;'  class='btn btn-xs btn-info' ><i class='icon-edit bigger-120'></i></a> <shiro:hasPermission name='userlist:delete'><a title='删除' href='javascript:;'  onclick='member_del(this,"+element.id+")' class='btn btn-xs btn-warning' ><i class='icon-trash  bigger-120'></i></a></shiro:hasPermission><shiro:lacksPermission name='userlist:delete'><a title='删除' href='javascript:;'  onclick='member_del(this,"+element.id+")' class='btn btn-xs btn-warning' disabled='disabled'><i class='icon-trash  bigger-120'></i></a></shiro:lacksPermission></td></tr>";
            }
        });
        $("#tbody").html(html);
    }

    var initPagination = function(data,rows) {
        if(data.length!=0){
            $('.page').pagination({
                totalData: data.length,
                callback:pageselectCallback,
                showData: rows,
                jump: true,
                coping: true,
                homePage: '首页',
                endPage: '末页',
                prevContent: '上页',
                nextContent: '下页',
                isHide:true,
                mode: 'fixed',
                count:data.length
            },init(data,rows));
        }else{
            $("tbody").html("<tr><td colspan='8' style='text-align: center;'>没有查询到符合条件的数据</td></tr>");
            $(".page").hide();
            $("#reportTitle").html("表龄大于 "+MeterAge+"个月的水表");
            $("#count").html("共计0块水表");
        }

    }


</script>
