<?php
include('../inc/depandency.php');
if($_POST['id'])
{
	$id=$_POST['id'];
	
	$stmt = $DB_con->prepare("SELECT * FROM thana WHERE district_id=:id");
	$stmt->execute(array(':id' => $id));
	?><option selected="selected">Select Thana :</option><?php
	while($row=$stmt->fetch(PDO::FETCH_ASSOC))
	{
		?>
		<option value="<?php echo $row['thana_id']; ?>"><?php echo $row['thana_name']; ?></option>
		<?php
	}
}
?>