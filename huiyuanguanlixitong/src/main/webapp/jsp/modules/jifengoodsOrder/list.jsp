<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">



<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">


    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <!-- layui -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
</head>
<style>

</style>
<body>




    <!-- Pre Loader -->
    <div class="loading">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>
<!--/Pre Loader -->
    <div class="wrapper">
        <!-- Page Content -->
        <div id="content">
            <!-- Top Navigation -->
            <%@ include file="../../static/topNav.jsp" %>
            <!-- Menu -->
            <div class="container menu-nav">
                <nav class="navbar navbar-expand-lg lochana-bg text-white">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="ti-menu text-white"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul id="navUl" class="navbar-nav mr-auto">
                        </ul>
                    </div>
                </nav>
            </div>
            <!-- /Menu -->
            <!-- Breadcrumb -->
            <!-- Page Title -->
            <div class="container mt-0">
                <div class="row breadcrumb-bar">
                    <div class="col-md-6">
                        <h3 class="block-title">积分商品管理</h3>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="${pageContext.request.contextPath}/index.jsp">
                                    <span class="ti-home"></span>
                                </a>
                            </li>
                            <li class="breadcrumb-item">积分商品管理</li>
                            <li class="breadcrumb-item active">积分商品列表</li>
                        </ol>
                    </div>
                </div>
            </div>
            <!-- /Page Title -->

            <!-- /Breadcrumb -->
            <!-- Main Content -->
            <div class="container">
                <div class="row">
                    <!-- Widget Item -->
                    <div class="col-md-12">
                        <div class="widget-area-2 lochana-box-shadow">
                            <h3 class="widget-title">积分商品列表</h3>
                            <div class="table-responsive mb-3">
                                <div class="col-sm-12">
                                                                                                                                                                                    
                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="huiyuanNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        手机号
                                        <div class="layui-input-inline">
                                            <input type="text" id="huiyuanPhoneSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="手机号" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        身份证号
                                        <div class="layui-input-inline">
                                            <input type="text" id="huiyuanIdNumberSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="身份证号" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                                                                                                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        商家
                                        <div class="layui-input-inline">
                                            <select name="shangjiaTypesSelectSearch"  style="width: 150px;" id="shangjiaTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                                                                                                                             
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        商品名字
                                        <div class="layui-input-inline">
                                            <input type="text" id="jifengoodsNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="商品名字" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        商品种类
                                        <div class="layui-input-inline">
                                            <select name="goodsTypesSelectSearch"  style="width: 150px;" id="goodsTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        商品数量
                                        <div class="layui-input-inline">
                                            <input type="text" id="jifengoodsNumberStartSearch" style="width: 100px;" class="form-control form-control-sm" onchange="jifengoodsNumberChickValue(this)"
                                                   placeholder="开始" aria-controls="tableId">
                                        </div>
                                    </div>
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        <div class="layui-input-inline">
                                            <input type="text" id="jifengoodsNumberEndSearch" style="width: 100px;" class="form-control form-control-sm" onchange="jifengoodsNumberChickValue(this)"
                                                   placeholder="结束" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                             
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        价值
                                        <div class="layui-input-inline">
                                            <input type="text" id="danjiaStartSearch" style="width: 100px;" class="form-control form-control-sm" onchange="danjiaChickValue(this)"
                                                   placeholder="开始" aria-controls="tableId">
                                        </div>
                                    </div>
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        <div class="layui-input-inline">
                                            <input type="text" id="danjiaEndSearch" style="width: 100px;" class="form-control form-control-sm" onchange="danjiaChickValue(this)"
                                                   placeholder="结束" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        所需积分
                                        <div class="layui-input-inline">
                                            <input type="text" id="suoxujifenStartSearch" style="width: 100px;" class="form-control form-control-sm" onchange="suoxujifenChickValue(this)"
                                                   placeholder="开始" aria-controls="tableId">
                                        </div>
                                    </div>
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        <div class="layui-input-inline">
                                            <input type="text" id="suoxujifenEndSearch" style="width: 100px;" class="form-control form-control-sm" onchange="suoxujifenChickValue(this)"
                                                   placeholder="结束" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                         
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--商家--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<select name="shangjiaTypesSelectSearch"  style="width: 150px;" id="shangjiaTypesSelectSearch" class="form-control form-control-sm"--%>
                                                    <%--aria-controls="tableId">--%>
                                            <%--</select>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                    
                                    <div class="layui-inline" style="margin-left: 30px;margin-bottom: 10px;">
                                        <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                        <button onclick="add()" type="button" class="btn btn-success 新增">添加</button>
                                        <button onclick="graph()" type="button" class="btn btn-success 报表">报表</button>
                                        <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                                    </div>
                                </div>
                                <table id="tableId" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th class="no-sort" style="min-width: 35px;">
                                            <div class="custom-control custom-checkbox">
                                                <input class="custom-control-input" type="checkbox" id="select-all"
                                                       onclick="chooseAll()">
                                                <label class="custom-control-label" for="select-all"></label>
                                            </div>
                                        </th>

                                        <th >姓名</th>
                                        <th >手机号</th>
                                        <th >身份证号</th>
                                        <th >余额</th>
                                        <th >积分</th>
                                        <th >性别</th>
                                        <th >头像</th>
                                        <th >商家</th>
                                        <th >商品名字</th>
                                        <th >商品种类</th>
                                        <th >商品数量</th>
                                        <th >商品图片</th>
                                        <th >单位</th>
                                        <th >价值</th>
                                        <th >所需积分</th>
                                        <th >商品详情</th>
                                        <%--<th >商家</th>--%>


                                        <th >兑换时间</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="thisTbody">
                                    </tbody>
                                </table>
                                <div class="col-md-6 col-sm-3">
                                    <div class="dataTables_length" id="tableId_length">

                                        <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                                onchange="changePageSize()">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select>
                                        条 每页

                                    </div>
                                </div>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">
                                        <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                            <a class="page-link" href="#" tabindex="-1">上一页</a>
                                        </li>

                                        <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                            <a class="page-link" href="#">下一页</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <!-- /Widget Item -->
                </div>
            </div>
            <!-- /Main Content -->

        </div>
        <!-- /Page Content -->
    </div>
    <!-- Back to Top -->
    <a id="back-to-top" href="#" class="back-to-top">
        <span class="ti-angle-up"></span>
    </a>
    <!-- /Back to Top -->
    <%@ include file="../../static/foot.jsp" %>
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
    <script>

        <%@ include file="../../utils/menu.jsp"%>
        <%@ include file="../../static/setMenu.js"%>
        <%@ include file="../../utils/baseUrl.jsp"%>
        <%@ include file="../../static/getRoleButtons.js"%>
        <%@ include file="../../static/crossBtnControl.js"%>
        var tableName = "jifengoodsOrder";
        var pageType = "list";
        var searchForm = {key: ""};
        var pageIndex = 1;
        var pageSize = 10;
        var totalPage = 0;
        var dataList = [];
        var sortColumn = '';
        var sortOrder = '';
        var ids = [];
        var checkAll = false;

        <!-- 级联表的级联字典表 -->
        var shangjiaTypesOptions = [];
        var goodsTypesOptions = [];
        var shangjiaTypesOptions = [];

        <!-- 本表的级联字段表 -->

        function init() {
            // 满足条件渲染提醒接口
        }

        // 改变每页记录条数
        function changePageSize() {
            var selection = document.getElementById('selectPageSize');
            var index = selection.selectedIndex;
            pageSize = selection.options[index].value;
            getDataList();
        }



        // 查询
        function search() {
            searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                         
                            //姓名
            var huiyuanNameSearchInput = $('#huiyuanNameSearch');
            if( huiyuanNameSearchInput != null){
                if (huiyuanNameSearchInput.val() != null && huiyuanNameSearchInput.val() != '') {
                    searchForm.huiyuanName = $('#huiyuanNameSearch').val();
                }
            }
                     
                            //手机号
            var huiyuanPhoneSearchInput = $('#huiyuanPhoneSearch');
            if( huiyuanPhoneSearchInput != null){
                if (huiyuanPhoneSearchInput.val() != null && huiyuanPhoneSearchInput.val() != '') {
                    searchForm.huiyuanPhone = $('#huiyuanPhoneSearch').val();
                }
            }
                     
                            //身份证号
            var huiyuanIdNumberSearchInput = $('#huiyuanIdNumberSearch');
            if( huiyuanIdNumberSearchInput != null){
                if (huiyuanIdNumberSearchInput.val() != null && huiyuanIdNumberSearchInput.val() != '') {
                    searchForm.huiyuanIdNumber = $('#huiyuanIdNumberSearch').val();
                }
            }
                                                                                                     
            var shangjiaTypesSelectSearchInput = document.getElementById("shangjiaTypesSelectSearch");
            if(shangjiaTypesSelectSearchInput != null){
                var shangjiaTypesIndex = shangjiaTypesSelectSearchInput.selectedIndex;
                if( shangjiaTypesIndex  != 0){
                    searchForm.shangjiaTypes = document.getElementById("shangjiaTypesSelectSearch").options[shangjiaTypesIndex].value;
                }
            }
                                                             
                            //商品名字
            var jifengoodsNameSearchInput = $('#jifengoodsNameSearch');
            if( jifengoodsNameSearchInput != null){
                if (jifengoodsNameSearchInput.val() != null && jifengoodsNameSearchInput.val() != '') {
                    searchForm.jifengoodsName = $('#jifengoodsNameSearch').val();
                }
            }
                     
            var goodsTypesSelectSearchInput = document.getElementById("goodsTypesSelectSearch");
            if(goodsTypesSelectSearchInput != null){
                var goodsTypesIndex = goodsTypesSelectSearchInput.selectedIndex;
                if( goodsTypesIndex  != 0){
                    searchForm.goodsTypes = document.getElementById("goodsTypesSelectSearch").options[goodsTypesIndex].value;
                }
            }
                     
                                //商品数量
            var jifengoodsNumberStartSearchInput = $('#jifengoodsNumberStartSearch');
            if(jifengoodsNumberStartSearchInput != null){
                var jifengoodsNumberStartSearchValue = jifengoodsNumberStartSearchInput.val();
                if( jifengoodsNumberStartSearchValue  != 0){
                    searchForm.jifengoodsNumberStart = jifengoodsNumberStartSearchValue;
                }
            }
            var jifengoodsNumberEndSearchInput = $('#jifengoodsNumberEndSearch');
            if(jifengoodsNumberEndSearchInput != null){
                var jifengoodsNumberEndSearchValue = jifengoodsNumberEndSearchInput.val();
                if( jifengoodsNumberEndSearchValue  != 0){
                    searchForm.jifengoodsNumberEnd = jifengoodsNumberEndSearchValue;
                }
            }
                                                             
                        //价值
            var danjiaStartSearchInput = $('#danjiaStartSearch');
            if(danjiaStartSearchInput != null){
                var danjiaStartSearchValue = danjiaStartSearchInput.val();
                if( danjiaStartSearchValue  != 0){
                    searchForm.danjiaStart = danjiaStartSearchValue;
                }
            }
            var danjiaEndSearchInput = $('#danjiaEndSearch');
            if(danjiaEndSearchInput != null){
                var danjiaEndSearchValue = danjiaEndSearchInput.val();
                if( danjiaEndSearchValue  != 0){
                    searchForm.danjiaEnd = danjiaEndSearchValue;
                }
            }
                     
                        //所需积分
            var suoxujifenStartSearchInput = $('#suoxujifenStartSearch');
            if(suoxujifenStartSearchInput != null){
                var suoxujifenStartSearchValue = suoxujifenStartSearchInput.val();
                if( suoxujifenStartSearchValue  != 0){
                    searchForm.suoxujifenStart = suoxujifenStartSearchValue;
                }
            }
            var suoxujifenEndSearchInput = $('#suoxujifenEndSearch');
            if(suoxujifenEndSearchInput != null){
                var suoxujifenEndSearchValue = suoxujifenEndSearchInput.val();
                if( suoxujifenEndSearchValue  != 0){
                    searchForm.suoxujifenEnd = suoxujifenEndSearchValue;
                }
            }
                                         
            var shangjiaTypesSelectSearchInput = document.getElementById("shangjiaTypesSelectSearch");
            if(shangjiaTypesSelectSearchInput != null){
                var shangjiaTypesIndex = shangjiaTypesSelectSearchInput.selectedIndex;
                if( shangjiaTypesIndex  != 0){
                    searchForm.shangjiaTypes = document.getElementById("shangjiaTypesSelectSearch").options[shangjiaTypesIndex].value;
                }
            }
                        <!-- 本表的查询条件 -->

                                getDataList();
        }

        // 获取数据列表
        function getDataList() {
            http("jifengoodsOrder/page", "GET", {
                page: pageIndex,
                limit: pageSize,
                sort: sortColumn,
                order: sortOrder,
                //本表的
            //级联表的
                huiyuanName: searchForm.huiyuanName,
                huiyuanPhone: searchForm.huiyuanPhone,
                huiyuanIdNumber: searchForm.huiyuanIdNumber,
                shangjiaTypes: searchForm.shangjiaTypes,

                jifengoodsName: searchForm.jifengoodsName,
                goodsTypes: searchForm.goodsTypes,
                jifengoodsNumberStart: searchForm.jifengoodsNumberStart,
                jifengoodsNumberEnd: searchForm.jifengoodsNumberEnd,
                danjiaStart: searchForm.danjiaStart,
                danjiaEnd: searchForm.danjiaEnd,
                suoxujifenStart: searchForm.suoxujifenStart,
                suoxujifenEnd: searchForm.suoxujifenEnd,
                shangjiaTypes: searchForm.shangjiaTypes,


            }, (res) => {
                if(res.code == 0) {
                    clear();
                    $("#thisTbody").html("");
                    dataList = res.data.list;
                    totalPage = res.data.totalPage;
                    for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                        var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                        $('#thisTbody').append(trow);
                    }
                    pagination(); //渲染翻页组件
                    getRoleButtons();// 权限按钮控制
                }
            });
        }

        // 渲染表格数据
        function setDataRow(item, number) {
            //创建行 
            var row = document.createElement('tr');
            row.setAttribute('class', 'useOnce');
            //创建勾选框
            var checkbox = document.createElement('td');
            var checkboxDiv = document.createElement('div');
            checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
            var checkboxInput = document.createElement('input');
            checkboxInput.setAttribute("class", "custom-control-input");
            checkboxInput.setAttribute("type", "checkbox");
            checkboxInput.setAttribute('name', 'chk');
            checkboxInput.setAttribute('value', item.id);
            checkboxInput.setAttribute("id", number);
            checkboxDiv.appendChild(checkboxInput);
            var checkboxLabel = document.createElement('label');
            checkboxLabel.setAttribute("class", "custom-control-label");
            checkboxLabel.setAttribute("for", number);
            checkboxDiv.appendChild(checkboxLabel);
            checkbox.appendChild(checkboxDiv);
            row.appendChild(checkbox)


                    //姓名
            var huiyuanNameCell = document.createElement('td');
            huiyuanNameCell.innerHTML = item.huiyuanName;
            row.appendChild(huiyuanNameCell);


                    //手机号
            var huiyuanPhoneCell = document.createElement('td');
            huiyuanPhoneCell.innerHTML = item.huiyuanPhone;
            row.appendChild(huiyuanPhoneCell);


                    //身份证号
            var huiyuanIdNumberCell = document.createElement('td');
            huiyuanIdNumberCell.innerHTML = item.huiyuanIdNumber;
            row.appendChild(huiyuanIdNumberCell);


                    //余额
            var newMoneyCell = document.createElement('td');
            newMoneyCell.innerHTML = item.newMoney;
            row.appendChild(newMoneyCell);


                    //积分
            var jifenCell = document.createElement('td');
            jifenCell.innerHTML = item.jifen;
            row.appendChild(jifenCell);

                        //性别
            var sexTypesCell = document.createElement('td');
            sexTypesCell.innerHTML = item.sexValue;
            row.appendChild(sexTypesCell);


                //头像
            var huiyuanPhotoCell = document.createElement('td');
            var huiyuanPhotoImg = document.createElement('img');
            var huiyuanPhotoImgValue = item.huiyuanPhoto;
            if(huiyuanPhotoImgValue !=null && huiyuanPhotoImgValue !='' && huiyuanPhotoImgValue !='null'){
                    huiyuanPhotoImg.setAttribute('src', huiyuanPhotoImgValue);
                    huiyuanPhotoImg.setAttribute('height', 100);
                    huiyuanPhotoImg.setAttribute('width', 100);
                    huiyuanPhotoCell.appendChild(huiyuanPhotoImg);
            }else{
                    huiyuanPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(huiyuanPhotoCell);

                        //商家
            var shangjiaTypesCell = document.createElement('td');
            shangjiaTypesCell.innerHTML = item.shangjiaValue;
            row.appendChild(shangjiaTypesCell);


                    //商品名字
            var jifengoodsNameCell = document.createElement('td');
            jifengoodsNameCell.innerHTML = item.jifengoodsName;
            row.appendChild(jifengoodsNameCell);

                        //商品种类
            var goodsTypesCell = document.createElement('td');
            goodsTypesCell.innerHTML = item.goodsValue;
            row.appendChild(goodsTypesCell);

                        //商品数量
            var jifengoodsNumberCell = document.createElement('td');
            jifengoodsNumberCell.innerHTML = item.jifengoodsNumber;
            row.appendChild(jifengoodsNumberCell);


                //商品图片
            var jifengoodsPhotoCell = document.createElement('td');
            var jifengoodsPhotoImg = document.createElement('img');
            var jifengoodsPhotoImgValue = item.jifengoodsPhoto;
            if(jifengoodsPhotoImgValue !=null && jifengoodsPhotoImgValue !='' && jifengoodsPhotoImgValue !='null'){
                    jifengoodsPhotoImg.setAttribute('src', jifengoodsPhotoImgValue);
                    jifengoodsPhotoImg.setAttribute('height', 100);
                    jifengoodsPhotoImg.setAttribute('width', 100);
                    jifengoodsPhotoCell.appendChild(jifengoodsPhotoImg);
            }else{
                    jifengoodsPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(jifengoodsPhotoCell);


                    //单位
            var danweiCell = document.createElement('td');
            danweiCell.innerHTML = item.danwei;
            row.appendChild(danweiCell);


                    //价值
            var danjiaCell = document.createElement('td');
            danjiaCell.innerHTML = item.danjia;
            row.appendChild(danjiaCell);


                    //所需积分
            var suoxujifenCell = document.createElement('td');
            suoxujifenCell.innerHTML = item.suoxujifen;
            row.appendChild(suoxujifenCell);


                    //商品详情
            var jifengoodsContentCell = document.createElement('td');
            //如果图文详情包含图片
            if (item.jifengoodsContent && item.jifengoodsContent.indexOf('img') != -1) {
                //暂时只考虑图片+文字 和 文字+图片的情况
                var beginIndex = item.jifengoodsContent.indexOf('<img');
                var endIndex = item.jifengoodsContent.indexOf('>');
                    jifengoodsContentCell.innerHTML = item.jifengoodsContent.substring(beginIndex, endIndex + 1).replace("img", "img width='100' height='100'");
            } else {
                if (item.jifengoodsContent != null && item.jifengoodsContent != "" && item.jifengoodsContent.length >= 11) {
                        jifengoodsContentCell.innerHTML = item.jifengoodsContent.substring(0, 10) + "...";
                } else {
                        jifengoodsContentCell.innerHTML = item.jifengoodsContent;
                }
            }
            row.appendChild(jifengoodsContentCell);

            //             //商家
            // var shangjiaTypesCell = document.createElement('td');
            // shangjiaTypesCell.innerHTML = item.shangjiaValue;
            // row.appendChild(shangjiaTypesCell);



            //兑换时间
            var insertTimeCell = document.createElement('td');
            insertTimeCell.innerHTML = item.insertTime;
            row.appendChild(insertTimeCell);



            //每行按钮
            var btnGroup = document.createElement('td');

            //详情按钮
            var detailBtn = document.createElement('button');
            var detailAttr = "detail(" + item.id + ')';
            detailBtn.setAttribute("type", "button");
            detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
            detailBtn.setAttribute("onclick", detailAttr);
            detailBtn.innerHTML = "查看";
            btnGroup.appendChild(detailBtn);

            // //查看订单详情
            // var detailListBtn = document.createElement('button');
            // var detailListAttr = "getId(" + item.id+')';
            // detailListBtn.setAttribute("type", "button");
            // detailListBtn.setAttribute("class", "btn btn-info btn-sm 查看");
            // detailListBtn.setAttribute("onclick", detailListAttr);
            // detailListBtn.innerHTML = "查看列表详情";
            // btnGroup.appendChild(detailListBtn);

            //修改按钮
            var editBtn = document.createElement('button');
            var editAttr = 'edit(' + item.id + ')';
            editBtn.setAttribute("type", "button");
            editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
            editBtn.setAttribute("onclick", editAttr);
            editBtn.innerHTML = "修改";
            btnGroup.appendChild(editBtn);

            //删除按钮
            var deleteBtn = document.createElement('button');
            var deleteAttr = 'remove(' + item.id + ')';
            deleteBtn.setAttribute("type", "button");
            deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
            deleteBtn.setAttribute("onclick", deleteAttr);
            deleteBtn.innerHTML = "删除";
            btnGroup.appendChild(deleteBtn);
            row.appendChild(btnGroup);

            return row;
    }


        // 翻页
        function pageNumChange(val) {
            if (val == 'pre') {
                pageIndex--;
            } else if (val == 'next') {
                pageIndex++;
            } else {
                pageIndex = val;
            }
            getDataList();
        }

        // 下载
        function download(url) {
            window.open(url);
        }
        // 打开新窗口播放媒体
        function mediaPlay(url){
            window.open(url);
        }

        // 渲染翻页组件
        function pagination() {
            var beginIndex = pageIndex;
            var endIndex = pageIndex;
            var point = 4;
            //计算页码
            for (var i = 0; i < 3; i++) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            for (var i = 0; i < 3; i++) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--;
            }
            if (point > 0) {
                while (point > 0) {
                    if (endIndex == totalPage) {
                        break;
                    }
                    endIndex++;
                    point--;
                }
                while (point > 0) {
                    if (beginIndex == 1) {
                        break;
                    }
                    beginIndex--;
                    point--
                }
            }
            // 是否显示 前一页 按钮
            if (pageIndex > 1) {
                $('#tableId_previous').show();
            } else {
                $('#tableId_previous').hide();
            }
            // 渲染页码按钮
            for (var i = beginIndex; i <= endIndex; i++) {
                var pageNum = document.createElement('li');
                pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
                if (pageIndex == i) {
                    pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
                } else {
                    pageNum.setAttribute('class', 'paginate_button page-item useOnce');
                }
                var pageHref = document.createElement('a');
                pageHref.setAttribute('class', 'page-link');
                pageHref.setAttribute('href', '#');
                pageHref.setAttribute('aria-controls', 'tableId');
                pageHref.setAttribute('data-dt-idx', i);
                pageHref.setAttribute('tabindex', 0);
                pageHref.innerHTML = i;
                pageNum.appendChild(pageHref);
                $('#tableId_next').before(pageNum);
            }
            // 是否显示 下一页 按钮
            if (pageIndex < totalPage) {
                $('#tableId_next').show();
                $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
            } else {
                $('#tableId_next').hide();
            }
            var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
            $('#tableId_info').html(pageNumInfo);
        }

        // 跳转到指定页
        function toThatPage() {
            //var index = document.getElementById('pageIndexInput').value;
            if (index < 0 || index > totalPage) {
                alert('请输入正确的页码');
            } else {
                pageNumChange(index);
            }
        }

        // 全选/全不选
        function chooseAll() {
            checkAll = !checkAll;
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                boxs[i].checked = checkAll;
            }
        }

        // 批量删除
        function deleteMore() {
            ids = []
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                if (boxs[i].checked) {
                    ids.push(boxs[i].value)
                }
            }
            if (ids.length == 0) {
                alert('请勾选要删除的记录');
            } else {
                remove(ids);
            }
        }

        // 删除
        function remove(id) {
            var mymessage = confirm("真的要删除吗？");
            if (mymessage == true) {
                var paramArray = [];
                if (id == ids) {
                    paramArray = id;
                } else {
                    paramArray.push(id);
                }
                httpJson("jifengoodsOrder/delete", "POST", paramArray, (res) => {
                    if(res.code == 0){
                        getDataList();
                        alert('删除成功');
                    }
                });
            } else {
                alert("已取消操作");
            }
        }

        // 用户登出
        <%@ include file="../../static/logout.jsp"%>

        //修改
        function edit(id) {
            window.sessionStorage.setItem('updateId', id)
            window.location.href = "add-or-update.jsp"
        }

        //清除会重复渲染的节点
        function clear() {
            var elements = document.getElementsByClassName('useOnce');
            for (var i = elements.length - 1; i >= 0; i--) {
                elements[i].parentNode.removeChild(elements[i]);
            }
        }

        //添加
        function add() {
            window.sessionStorage.setItem("addjifengoodsOrder", "addjifengoodsOrder");
            window.location.href = "add-or-update.jsp"
        }

        //报表
        function graph() {
            window.location.href = "graph.jsp"
        }

        // 查看详情
        function detail(id) {
            window.sessionStorage.setItem("updateId", id);
            window.location.href = "info.jsp";
        }

    //填充级联表搜索下拉框
                                         
                     
                     
                                                                                                     
        function shangjiaTypesSelectSearch() {
            var shangjiaTypesSelectSearch = document.getElementById('shangjiaTypesSelectSearch');
            if(shangjiaTypesSelectSearch != null) {
                shangjiaTypesSelectSearch.add(new Option('-请选择-',''));
                if (shangjiaTypesOptions != null && shangjiaTypesOptions.length > 0){
                    for (var i = 0; i < shangjiaTypesOptions.length; i++) {
                            shangjiaTypesSelectSearch.add(new Option(shangjiaTypesOptions[i].indexName, shangjiaTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                                                             
                     
        function goodsTypesSelectSearch() {
            var goodsTypesSelectSearch = document.getElementById('goodsTypesSelectSearch');
            if(goodsTypesSelectSearch != null) {
                goodsTypesSelectSearch.add(new Option('-请选择-',''));
                if (goodsTypesOptions != null && goodsTypesOptions.length > 0){
                    for (var i = 0; i < goodsTypesOptions.length; i++) {
                            goodsTypesSelectSearch.add(new Option(goodsTypesOptions[i].indexName, goodsTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                     
                                                             
                     
                                         
        function shangjiaTypesSelectSearch() {
            var shangjiaTypesSelectSearch = document.getElementById('shangjiaTypesSelectSearch');
            if(shangjiaTypesSelectSearch != null) {
                shangjiaTypesSelectSearch.add(new Option('-请选择-',''));
                if (shangjiaTypesOptions != null && shangjiaTypesOptions.length > 0){
                    for (var i = 0; i < shangjiaTypesOptions.length; i++) {
                            shangjiaTypesSelectSearch.add(new Option(shangjiaTypesOptions[i].indexName, shangjiaTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                    
    //填充本表搜索下拉框
                    
    //查询级联表搜索条件所有列表
            function shangjiaTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=shangjia_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        shangjiaTypesOptions = res.data.list;
                    }
                });
            }
            function goodsTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=goods_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        goodsTypesOptions = res.data.list;
                    }
                });
            }
            function shangjiaTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=shangjia_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        shangjiaTypesOptions = res.data.list;
                    }
                });
            }

    //查询当前表搜索条件所有列表




        $(document).ready(function () {
            //激活翻页按钮
            $('#tableId_previous').attr('class', 'paginate_button page-item previous')
            $('#tableId_next').attr('class', 'paginate_button page-item next')
            //隐藏原生搜索框
            $('#tableId_filter').hide()
            //设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
            //设置项目名
            $('.sidebar-header h3 a').html(projectName)
            setMenu();
            init();

            //查询级联表的搜索下拉框
            shangjiaTypesSelect();
            goodsTypesSelect();
            shangjiaTypesSelect();

            //查询当前表的搜索下拉框
            getDataList();

        //级联表的下拉框赋值
                                                 
                         
                         
                                                                                                                         
            shangjiaTypesSelectSearch();
                                                                         
                         
            goodsTypesSelectSearch();
                         
                                                                         
                         
                                                 
            shangjiaTypesSelectSearch();
                        
        //当前表的下拉框赋值
                                                            
        <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>