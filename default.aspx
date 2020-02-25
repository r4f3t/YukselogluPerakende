<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="seyhandagitim.defo" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ADAGÜN DAĞITIM</title>
	<meta name="keywords" content="../">
	<meta name="description" content="../">
	<meta name="author" content="Adem Coşkun">
	<meta name="classification" content="web tasarım">
	<meta name="googlebot" content="All, Index, Follow" />
	<meta name="Robots" content="All, Index, Follow" />
	<meta name="revisit-after" content="7 days">
	<meta name="rating" content="General" />
	<meta name="expires" content="no" />
	<meta name="language" content="turkish, TR" />
	<meta name="distribution" content="Global" />
	<meta name="googlebot" content="NOODP" />
	<meta name="robots" content="all" />
	<meta name="robots" content="follow" />
	<meta name="robots" content="index" />
	<meta name="distribution" content="global" />
	<meta name="revisit-after" content="1 Day" />
	<meta http-equiv="Copyright" content="Copyright © webturkuaz.com">

	<!-- ============ Styles ============ -->
	<link rel="stylesheet" href="assets/styles/reset.css" type="text/css" />
	<link rel="stylesheet" href="assets/styles/custom.css" type="text/css" />
	<link rel="stylesheet" href="assets/font/font.css" type="text/css" />

	<!-- ============ Font-Awesome ============ -->
	<link rel="stylesheet" href="assets/styles/font-awesome.css" type="text/css" />

	<!-- ============ Mobil CSS ============ -->
	<link rel="stylesheet" href="assets/mobile/media-queries.css" type="text/css" />

	<!-- ============ Google Font ============ -->

	<!-- ============ Fav-Icon ============ -->
	<link rel="Shortcut Icon" href="assets/images/icons/fav_icon.png" type="image/x-icon">
    
    <!-- Scripts -->
	<script type="text/javascript" src="assets/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="assets/scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="assets/scripts/custom.js"></script>


    <!-- Add jQuery assetsrary -->
	<script type="text/javascript" src="assets/scripts/jquery-1.10.1.min.js"></script>

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="assets/scripts/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="assets/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="assets/source/jquery.fancybox.css?v=2.1.5" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="assets/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="assets/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="assets/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="assets/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="assets/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>

	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
			 *  Simple image gallery. Uses default settings
			 */

	        $('.fancybox').fancybox();

	        /*
			 *  Different effects
			 */

	        // Change title type, overlay closing speed
	        $(".fancybox-effects-a").fancybox({
	            helpers: {
	                title: {
	                    type: 'outside'
	                },
	                overlay: {
	                    speedOut: 0
	                }
	            }
	        });

	        // Disable opening and closing animations, change title type
	        $(".fancybox-effects-b").fancybox({
	            openEffect: 'none',
	            closeEffect: 'none',

	            helpers: {
	                title: {
	                    type: 'over'
	                }
	            }
	        });

	        // Set custom style, close if clicked, change title type and overlay color
	        $(".fancybox-effects-c").fancybox({
	            wrapCSS: 'fancybox-custom',
	            closeClick: true,

	            openEffect: 'none',

	            helpers: {
	                title: {
	                    type: 'inside'
	                },
	                overlay: {
	                    css: {
	                        'background': 'rgba(238,238,238,0.85)'
	                    }
	                }
	            }
	        });

	        // Remove padding, set opening and closing animations, close if clicked and disable overlay
	        $(".fancybox-effects-d").fancybox({
	            padding: 0,

	            openEffect: 'elastic',
	            openSpeed: 150,

	            closeEffect: 'elastic',
	            closeSpeed: 150,

	            closeClick: true,

	            helpers: {
	                overlay: null
	            }
	        });

	        /*
			 *  Button helper. Disable animations, hide close button, change title type and content
			 */

	        $('.fancybox-buttons').fancybox({
	            openEffect: 'none',
	            closeEffect: 'none',

	            prevEffect: 'none',
	            nextEffect: 'none',

	            closeBtn: false,

	            helpers: {
	                title: {
	                    type: 'inside'
	                },
	                buttons: {}
	            },

	            afterLoad: function () {
	                this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
	            }
	        });


	        /*
			 *  Thumbnail helper. Disable animations, hide close button, arrows and slide to next gallery item if clicked
			 */

	        $('.fancybox-thumbs').fancybox({
	            prevEffect: 'none',
	            nextEffect: 'none',

	            closeBtn: false,
	            arrows: false,
	            nextClick: true,

	            helpers: {
	                thumbs: {
	                    width: 50,
	                    height: 50
	                }
	            }
	        });

	        /*
			 *  Media helper. Group items, disable animations, hide arrows, enable media and button helpers.
			*/
	        $('.fancybox-media')
				.attr('rel', 'media-gallery')
				.fancybox({
				    openEffect: 'none',
				    closeEffect: 'none',
				    prevEffect: 'none',
				    nextEffect: 'none',

				    arrows: false,
				    helpers: {
				        media: {},
				        buttons: {}
				    }
				});

	        /*
			 *  Open manually
			 */

	        $("#fancybox-manual-a").click(function () {
	            $.fancybox.open('1_b.jpg');
	        });

	        $("#fancybox-manual-b").click(function () {
	            $.fancybox.open({
	                href: 'iframe.html',
	                type: 'iframe',
	                padding: 5
	            });
	        });

	        $("#fancybox-manual-c").click(function () {
	            $.fancybox.open([
					{
					    href: '1_b.jpg',
					    title: 'My title'
					}, {
					    href: '2_b.jpg',
					    title: '2nd title'
					}, {
					    href: '3_b.jpg'
					}
	            ], {
	                helpers: {
	                    thumbs: {
	                        width: 75,
	                        height: 50
	                    }
	                }
	            });
	        });


	    });
	</script>

	<!-- ============ Simple image gallery ============ -->
	<!-- <a class="fancybox" href="1_b.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="1_s.jpg" alt="" /></a> -->

	<!-- ============ Different effects ============ -->
	<!-- <a class="fancybox-effects-a" href="5_b.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit"><img src="5_s.jpg" alt="" /></a> -->

</head>
<body>

<!-- top_bg -->
<div class="top_bg">
	<!-- ortala -->
	<div class="ortala">
		<!-- logo -->
		<a href="index.html" class="logo">
			
           <img src="assets/images/logoson.png" width="124" height="95" alt="../"  />
		</a><!-- logo -->

		<!-- top_menu -->
		<div class="top_menu">
			<ul>
				<li><a href="default.aspx">Anasayfa</a></li>
				<li><span>|</span></li>
				<li><a href="about.aspx">Hakkımızda</a></li>
				<li><span>|</span></li>
				<li><a href="contact.aspx">İletişim</a></li>
			</ul>
		</div><!-- top_menu -->

		<!-- social_box -->
		<div class="social_box">
			<ul>
				<li>						   <a href="https://www.facebook.com/"><img src="assets/images/fb.png" width="34" height="34" alt="../" /></a></li>
				<li>						   <a href="https://twitter.com/"><img src="assets/images/tw.png" width="34" height="34" alt="../" /></a></li>
				<li style="margin-right: 0px;"><a href="https://plus.google.com/"><img src="assets/images/gm.png" width="34" height="34" alt="../" /></a></li>
			</ul>
		</div><!-- social_box -->

		<div class="clear"></div>

		<!-- menu -->
		<div class="menu">
			<ul>
				<li><a href="default.aspx">ANASAYFA</a></li>
				<li><a href="about.aspx">HAKKIMIZDA</a></li>
				
				<li><a href="contact.aspx">İLETİŞİM</a></li>
                <li><a href="login.aspx">B2B GİRİŞ</a></li>
			</ul>
			<a href="iletisim.html" class="menu_contact_bg">
			<h6>Bize Ulaşın</h6>
				<h1>0 322 654 23 58</h1>
			</a>
		</div><!-- menu -->
		<div class="menu_shadow"></div>
	</div><!-- ortala -->
</div><!-- top_bg -->
<!-- ============ include / header.html ============ -->

<!-- red_bg -->
<div class="red_bg">
	<!-- ortala -->
	<div class="ortala">
		<!-- slider_generic -->
		<div class="slider_generic">
			<!-- slider -->
			<div class="slider">
				<ul>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate><li><a href=""><img src="/sliders/<%#DataBinder.Eval(Container.DataItem, "ICERIK")%>" width="959" height="263" alt="AKGÜLLER TARIM" /></a></li></ItemTemplate>
                    </asp:Repeater>
				</ul>
			</div><!-- slider -->

			<!-- slider_swap -->
			<div class="slider_swap">
				<ul>
                     <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate><li></li></ItemTemplate>
                    </asp:Repeater>
				</ul>
			</div><!-- slider_swap -->
		</div><!-- slider_generic -->
		<div class="slider_generic_shadow"></div>
	</div><!-- ortala -->
</div><!-- red_bg -->

<!-- ortala -->
<div class="ortala">
	<!-- p_generic -->
	<div class="p_generic">
		<!-- p1_box -->
		<div class="p1_box">
			<h1>HAKKIMIZDA</h1> <div class="clear"></div>
			<a class="fancybox" href="about.aspx" title="HAKKIMIZDA">
				<img src="assets/images/hakkimizda2.jpg" alt="" />
			</a>
			<h2>
                <asp:Repeater ID="Repeater3" runat="server"><ItemTemplate><%#DataBinder.Eval(Container.DataItem, "ICERIK")%></ItemTemplate></asp:Repeater>
            ...
            </h2>
		</div><!-- p1_box -->

		<!-- p2_box --><!-- p2_box -->

		<!-- p2_box --><!-- p2_box -->
	</div><!-- p_generic -->

	<!-- p_generic_r -->
	<div class="p_generic_r">
		<!-- p3_box -->
	  <div class="p3_box">
			<h1>Referanslarımız</h1>
			<ul>
				<li><span></span><a href="">Deneme - referans-1</a></li>
				<li><span></span><a href="">Deneme - referans-2</a></li>
				<li><span></span><a href="">Deneme - referans-3</a></li>
				<li><span></span><a href="">Deneme </a></li>
				<li><span></span><a href="">Deneme </a></li>
				<li><span></span><a href="">Deneme</a></li>
			</ul>
		</div><!-- p3_box -->

		<!-- p3_box -->
		<div class="p3_box" style="background: transparent; margin-top: 20px">
			<h1>Etiketler</h1>
			<ul>
				<li><span></span><a href="">Tarım</a></li>
				<li><span></span><a href="">Buğday</a></li>
				<li><span></span><a href="">Akgüller</a></li>
				<li><span></span><a href="">Adana</a></li>				<li><span></span><a href="">Ziraat</a></li>

			</ul>
		</div><!-- p3_box -->
	</div><!-- p_generic_r -->

	<div class="clear"></div>
</div><!-- ortala -->

<!-- ============ include / footer.html ============ -->
<!-- footer_bg -->
<div class="footer_bg">
	<!-- ortala -->
	<div class="ortala">
		<div class="footer">
			<h1>&nbsp;</h1>
		</div>
	</div><!-- ortala -->
</div><!-- footer_bg -->

</body>
</html>
