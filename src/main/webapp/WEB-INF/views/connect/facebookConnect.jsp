<html>
	<head>
		<title>Hello Facebook</title>
	</head>
	<body>
		<h3>Connect to Facebook</h3>
		
		<form action="./facebook" method="POST">
		<input type="hidden" name="scope" value="email,publish_stream,user_photos,offline_access" />
			<div class="formInfo">
				<p>You aren't connected to Facebook yet. Click the button to connect Spring Social Showcase with your Facebook account.</p>
			</div>
			<p><button type="submit">Connect to Facebook</button></p>
		</form>
	</body>
</html>