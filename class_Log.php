<?php
	class Log
	{
		public $text;
		public function __construct($text)
		{
			$this->text=$text;
		}
		
		public function writeLog()
		{
			$string=date("d.m.Y. H:i:s", time())."- ".$this->text."\r\n";
			$file=fopen("log/log.txt", "a");
			fwrite($file, $string);
			fclose($file);
		}
	}

?>