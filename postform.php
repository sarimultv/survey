<html>
 <head><title>Survey</title>
    <style>
        body{
            background-image: linear-gradient(rgba(0,0,0,.6),rgba(0,0,0,.6)),url(1.jpg);
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
            border:1px dashed blue;
        }
        input{
            border-radius: 10px;
        }
     </style>
    </head>
 <body >
      <a href="index.php" style="color:yellow;padding:10px 10px; ">Back Home</a>
     <?php  $s_name=$_POST['s_name']; ?>
     <div style="margin-left:28%;">
     <h1 style="color:yellow;margin-left:20px;">Online SurveY</h1>
         
         <p style="color:blue; margin-left:40px;font-size:20px;">Enter your Details</p>
	   <form action="post.php" method="post" style="color:#fff; ">
		Name:&nbsp; <input required type="text" name="fname" ><br /><br />
        Last Name:&nbsp;<input required type="text" name="lname"><br /><br /> 
        Email:&nbsp; <input required type="email" name="email"><br /> <br /> 
        <input type="hidden" name="s_name" value="<?php echo $s_name ?>">
		<h3>Questions</h3>
           
        <?php 
           
          
           $count=0;
        $conn = mysqli_connect("localhost","root","");
	    $db= mysqli_select_db($conn,"survey");
        $sql = "select * from question where s_name='$s_name' ";
	    $query = mysqli_query($conn,$sql);
        while($row = mysqli_fetch_array($query)){
        count++;
        ?>
        <h4><?php echo $count; ?>.&nbsp;<?php echo $row[1] ?></h4>
        <input required type="radio" name="answer[<?php echo $row['id']; ?>]" value="<?php echo $row[2] ?>"><?php echo $row[2] ?>
        <input required type="radio" name="answer[<?php echo $row['id']; ?>]" value="<?php echo $row[3] ?>"><?php echo $row[3] ?>
        <input required type="radio" name="answer[<?php echo $row['id']; ?>]" value="<?php echo $row[4] ?>"><?php echo $row[4] ?>
        <input required type="radio" name="answer[<?php echo $row['id']; ?>]" value="<?php echo $row[5] ?>"><?php echo $row[5] ?><br />   <br />    
           <?php
        }
            
           ?>
        <input type="submit" name="Submit" value="Submit" class="submit" style="border: none;background-color: green;width:auto;height: auto;color: #fff; cursor:pointer;font-size: 18px; margin-left:80px ">
	</form>
    </div>
 </body>
</html>

