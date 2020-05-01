<?php
$servername = "localhost";
$username = "root";
//$password = "password";
$conn = mysqli_connect($servername, $username // Create connection
//, $password
);
if (!$conn) { // Check connection
die("Connection failed: " . mysqli_connect_error());
}
$sql = "SELECT * FROM CISCourses 
INNER JOIN CourseInformation ON CISCourses.CourseNumber = CourseInformation.NumberOfMeetingDays
INNER JOIN Schedule ON CISCourses.CourseNumber = Schedule.NumberOfMeetingDays"; // Create query string
$result = mysqli_query($conn, $sql); // Send the query to the database
echo "<br>";
if (mysqli_num_rows($result) > 0) // if there are rows present
{
while($row = mysqli_fetch_assoc($result)) { // fetch next row
echo $row["CourseNumber"]. "- " . $row["NumberOfMeetingDays"].
$row["Credits"]. "- " . $row["ClassHours"].  "- " . $row["RoomNumber"]."<br>"; // output data of that row
}
} else {
echo "No results";
}
$conn->close();
?>
