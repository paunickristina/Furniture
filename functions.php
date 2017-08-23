<?php
	function connection()
	{
		$db=mysqli_connect("localhost", "root", "", "furniture");
		if(!$db) return false;
		mysqli_query($db, "SET NAMES UTF8");
		return $db;
	}
	
	function replace_dashes($string) 
	{
		$string=str_replace("-", " ", $string);
		return $string;
	}
	
	function checkCharacters($a)
	{
		$b=true;
		if(strpos($a, "*")>-1) $b=false;
		if(strpos($a, "=")>-1) $b=false;
		if(strpos($a, "\\")>-1) $b=false;
		if(strpos($a, "_")>-1) $b=false;
		if(strpos($a, "'")>-1) $b=false;
		if(strpos($a, '"')>-1) $b=false;
		if(strpos($a, "%")>-1) $b=false;
		return $b;
	}
	
	function checkEmail($a)
	{
		$b=false;
		if(strpos($a, "@")>-1) $b=true;
		return $b;
	}
	
	
?>

