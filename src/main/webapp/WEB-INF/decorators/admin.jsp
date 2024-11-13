<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix ="c" uri = "jakarta.tags.core" %>
    <c:url value="/" var="URL" > </c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Metronic Shop UI</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<meta content="Metronic Shop UI description" name="description">
<meta content="Metronic Shop UI keywords" name="keywords">
<meta content="keenthemes" name="author">

<meta property="og:site_name" content="-CUSTOMER VALUE-">
<meta property="og:title" content="-CUSTOMER VALUE-">
<meta property="og:description" content="-CUSTOMER VALUE-">
<meta property="og:type" content="website">
<meta property="og:image" content="-CUSTOMER VALUE-">
<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">

<link rel="shortcut icon" href="favicon.ico">

<!-- Fonts START -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all"
	rel="stylesheet" type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all"
	rel="stylesheet" type="text/css">
<!--- fonts for slider on the index page -->
<!-- Fonts END -->

<!-- Global styles START -->
<link
	href="${URL}assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${URL}assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Global styles END -->



<!-- Theme styles START -->
<link href="${URL}assets/global/css/components.css" rel="stylesheet">
<link href="${URL}assets/frontend/layout/css/style.css" rel="stylesheet">
<link href="${URL}assets/frontend/pages/css/style-shop.css"
	rel="stylesheet" type="text/css">
<link href="${URL}assets/frontend/pages/css/style-layer-slider.css"
	rel="stylesheet">
<link href="${URL}assets/frontend/layout/css/style-responsive.css"
	rel="stylesheet">
<link href="${URL}assets/frontend/layout/css/themes/red.css"
	rel="stylesheet" id="style-color">
<link href="${URL}assets/frontend/layout/css/custom.css"
	rel="stylesheet">
	<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="${URL}/assets/global/plugins/select2/select2.css"/>
<link rel="stylesheet" type="text/css" href="${URL}/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
<!-- END PAGE LEVEL STYLES -->
<!-- Theme styles END -->
</head>
<body class="ecommerce">
<!-- Begin Header -->
	<%@ include file="/common/admin/header.jsp"%>
	<!-- End Header -->
	
</script>
	<div class="main">
		<div class="container">

			<!-- Begin Content -->
			<sitemesh:write property="body" />
			<!-- End Content --z>

		</div>
	</div>

	<br/>
	<!-- Begin footer -->
	<%@ include file="/common/admin/footer.jsp"%>
	<!-- End footer -->
	
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="${URL}/assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="${URL}/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${URL}/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<script src="${URL}/assets/admin/pages/scripts/table-managed.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
	

	
	<script >
	jQuery(document).ready(function() {       
		   Metronic.init(); // init metronic core components
			Layout.init(); // init current layout
			Demo.init(); // init demo features
		   TableManaged.init();
			EcommerceIndex.init();
		});
	</script>
</body>
</html>