<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
.h{
				display: none;
			}
</style>
<title>Insert title here</title>
</head>
<body onload="firstload()">
	<form action="leve1.jsp" method="post">
		<input type="radio" name="processor" value="celeron D">
		celeron D<br> <input type="radio" name="processor"
			value="pentium IV"> pentium IV<br> <input type="radio"
			name="processor" value="pentium D"> Pentium D <br> <INPUT
			TYPE="checkbox" name="monitor"> monitor <select
			name="peripherals" size="3" multiple="multiple">
			<option value="camera" /> camera
			<option value="printer" /> prineter
			<option value="Scanner" /> Scanner
			
		</select> 
		<div class="accessories_box_3 ">
					<h3>Accessories - level 3</h3>
					<select name="accessorilv3" id="chosse3" onchange="accessoriesoption()">
						<option value="">chon</option>
						<option value="monitor">Monitor
						<option value="printer">Printer
						<option value="scanner">Scanner
					</select>
					<div class="Monitor_select hide" id="Monitor_contain">
						<select name="Monitor_select" id="Monitor_option" onchange="selectmonitor()">
							<!-- DELL, LENOVO, SAMSUNG, ASUS, Hãng khác -->
							<option value="">chon</option>
							<option value="DELL">DELL
							<option value="LENOVO">LENOVO
							<option value="SAMSUNG">SAMSUNG
							<option value="ASUS">ASUS
							<option value="Other">Hãng khác
						</select>
					</div>
					<div class="Printer_select hide" id="Printer_contain">
						<select name="Printer_select" id="Printer_option" onchange="selectprinter()">
							<!-- Canon, HP, EPSON, BROTHER, Hãng khác -->
							<option value="">Select an option</option>
							<option value="Canon">Canon
							<option value="HP">HP
							<option value="EPSON">EPSON
							<option value="BROTHER">BROTHER
							<option value="Other">Hãng khác
						</select>
					</div>
					<div class="Scanner_select hide" id="Scanner_contain">
						<select name="Scanner_select" id="Scanner_option" onchange="selectscanner()">
							<!-- Plusktes, HP, BROTHER, Hãng khác-->
							<option value="">Select an option</option>
							<option value="Plusktes">Plusktes
							<option value="HP">HP
							<option value="BROTHER">BROTHER
							<option value="Other">Hãng khác
						</select>
					</div>
				</div>
		<input type="submit" value="submit">
	</form>
			<script type="text/javascript">
			function accessoriesoption() {
				var k = document.getElementById("chosse3").value;
				if (k == "monitor") {
					firstload();
					document.getElementById("Monitor_contain").classList.remove("h");
					document.getElementById("Printer_contain").classList.add("h");
					document.getElementById("Scanner_contain").classList.add("h");
					
				} else if (k == "printer") {
					firstload();
					document.getElementById("Monitor_contain").classList.add("h");
					document.getElementById("Printer_contain").classList.remove("h");
					document.getElementById("Scanner_contain").classList.add("h");
					
				} else if (k == "scanner") {
					firstload();
					document.getElementById("Monitor_contain").classList.add("h");
					document.getElementById("Printer_contain").classList.add("h");
					document.getElementById("Scanner_contain").classList.remove("h");
					
				} else {
					firstload();
					document.getElementById("Monitor_contain").classList.add("h");
					document.getElementById("Printer_contain").classList.add("h");
					document.getElementById("Scanner_contain").classList.add("h");
					
				}

			}
			function firstload(){
				document.getElementById("Monitor_contain").classList.add("h");
				document.getElementById("Printer_contain").classList.add("h");
				document.getElementById("Scanner_contain").classList.add("h");



			}
		</script>

</body>
</html>




