<%@ page language="java" import="java.util.*,com.cqu.financial.entity.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta name="generator" content="HTML Tidy for HTML5 (experimental) for Windows https://github.com/w3c/tidy-html5/tree/c63cc39" />
  <meta charset="UTF-8" />
  <link rel="stylesheet" href="/Financial/WebRoot/css/style.css" type="text/css" />
  <link rel="stylesheet" href="/Financial/WebRoot/css/min_css.css" />

  <title></title>
</head>

<body>
  <div class="container">
    <div class="row">
      <div class="picture-panel">
        <div class="pict"><img src="/Financial/WebRoot/image/bground.png" height="100%" width="100%" /></div>
      </div>

      <div class="login-panel">
        <div class="login-C">
          <div class="login-head">
            <h2 class="title-form">登录</h2>
          </div>

          <div class="panel-body">
              <fieldset>
              <form action="check.do" method="post" >
                <div class="form-group">
                  <input class="form-control" placeholder="请输入您的账号" name="userName" type="text"  />
                </div>

                <div class="form-group">
                  <input class="form-control" placeholder="请输入账号密码" name="userPass" type="password"  />
                </div>

                <div class="form-group">
                  <a class="form-control2">忘记密码？</a> <a href="Sign.html" class="form-control2">还没有账户？</a>
                </div><input type ="submit" value = "登录" class="btn" />
                </form>
              </fieldset>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
