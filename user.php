<html>
    <head> 
    <style>
        table{
            color: white;
            border: 1px solid;
            padding: 5px 10px;
            margin-left: 10%;
            margin-right: 5%;
            margin-bottom: 1%;
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
  <a href="index.php" style="color:yellow; padding:10px 10px;">Back Home</a>


         <?php 
                $conn = mysqli_connect("localhost","root","");
                $db      = mysqli_select_db($conn,"survey");
                $sql = "SELECT * FROM info";
                $run = mysqli_query($conn, $sql);
                $topic_id = $_POST['s_name'];
          ?>

     <table>
       <thead>
         <th>Question</th>
         <th>Survey Topic</th>
         <th>Answers </th>

       </thead>
       <tbody>
         <?php 
                $sel_ques_sql = "SELECT * FROM question WHERE s_name='$topic_id' ";
                $run_sel_sql = mysqli_query($conn, $sel_ques_sql);
                while ($row2 = mysqli_fetch_array($run_sel_sql)) {
                  $s_id = $row2['s_name'];
                    $sel_topic_sql = "SELECT * FROM survey_name WHERE id = '$s_id' ";
                    $run_topic_sql = mysqli_query($conn, $sel_topic_sql);
                  $s_name = mysqli_fetch_array($run_topic_sql);
                  ?>


                     <tr>
                       <td><?php echo $row2['question']; ?> </td>
                       <td><?php echo $s_name['s_name']; ?> </td>

                       <?php
                          $q_id = $row2['id'];
                          $sel_ans_sql = "SELECT * FROM info WHERE q_id = '$q_id' ";
                          $run_ans_sql = mysqli_query($conn, $sel_ans_sql);
                         echo " <td>";
                         $i = 0;
                          while ($row3 = mysqli_fetch_array($run_ans_sql)) {
                            $i++;
                            ?>
                               <?php echo $i.'. ' . $row3['answer']; ?> <br>
                            <?php
                          }
                          echo "</td>";
                        ?>
                     </tr>

                  <?php

                }
          ?>

       </tbody>
     </table>
  </body>
</html>