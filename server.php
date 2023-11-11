<?php
   
   session_start();

   header('Content-Type: application/json; charset=utf-8');
   header('Access-Control-Allow-Origin: *');


   $servername = "localhost";
   $username = "lrmdro_balul_bobocilor";
   $password = "";
   $dbname = "lrmdro_balul_bobocilor";

   
   if($_GET['q'] == "check_code"){
   
      $conn = new mysqli($servername, $username, $password, $dbname);
      
      
      if ($conn->connect_error) {
         $data = [ 'status' => 'connection failed:' ];
         echo json_encode( $data );
      }
      else{
         $code = mysqli_real_escape_string($conn, $_GET["code"]);
         
         if($code.trim() != ""){
            $sql = "SELECT * FROM authentication_codes WHERE code = '$code' and is_used = '0'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
               $data = [ 'status' => 'OK' ];
               $_SESSION["code"] = $code;

               echo json_encode( $data );
            } else {
               $data = [ 'status' => 'no results' ];
               echo json_encode( $data );
            }
         }
         else{
            $data = [ 'status' => 'failed' ];
            echo json_encode( $data );
         }
         $conn->close();
      }
   }
   else if($_GET['q'] == "add_vote"){
   
      $conn = new mysqli($servername, $username, $password, $dbname);

      $code = mysqli_real_escape_string($conn, $_SESSION["code"]);
      $team = mysqli_real_escape_string($conn, $_GET["team"]);
      
      if ($conn->connect_error) {
         $data = [ 'status' => 'connection failed:' ];
         echo json_encode( $data );
      }
      else{
         
         if($code.trim() != "" && $team.trim() != "" && $team >= 1 && $team <= 7){
            $sql = "SELECT * FROM authentication_codes WHERE code = '$code' and is_used = '0'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {

               $sql = "UPDATE authentication_codes SET is_used = 1 WHERE code = '$code';";
               
               if($team == 1){
                  $sql .= "UPDATE votes SET team1 = team1 + 1";
                  $conn->multi_query($sql);
               }
               else if($team == 2){
                  $sql .= "UPDATE votes SET team2 = team2 + 1";
                  $conn->multi_query($sql);
               }
               else if($team == 3){
                  $sql .= "UPDATE votes SET team3 = team3 + 1";
                  $conn->multi_query($sql);
               }
               else if($team == 4){
                  $sql .= "UPDATE votes SET team4 = team4 + 1";
                  $conn->multi_query($sql);
               }
               else if($team == 5){
                  $sql .= "UPDATE votes SET team5 = team5 + 1";
                  $conn->multi_query($sql);
               }
               else if($team == 6){
                  $sql .= "UPDATE votes SET team6 = team6 + 1";
                  $conn->multi_query($sql);
               }
               else if($team == 7){
                  $sql .= "UPDATE votes SET team7 = team7 + 1";
                  $conn->multi_query($sql);
               }
               $data = [ 'status' => 'OK' ];
               echo json_encode( $data );
            } else {
               $data = [ 'status' => 'no results' ];
               echo json_encode( $data );
            }
         }
         else{
            $data = [ 'status' => 'failed' ];
            echo json_encode( $data );
         }
         $conn->close();
      }
   }
   else if($_GET['q'] == "admin"){
      $conn = new mysqli($servername, $username, $password, $dbname);

      if($_GET['admintoken'] == o5gcKwxZdJFSHclHZhjX7okqjSdAT7EmQwfB7dsjH6YDwUdSJ0tr8qxyugcCAY9gDtCHkiQ2C3mc93VYtBWTwX8570B1pzakbED3fsYFbvDcZbPWUvVZG3QqFodU){
         $sql = "SELECT * FROM votes";
         $result = $conn->query($sql);
         $row = $result->fetch_assoc();

         $data = [ 'status' => 'OK', 'team1' => $row["team1"], 'team2' => $row["team2"], 'team3' => $row["team3"], 'team4' => $row["team4"], 'team5' => $row["team5"], 'team6' => $row["team6"], 'team7' => $row["team7"]];
         echo json_encode( $data );
      }
      else{
         $data = [ 'status' => 'failed' ];
         echo json_encode( $data );
      }
   }
   else{
      $data = [ 'null' => 'null' ];
      echo json_encode( $data );
   }
?>