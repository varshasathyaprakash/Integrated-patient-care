<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="view_page.css" />
    <title>Hospital</title>
  </head>
  <body>
    <header class="header-bar">
      <div class="head-div">
        <div class="sub-head-div1">
          <img src="Hospital Logo.png" class="logo" />
        </div>

        <div class="sub-head-div2">
          <ul class="nav-list">
            <li><a href="index.html" class="nav-links">Home</a></li>
            <li><a href="about_page.html" class="nav-links">About</a></li>
            <li><a href="hospital_page.html" class="nav-links">Hospital</a></li>
            <li>
              <a href="Book_page.html" class="nav-links">Book&nbsp;Now</a>
            </li>
            <li>
              <a href="view_page.php" class="nav-links">View</a>
            </li>
          </ul>
        </div>
      </div>
    </header>

    <section>
      <div class="tables">
        <div class="table--1">
          <h2 class="table-1-head">Available Doctors</h2>

          <table border="2px solid #fff;" class="doctor-table">
            <tr>
              <th>Name</th>
              <th>Doctor ID</th>
              <th>Patient No.</th>
              <th>Department No.</th>
              <th>Department Name</th>
            </tr>

            <?php 
        $conn=mysqli_connect("localhost","root","","hospital");
        if($conn->
            connect_error){ die("Connection failed: ".$conn->connect_error); }
            $sql="SELECT * FROM `doctor` "; $result=$conn->query($sql);
            if($result->num_rows>0){ while($row=$result-> fetch_assoc()){ echo "
            <tr>
              <td>".$row["name"]."</td>
              <td>".$row["doctor_id"]."</td>
              <td>" .$row["p_no"]."</td>
              <td>".$row["dept_no"]."</td>
              <td>" .$row["dept_name"]."</td>
            </tr>
            "; } echo"
          </table>
          "; } else{ echo"0 result"; } $conn->close(); ?>
        </div>

        <div class="table--1">
          <h2 class="table-1-head">Available Nurses</h2>

          <table border="2px solid #fff;" class="doctor-table">
            <tr>
              <th>Name</th>
              <th>Nurse ID</th>
              <th>Room No.</th>
              <th>Patient No.</th>
            </tr>

            <?php 
        $conn=mysqli_connect("localhost","root","","hospital");
        if($conn->
            connect_error){ die("Connection failed: ".$conn->connect_error); }
            $sql="SELECT * FROM `nurse` "; $result=$conn->query($sql);
            if($result->num_rows>0){ while($row=$result-> fetch_assoc()){ echo "
            <tr>
              <td>".$row["name"]."</td>
              <td>".$row["nurse_id"]."</td>
              <td>" .$row["room_no"]."</td>
              <td>".$row["p_no"]."</td>  
            </tr>
            "; } echo"
          </table>
          "; } else{ echo"0 result"; } $conn->close(); ?>
        </div>
      </div>
    </section>
  </body>
</html>
