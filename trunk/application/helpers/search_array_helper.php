<?php

function search_array($array, $keya, $valuea)
//function search_array($array)
	{
		//dunno yet
		foreach($array AS $key => $value)
			{
				//echo $key.'&nbsp;'.$value.'<br />';
				foreach($value AS $key1 => $value1)
					{
						//echo $key1.'&nbsp;'.$value1.'<br />';
						if ($keya == $key1 && $valuea == $value1)
							{
								return $value1;
							}
					}
			}
	}

?>