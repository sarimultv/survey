<html><head>
    <style>
    body{
            background-image: linear-gradient(rgba(0,0,0,.6),rgba(0,0,0,.6)),url(1.jpg);
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
            border:1px dashed blue;
        }
        form{
            color:#fff;
            text-transform: capitalize;
            font-size: 28px;
            margin-top:8%;
        }
        h2{
            color: yellowgreen;
           text-transform: uppercase;
            font-size: 26px;
        }
    </style>
    </head>
    
<body> <a href="index.php" style="color:yellow;padding:10px 10px; ">Back Home</a>
    
   <center> <form action="user.php" method="post">
        <h2>enter the topic</h2>
<p>Note: topic like social media,fashion etc</p>
     Enter the Topic to See the Survey report <br><br>
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
       <input type="submit" style="border: none;background-color: green;width:auto;height: auto;color: #fff; cursor:pointer;font-size: 18px;  " >
       </form> </center>
    </body>

</html>