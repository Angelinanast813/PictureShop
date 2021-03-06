<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>Вхід - Галерея</title>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/res/shop_assets/images/gallery-icon.png" sizes="16x16" type="image/png">
        <meta name="description" content="User login page" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

        <link rel="stylesheet" href="${pageContext.request.contextPath}/res/manage_assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/res/manage_assets/font-awesome/4.5.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/res/manage_assets/css/fonts.googleapis.com.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/res/manage_assets/css/ace.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/res/manage_assets/css/ace-part2.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/res/manage_assets/css/ace-rtl.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/res/manage_assets/css/ace-ie.min.css" />

        <script src="${pageContext.request.contextPath}/res/manage_assets/js/html5shiv.min.js"></script>
        <script src="${pageContext.request.contextPath}/res/manage_assets/js/respond.min.js"></script>
    </head>
    <body class="login-layout light-login">
        <div class="main-container">
            <div class="main-content">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                        <div class="login-container">
                            <div class="center">
                                <h1>
                                    <i class="ace-icon fa fa-leaf green"></i>
                                    <span class="red">Картинна</span>
                                    <span class="white" id="id-text2">галерея</span>
                                </h1>
                            </div>

                            <div class="space-6"></div>

                            <div class="position-relative">
                                <div id="login-box" class="login-box visible widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header blue lighter bigger">
                                                <i class="ace-icon fa fa-coffee green"></i>
                                                Введіть будь-ласка ваші дані
                                            </h4>

                                            <div class="space-6"></div>

                                            <form action="${pageContext.request.contextPath}/servlet/LoginServlet" method="post">
                                                <fieldset>
                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="text" class="form-control" placeholder="Ім'я користивача" name="username"/>
                                                            <i class="ace-icon fa fa-user"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="password" class="form-control" placeholder="Пароль" name="password"/>
                                                            <i class="ace-icon fa fa-lock"></i>
                                                        </span>
                                                    </label>

                                                    <div class="space"></div>

                                                    <div class="clearfix">
                                                        <label class="inline">
                                                            <input type="checkbox" class="ace" />
                                                            <span class="lbl"> Запам'ятати мене</span>
                                                        </label>

                                                        <button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
                                                            <i class="ace-icon fa fa-key"></i>
                                                            <span class="bigger-110">Увійти</span>
                                                        </button>
                                                    </div>

                                                    <div class="space-4"></div>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>