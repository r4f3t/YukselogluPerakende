<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zzzPrint.aspx.cs" Inherits="seyhandagitim.zzzPrint" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Yükseloğlu Filtre | Fatura</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.4 -->
    <link href="admin/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="admin/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body onload="window.print();">
    <div class="wrapper">
      <!-- Main content -->
      <section class="invoice">
        <!-- title row -->
        <div class="row">
          <div class="col-xs-12">
            <h2 class="page-header">
              <i class="fa fa-globe"></i> Yükseloğlu Filtre
              <small class="pull-right">Tarih :<%#DateTime.Now.ToString("dd/MM/yyyy") %></small>
            </h2>
          </div><!-- /.col -->
        </div>
        <!-- info row -->
        <div class="row invoice-info">
          <div class="col-sm-4 invoice-col">
            Kimden
            <address>
              <strong> Yükseloğlu Filtre</strong><br>
              Adres bilgisi<br>
              Seyhan / ADANA<br>
              Telefon: (804) 123-5432<br/>
              Email: 
            </address>
          </div><!-- /.col -->
          <div class="col-sm-4 invoice-col">
            Kime
            <address>
                <asp:Repeater ID="RPTCariAd" runat="server"><ItemTemplate>
              <strong><%#Eval("Cari_Adı") %></strong><br>
             Adres Bilgisi<br>
              <%#Eval("ADDR1") %><br>
              Telefon:<%#Eval("TELNRS1") %><br/>
              Vergi Dairesi:<%#Eval("TAXOFFICE") %>
                    </ItemTemplate></asp:Repeater>
            </address>
          </div><!-- /.col -->
          <div class="col-sm-4 invoice-col">
              <asp:Repeater ID="RPTFisBas" runat="server">
                  <ItemTemplate>
            <b>Fiş No: #<%#Eval("FICHENO") %></b><br/>
            <br/>
            <b>Sipariş No:</b> <%#Eval("FICHENO") %><br/>
            <b>Vade tarihi:</b> 2/22/2014<br/>
            <b>Hesap:</b> 
                      
                  </ItemTemplate>
              </asp:Repeater>
          </div><!-- /.col -->
        </div><!-- /.row -->

        <!-- Table row -->
        <div class="row">
          <div class="col-xs-12 table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Ürün Adı</th>
                  <th>Ürün Kodu</th>
                  <th>Br Fiyat</th>
                  <th>Adet</th>
                  <th>Satır Tutarı</th>
                </tr>
              </thead>
              <tbody>
                  <asp:Repeater ID="RPTURUNS" runat="server">
                      <ItemTemplate>
                <tr>
                  <td><%#Eval("UrunAd") %></td>
                  <td><%#Eval("CODE") %></td>
                  <td><%#Convert.ToDecimal(Eval("BFiyat")).ToString("N") %></td>
                  <td><%#Convert.ToDecimal(Eval("Miktar")).ToString("N") %></td>
                  <td><%#Convert.ToDecimal(Eval("TFiyat")).ToString("N") %></td>
                </tr>
                      </ItemTemplate>
                  </asp:Repeater>
        
                
              </tbody>
            </table>
          </div><!-- /.col -->
        </div><!-- /.row -->

        <div class="row">
          <!-- accepted payments column -->
          <div class="col-xs-6">
            <p class="lead">Ödeme Türleri:</p>
            <img src="admin/dist/img/credit/visa.png" alt="Visa" />
            <img src="admin/dist/img/credit/mastercard.png" alt="Mastercard" />
            <img src="admin/dist/img/credit/american-express.png" alt="American Express" />
            <img src="admin/dist/img/credit/paypal2.png" alt="Paypal" />
            <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
             
            </p>
          </div><!-- /.col -->
            <style>
                .sagalt {
                text-align:right;
                }
            </style>
          <div class="col-xs-6">
            <p class="lead"></p>
            <div class="table-responsive">
              <table class="table">
                  <asp:Repeater ID="RPTALTTOPLAMS" runat="server">
                      <ItemTemplate>
                <tr>
                  <th style="width:50%">Toplam:</th>
                  <td class="sagalt"><%#Convert.ToDecimal(Eval("Toplam")).ToString("#,##.##") %></td>
                </tr>
                <tr>
                  <th>İndirim</th>
                  <td class="sagalt"><%#Convert.ToDecimal(Eval("GenelI")).ToString("#,##.##") %></td>
                </tr>
                <tr>
                  <th>KDV (18%)</th>
                  <td class="sagalt"><%#Convert.ToDecimal(Eval("KDV")).ToString("#,##.##") %></td>
                </tr>
                <tr>
                  <th>KDVsiz Toplam:</th>
                  <td class="sagalt"><%#Convert.ToDecimal(Eval("LineTutar")).ToString("#,##.##") %></td>
                </tr>
                <tr>
                  <th>Genel Tutar:</th>
                  <td class="sagalt"><%#Convert.ToDecimal(Eval("KDVli")).ToString("#,##.##") %></td>
                </tr>
                  </ItemTemplate>
                  </asp:Repeater>
              </table>
            </div>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </section><!-- /.content -->
    </div><!-- ./wrapper -->

    <!-- AdminLTE App -->
    <script src="admin/dist/js/app.min.js" type="text/javascript"></script>
  </body>
</html>
