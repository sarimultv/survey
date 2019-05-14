<html>
<head>
   <style>
        body{
            background-image: linear-gradient(rgba(0,0,0,.6),rgba(0,0,0,.6)),url(1.jpg);
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
            border:1px dashed blue;
        }
       form{
           color: #fff;
           text-transform: capitalize;
           font-size: 28px;
       }
       h2{
           color: yellowgreen;
           text-transform: uppercase;
       }
       input{
           border-radius: 10px;
       }
     </style>
</head>

<body>

    <div><center><a href="index.php"><img src="2.png" style="height: 100px;width: 400px;cursor: pointer; margin-top: 1%;"></a></center></div>
  

  <div>
     <center> <h2>enter the topic</h2>
   <form action="postform.php" method="post">
        
    <p>Note: topic like social media,fashion etc</p>
                      
                      <select name="s_name" required="required" style="padding:5px 10px;">
                          <option value="">Select Survey Topic</option>
                          <?php 
                            $conn = mysqli_connect("localhost","root","");
                            $db      = mysqli_select_db($conn,"survey");
                            $sql = "SELECT * FROM survey_name";
                            $run = mysqli_query($conn, $sql);
                            while ($row = mysqli_fetch_array($run)) {
                              ?>
                                 <option value="<?php echo $row['id']; ?>"><?php echo $row['s_name']; ?></option>

                              <?php
                            }
                          ?>

                      </select>
                      <br><br>

                      <input type="submit" name="Submit" style="border: none;background-color: green;width:auto;height: auto;color: #fff; cursor:pointer;font-size: 18px;  ">
       </form></center>
    </div> <br><br><br>
     <br><br><br>
    <center> <div>
        <a href="user1.php" style="color: yellow;text-decoration: none;font-size: 18px;border: 1px dotted white;padding: 5px 10px;border-radius: 10px; ">Click To See The Previous Survey Report</a>
      
    </div></center>
</body>
</html>