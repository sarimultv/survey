<html>
    <head> 
    <style>
        table{
            color: white;
            border: 1px solid;
            padding: 5px 10px;
            margin-left: 25%;
            margin-bottom: 1%;
            margin-top: -0.4%;
            
        }
        table ,th ,td{
           border: 1px solid;
            padding: 5px 10px;
            border-collapse: collapse;
        }
        body{
            background-image: linear-gradient(rgba(0,0,0,.6),rgba(0,0,0,.6)),url(1.jpg);
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
            border:1px dashed blue;
        }
        </style>
    </head>
<body>
     <a href="index.php" style="color:yellow;padding:10px 10px; ">Back Home</a>
<?php
	$conn = mysqli_connect("localhost","root","");
	$db      = mysqli_select_db($conn,"survey");
 
	echo "<table>";
	$sql = "select * from info";
 
	$query = mysqli_query($conn,$sql);
    
    echo "<th>First Name</th> 
              <th>Last Name</th> 
              <th>Email</th> 
              <th>Answer </th>";
    
	while($row = mysqli_fetch_array($query))
		echo "    <tr> <td>$row[1]</td>
                  <td>$row[2]</td>
                  <td>$row[3]</td>
                  <td>$row[4]</td></tr> ";
	echo "</table>";
?>
</body>
</html>