<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container text-center">
		<div class="row">
			<div class="col-sm-3 well ">
				<div class="well" data-ng-init="profileimage()"
					data-ng-controller="ProfileImage">
					<p>
						<a href="#">My Profile</a>
					</p>
					<img data-ng-src="data:image/JPEG;base64,{{img}}"
						class="img-circle" height="65px" width="65px">
				</div>
				<div class="thumbnail">
					<a data-toggle="tab" href="#home" class="active">Home</a> || <a
						data-toggle="tab" href="#settings">Settings</a>
				</div>
			</div>

			<div class="col-sm-9">
				<div class="tab-content">
					<div id="home" class="tab-pane fade in active">
						<%@include file="/WEB-INF/views/Wall.jsp"%>
					</div>
					<div id="settings" class="tab-pane fade">
						<div>
							<input type="file" class=" btn btn-default" id="file" name="file"
							onchange="angular.element(this).scope().uploadFile(this.files)">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/resources/js/AngularControllers/Profile.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/AngularControllers/Settings.js"></script>
</body>
</html>

