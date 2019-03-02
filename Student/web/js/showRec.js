var TableInit = function () {
    var oTableInit = new Object();
    //初始化Table
    oTableInit.Init = function () {
        $('#Table').bootstrapTable({

            url: 'data',         //请求后台的URL（*）

            method: 'post',                      //请求方式（*）

            // toolbar: '#toolbar',                //工具按钮用哪个容器

            striped: true,                      //是否显示行间隔色

            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）

            pagination: true,                   //是否显示分页（*）

            queryParams: oTableInit.queryParams,//传递参数（*）

            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）

            paginationPreText:'<',              //上一页按钮样式

            paginationNextText:'>',             //下一页按钮样式

            pageNumber: 1,                       //初始化加载第一页，默认第一页

            pageSize: 5,                       //每页的记录行数（*）

            pageList: [5],        //可供选择的每页的行数（*）

            contentType:"application/x-www-form-urlencoded",   //重要选项,必填

            showColumns: true,                  //是否显示所有的列

            showRefresh: true,                  //是否显示刷新按钮

            minimumCountColumns: 2,             //最少允许的列数

            clickToSelect: true,                //是否启用点击选中行

            //height: 700,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度

            uniqueId: "no",                     //每一行的唯一标识，一般为主键列

            //showToggle: true,                    //是否显示详细视图和列表视图的切换按钮

            cardView: true,                    //是否显示详细视图

            detailView: true,                   //是否显示父子表

            columns: [
                {
                    field: 'sno',
                    title: '学号'
                }, {

                    field: 'dno',
                    title: '宿舍号'
                }, {

                    field: 'btime',
                    title: '晚归时间'
                }, {

                    field: 'breason',
                    title: '晚归原因'
                }
            ]
            // rowStyle: function (row, index) {
            //
            //     var classesArr = ['success', 'info'];
            //
            //     var strclass = "";
            //
            //     if (index % 2 === 0) {//偶数行
            //
            //         strclass = classesArr[0];
            //
            //     } else {//奇数行
            //
            //         strclass = classesArr[1];
            //
            //     }
            //
            //     return {classes: strclass};
            //
            // },//隔行变色

        });


    };


    //得到查询的参数

    oTableInit.queryParams = function (params) {

        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: params.limit,    //params.limit,   页面大小
            offset: params.offset,
            per:"record"
        };



        return temp;
    };
    return oTableInit;
};