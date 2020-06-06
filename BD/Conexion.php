<?php
class conexion 
{
	public $conexion1;
	public $usuario ;
	public $password;
	public $servidor ;
	public $basededatos ;

	public function conexion()
	{

    $this->usuario = "jrcnwibdcomrpl";
	$this->password = "7ff58c81174ef10b5c408cec558e41d1052170023eac4551f2e07a616c0aa5bf";
    $this->servidor = "ec2-3-231-16-122.compute-1.amazonaws.com";
	$this->basededatos = "d33hiq1t087d4v";

	}
	
	public function conectar ()
	{		
    $conexion1 = pgsql_connect( $this->servidor, $this->usuario,$this->password,$this->basededatos ) or die ("No se ha podido conectar al servidor de Base de datos");

    return $conexion1;
    
	}

	
	
}
?>
