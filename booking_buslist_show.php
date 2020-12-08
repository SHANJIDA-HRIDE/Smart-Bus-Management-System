<?php 
	

	$con=mysqli_connect("localhost","root","","test");
	function showdata()
	{
		global $con;
		$query = "select * from businfo";
		$run = mysqli_query($con,$query);
		if($run == TRUE)
		{
			?>
			<table border="1" width="50%"  id="customers">
				<h1>Bus Status:</h1>
				<tr>
					<th>Bus Name</th>
					<th>Bus Type</th>
					<th>Seat No</th>
					<th>Fare</th>
					<th>Status</th>
					<th>Bus Code</th>
					

				</tr>
			<?php
			while ($data = mysqli_fetch_assoc($run)) 
			{	
				?>
				
				</tr>
					<tr align="center">
					
					<td><?php echo $data['busname']; ?></td>
					<td><?php echo $data['bustype']; ?></td>
					<td><?php echo $data['seatno']; ?></td>
					<td><?php echo $data['fare']; ?></td>
					<td><?php echo $data['status']; ?></td>
					<td><?php echo $data['busno']; ?></td>
				
					
					
				</tr>
				<?php 
			}
			?>
			</table>
			<?php
		}
		
		else
		{
			echo "Error!!!";
		}
	}
?>
