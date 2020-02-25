<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="seyhandagitim.login" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>V20170822Yükseloğlu Filtre | B2B Sistem Girişi</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.4 -->
    <link href="admin/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="admin/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="admin/plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="#"><b>Yükseloğlu</b>Filtre</a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Sizde Sisteme Giriş Yaparak Ticarete Başlayın...</p>
						<form id="loginform" runat="server">
						
           <div class="form-group has-feedback">
            <input id="text1" runat="server" type="search" class="form-control" placeholder="Kullanıcı Adı" />
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input id="text2" runat="server" type="password" class="form-control" placeholder="Şifre" />
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-8">
              <div class="checkbox icheck" style="margin-left:20px">
                <label>
                  <input type="checkbox"> Beni Hatırla
                </label>
              </div>
            </div><!-- /.col -->
            <div class="col-xs-4">
             <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="Giriş" />  
             </div><!-- /.col -->
          </div>

   <div class="social-auth-links text-center">
          <p>- YADA -</p>
           
               <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" class="btn btn-block btn-social btn-facebook btn-flat a fa-facebook" Text="Facebook İle Başlayın..." />

          <a href="#" class="btn btn-block btn-social btn-google-plus btn-flat"><i class="fa fa-google-plus"></i>Gmail İle Giriş Yapın(Yakın Zamanda!!!)</a>
        </div><!-- /.social-auth-links -->

						 </form>
				
          

     
     

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.4 -->
    <script src="../../plugins/jQuery/jQuery-2.1.4.min.js" type="text/javascript"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="../../plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <script>
        $(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' // optional
            });
        });
    </script>
  </body>
</html>