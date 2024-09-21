<?php
include('../inc/depandency.php');
if($_POST['id'])
{
	$id=$_POST['id'];
		
	$stmt = $DB_con->prepare("SELECT * FROM district WHERE division_id=:id");
	$stmt->execute(array(':id' => $id));
	?><option selected="selected">Select District :</option><?php
	while($row=$stmt->fetch(PDO::FETCH_ASSOC))
	{
		?>
        <option value="<?php echo $row['district_id']; ?>"><?php echo $row['district_name']; ?></option>
        <?php
	}
}
?>