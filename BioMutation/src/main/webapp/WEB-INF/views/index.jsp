<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BLAST++: Basic Local Alignment Search Tool (upgraded)</title>


<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/custom/css/style.css" />" rel="stylesheet">
</head>
<body>
	<div class="container-fluid">

		<div class="jumbotron">
			<div class="container" id="header-container">
				<!-- class for header won't work for some reason -->
				<h1 class="white inline bold" style="color: #FFFFFF;">BLAST</h1>
				<span class="glyphicon glyphicon-plus white medium"></span><span
					class="glyphicon glyphicon-plus white medium"></span>
				<p class="white">An interactive sway to conduct BLAST search with more analysis,
					visualization, etc.</p>
			</div>
		</div>
	</div>

	<div class="container-fluid">

		<div class="row">
			<div class="col-sm-4">
				<h3 class="position-left text-primary">What is BLAST++</h3>
				<p>
					BLAST++ is a biological tool that is very similar to NCBI's <a target="on_blank"
						href="http://blast.ncbi.nlm.nih.gov/Blast.cgi">BLAST</a> tool. BLAST++ increases the
					functionality of blast by including more visualization, analysis, and other features.
				</p>
			</div>
			<div class="col-sm-4">
				<h3 class="position-left text-primary">Why use BLAST++</h3>
				<p>BLAST++ acts to modernize the BLAST tool through a more familiar interface. Not only is
					the GUI upgraded, but BLAST++ includes several features for the professional and novice
					biologist.</p>
			</div>
			<div class="col-sm-4">
				<h3 class="position-left text-primary">Who made BLAST++</h3>
				<p>
					BLAST++ was created by <a href="#" target="on_blank">...</a> or more informally
					known as <a href="#" target="on_blank">...</a>. View his personal website <a href="#">here</a>.
				</p>
			</div>
			< <br /> <br />

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12">
						<h3 class="position-center text-primary">Enter your sequence in FASTA format</h3>
						<form role="form" method="POST" action="submit_sequence">
							<div class="form-group">
								<label for="sequence">Sequence:</label>
								<input type="text" class="form-control" id="sequence" name="sequence">
							</div>
							<button type="submit" class="btn btn-default">Submit</button>
						</form>

						<br />

						<%-- Choose to display DNA sequence based on value --%>
						<%-- There is still a NullPointerException that raises when a bad sequence is entered --%>
						<c:choose>
							<c:when test="${empty dnaSequence}">
								<p id="sequence" class="null">No DNA Sequence found!</p>
							</c:when>
							<c:otherwise>
								<p id="sequence">${dnaSequence}</p>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>




	</div>
	<!-- scripts -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<script src="<c:url value="/resources/bootstrap/js/bootstrap.js"/>"></script>
</body>
</html>