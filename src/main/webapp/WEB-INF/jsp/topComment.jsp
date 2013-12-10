<%@include file="/WEB-INF/jsp/header.jsp" %>
<html>
	<head>
		<%@include file="/WEB-INF/jsp/head-include.jsp" %>
		<title>Result!</title>
	</head>
	<body>
		<div class="container">
			<h1>Your guess</h1>
			<div class="col-md-12">
				<div class="bs-callout">
					${guess}
				</div>
			</div>
			<h1>Top post
				<small>
					<span class="reddit-ups">+${topComment.ups}</span>, <span class="reddit-downs">-${topComment.downs}</span> by <a href="http://reddit.com/u/${topComment.author}">/u/${topComment.author}</a>
				</small>
			</h1>
			<div class="col-md-12">
				<div class="bs-callout">
					<div class="markdownable highlight">${topComment.body}</div>
				</div>
			</div>
		</div>
		<%@include file="/WEB-INF/jsp/footer.jsp" %>
		<script type="text/javascript">
			$(document).ready(function() {
				var converter = new Showdown.converter();
				var html = converter.makeHtml($(".markdownable").text());
				$(".markdownable").html(html);
			});
		</script>
	</body>
</html>