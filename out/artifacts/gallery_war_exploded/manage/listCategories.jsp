<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/manage/commons/header.jsp"%>
<div class="main-content" style="width: 100%">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="${pageContext.request.contextPath}/manage/">Головна</a>
                </li>

                <li>
                    <a href="#">Категорія</a>
                </li>
                <li class="active">Список категорій</li>
            </ul>

            <div class="nav-search" id="nav-search">
                <form class="form-search">
                    <span class="input-icon">
                        <input type="text" placeholder="Пошук ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                        <i class="ace-icon fa fa-search nav-search-icon"></i>
                    </span>
                </form>
            </div>
        </div>

        <div class="page-content">
            <div class="page-header">
                <h1>
                    Список категорій
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        Всі категорії
                    </small>
                </h1>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <c:if test="${empty cs}">
    	<h2><fmt:message key="dashboard.nocategory" />，<a href="${pageContext.request.contextPath}/manage/addCategory.jsp">Додати категорію</a></h2>
    </c:if>
    <c:if test="${!empty cs}">
    	<table class="table  table-bordered table-hover">
    		<tr>
    			<Th> Обрати </th>
     <Th> Номер </th>
     <Th> Назва </th>
     <Th> Опис </th>
     <Th> Управління </th>
    		</tr>
    		<c:forEach items="${cs}" var="c" varStatus="vs">
    			<tr class="${vs.index%2==0?'even':'odd'}">
	    			<td>
	    				<input type="checkbox" name="ids" value="${c.id}"/>
	    			</td>
	    			<td>${vs.count}</td>
	    			<td>${c.name}</td>
	    			<td>${c.des}</td>
	    			<td>
	    				[<a href="${pageContext.request.contextPath}/servlet/ManageServlet?op=editCategoryUI&categoryId=${c.id}">Редагувати</a>]
	    				[<a href="" onclick="del(this)">Видалити</a>]
	    			</td>
	    		</tr>
    		</c:forEach>
    	</table>
    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
     <script type="text/javascript" src="${pageContext.request.contextPath}/res/manage_assets/js/jquery-1.11.3.js"  ></script>
     <script type="text/javascript">
			function del(obj){
				var Vname=$(obj).parent().prev().prev().text();
    			$.post("${pageContext.request.contextPath}/servlet/ManageServlet",{op:'delCategory',name:Vname},function(data){
					
					
				});
			}
	</script>
<%@ include file="/manage/commons/footer.jsp"%>