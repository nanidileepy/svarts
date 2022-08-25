
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Edit Student</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="newstudent.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>


	<%!ResultSet res=null; %>
	<% res=(ResultSet)application.getAttribute("print");
 
%>
	<div class="container">
		<div class="newstudentpage">

			<h1>Edit The Student Details</h1>
			<form action="">
				<table>
					<tr>
						<td class="slno">1</td>
						<td class="documment">Name of the Pupil</td>
						<td class="stinput"><input required="required" type="text"
							placeholder="Enter your name" name="nameofst"> <br>
							<% out.println(res.getString(2)); %></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td><input type="text" placeholder="Enter your surname"
							name="surname" required="required"> <br>
							<% out.println(res.getString(3)); %></td>
					</tr>
					<tr>
						<td class="slno">2</td>
						<td class="documment">Father's Name</td>
						<td class="stinput"><input type="text"
							placeholder="fathername" name="fathername" required="required">
							<br>
							<% out.println(res.getString(4)); %></td>

					</tr>
					<tr>
						<td></td>
						<td></td>
						<td><input type="text"
							placeholder="Enter your father surname" name="fathersurname"
							required="required"> <br>
							<% out.println(res.getString(5)); %></td>
					</tr>
					<tr>
						<td class="slno"">3</td>
						<td class="documment">Nationality/Religion and Caste</td>
						<td class="stinput">: <select name="nationality"
							required="required">
								<option value="Indian" selected>INDIAN</option>
						</select> <select name="Religion" required="required">
								<option value="HINDU" selected>HINDU</option>
								<option value="MUSLIM">MUSLIM</option>
								<option value="CHRISTIAN">CHRISTIAN</option>
						</select> <select name="Caste" required="required">
								<option value="OC">OC</option>
								<option value="BC-A" selected>BC-A</option>
								<option value="BC-B" selected>BC-B</option>
								<option value="BC-C" selected>BC-C</option>
								<option value="BC-D" selected>BC-D</option>
								<option value="BC-E" selected>BC-E</option>
								<option value="SC">SC</option>
								<option value="ST">ST</option>
						</select>

						</td>
					<tr>
						<td></td>
						<td></td>
						<td><input type="text" name="subrelgion"
							placeholder="SUB RELIGON"> <input type="text"
							name="subcaste" placeholder="SUB CASTE" required="required"></td>


					</tr>
					<tr>
						<td></td>
						<td>GENDER</td>
						<td><input type="radio" name="gender" value="male">male
							<br> <input type="radio" name="gender" value="female">female
							<br> <input type="radio" name="gender" value="others">others
							<br> <br>
							<% out.println(res.getString(7)); %></td>

					</tr>

					<tr>


						<td class="slno">4</td>
						<td class="documment">Date of Birth</td>
						<td class="stinput"><input type="date" required="required"
							name="dateofbirth"></td>
						<br>
						<% out.println(res.getString(8)); %>
					</tr>

					<tr>


						<td class="slno"></td>
						<td class="documment"></td>
						<td class="stinput"><input type="text" required="required"
							name="dateofbirthinwords" placeholder="  Enter date in words">
							<br>
							<% out.println(res.getString(9)); %></td>
					</tr>

					<tr>
						<td class="slno">5</td>
						<td class="documment"><br> Group</br> <br>Medium</br> <br>Subject
							studided Part-1(B)</br> <br>Part-2 (optional) (i)</br> <br>(ii)</br> <br>(iii)</br>
						</td>
						<td class="stinput"><br> <select name="Group"
							required="required">
								<option value="Bcom">BCOM</option>
								<option value="BSC" selected>BSC</option>
								<option value="BA">BA</option>
						</select> <br>
							<% out.println(res.getString(18)); %> </br> <br> <select
							name="Medium" required="required">
								<option value="Telugu">TELUGU</option>
								<option value="English" selected>English</option>
								<option value="HINDi">HINDI</option>
						</select> <br>
							<% out.println(res.getString(10)); %> </br> <br> <select
							name="subject" required="required">
								<option value="Telugu">TELUGU</option>
								<option value="English">ENGLISH</option>
								<option value="HINDi">HINDI</option>
						</select> <br>
							<% out.println(res.getString(11)); %> </br> <br> <input type="text"
							name="specilization1" placeholder="subject name"
							required="required"> </br> <br>
							<% out.println(res.getString(12)); %> <br> <input type="text"
							name="specilization2" placeholder="subject name"
							required="required"> </br> <br>
							<% out.println(res.getString(13)); %> <br> <input type="text"
							name="specilization3" placeholder="subject name"
							required="required"> </br> <br>
							<% out.println(res.getString(14)); %></td>
					</tr>

					<tr>
						<td class="slno">6</td>
						<td class="documment">Date of Admission</td>
						<td class="stinput"><input type="date" required="required"
							name="dateofadmission"> <br>
							<% out.println(res.getString(15)); %></td>
					</tr>
					<tr>
						<td class="slno">7</td>
						<td class="documment">Whether Qualified for promotion to a
							Higher class</td>
						<td></td>
					</tr>
					<tr>
						<td class="slno">8</td>
						<td class="documment">Whether the pupil has paid all fees due
							to this college</td>
						<td class="stinput"><select name="duefees" id=""
							required="required">
								<option value="Yes">yes</option>
								<option value="No">No</option>
						</select> <br>
							<% out.println(res.getString(16)); %></td>
					</tr>
					<tr>
						<td class="slno">9</td>
						<td class="documment">Whether the pupil was in receipt of
							Scholarship(Nature of Scholarship to be specified)</td>
						<td class="stinput"></td>
					</tr>
					<tr>
						<td class="slno">10</td>
						<td class="documment">Whether the pupil has undergone Medical
							Inspection</td>
						<td class="stinput"></td>
					</tr>
					<tr>
						<td class="slno">11</td>
						<td class="documment">Date of which the pupil has actually
							left the College</td>
						<td class="stinput">: <input type="text"
							placeholder="Enetrjoin year" name="syear"><br>
							<% out.println(res.getString(17)); %> <input type="text"
							placeholder="Enetr the End year" name="year"> <br>
							<% out.println(res.getString(19)); %>
						</td>
					</tr>
					<tr>
						<td class="slno">12</td>
						<td class="documment">Date of Which application for T.C. was
							made on behalf of the pupil</td>
						<td class="stinput"></td>
					</tr>
					<tr>
						<td class="slno">13</td>
						<td class="documment">Conduct of student during the period of
							his study in the college</td>
						<td class="stinput">SATISFACTORY</td>
					</tr>
					<tr>
						<td colspan="3" class="submit"><input type="submit"
							name="newstudentsubmit" value="Submit"></td>
					</tr>
				</table>

			</form>


		</div>
	</div>
</body>

</html>