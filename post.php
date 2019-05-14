<html><head> 
    <style>
    h4{
        color:white;
        font-size: 28px;
        position: absolute;
        top: 40%;
        left: 50%;
        transform: translate(-50%,-50%);
        }
        a{
            color: greenyellow;
            font-size: 18px;
            position: absolute;
            top: 60%;
            left: 50%;
            transform: translate(-50%,-50%);
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
        
<?php
 
	$fname = $_POST['fname'];
	$lname = $_POST['lname'];
    $email = $_POST['email'];
    $selected= $_POST['answer'];
    $s_name=$_POST['s_name'];

    

    if($_POST["Submit"]=="Submit")
    {
       

	$conn = mysqli_connect("localhost","root","");
	$db      = mysqli_select_db($conn,"survey");
    foreach($selected as $key => $val){        
       $sql     = "INSERT into info(fname,lname,email,answer,s_name,q_id)values('$fname','$lname','$email','$val','$s_name', '$key')";
        $query  = mysqli_query($conn,$sql);
    }

	if($query){
        
		echo "<br><h4>Successfully Submitted</h4><br />";
		echo "<a href='show.php'>View All The Report</a>";
    }
    else{
        echo "<script>alert('Not inserted');</script>";
    }

}

?>
</body></html>
