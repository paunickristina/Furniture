<?php
	class Comments
	{
		public $db;
		
		public function __construct($db)
		{
			$this->db=$db; 
		}
		public function insertIntoDatabase($idProduct, $user, $comment)
		{
			$sql="INSERT INTO comment (idProduct, user, comment) VALUES ($idProduct, '$user', '$comment')";
			mysqli_query($this->db, $sql);
		}
		
		static function showComments($db, $idProduct)
		{
			
			$sql="SELECT * FROM comment WHERE idProduct=$idProduct ORDER BY id DESC";
			$result=mysqli_query($db, $sql);
			
			if(mysqli_num_rows($result)==0)
			{
				echo "<article class='comment'>";
				echo "<p>No reviews yet.</p>";
				echo "</article>";
			}
			else 
			{
				while($row=mysqli_fetch_object($result))
				{
					echo "<article class='comment'>";
					echo "<p>$row->user</p>";
					echo "<p>$row->date</p>";
					echo "<p>$row->comment</p>";
					echo "</article>";
				}
			}
			
		}
	}
?>

