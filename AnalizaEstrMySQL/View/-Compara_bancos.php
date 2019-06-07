<?php include_once "C:/wamp64/www/AnalizaEstrMySQL/Lib/PdoMySQL.php";


	class ShowInfo{
	function __construct($config){
		$this->bd = new PDOMySQL($config);
	}
	 public function __destruct(){//unset object
	 	print"";
	 }

	public function show_dbName(){//retorna nome da database

		$sql = "SELECT DATABASE()";
		$result= $this->bd->conn->prepare($sql);
		$result->execute();
		$fetchAll = $result->fetchAll(FETCH_COLUMN);
		

		if ($fetchAll != false){
			return $fetchAll[0];
		}else{
			echo "banco nao achado";
			return -1;
		}
	}
	public function show_dbChar(){//retorna collate da databasee
		$sql = "SELECT @@character_set_database";
		$result= $this->bd->conn->prepare($sql);
		$result->execute();
		$fetchAll = $result->fetchAll(FETCH_COLUMN);

		if ($fetchAll != false){
			return $fetchAll[0];
		}else{
			echo "banco nao achado";
			return -1;
		}
	}

	public function show_numTbl(){//retorna numero de tabelas
		$sql = "SHOW TABLES";
		$result= $this->bd->conn->prepare($sql);
		$result->execute();
		
		if($result != false){
			$name_tbl = $result->fetchAll(FETCH_COLUMN);
			return count($name_tbl);
		}else{
			return -1;
		}
	}
	
	
	public function show_numFld($name_col){//retorna num de campos 
		return count($name_col);
	}
		
	public function show_tblNames($c){//retorna nome das tabelas
		$sql = "SHOW TABLES";
		$result= $this->bd->conn->prepare($sql);
		$result->execute();
		
		if($result != false){
			$num_fld = $result->fetchAll(FETCH_COLUMN);
			return $num_fld[$c];
		}else{
			print "erro!!";
			return -1;
		}
	}

	public function take_columns($name_tbl){//retorna nome da coluna
		$sql = "SHOW FIELDS FROM $name_tbl";
		$result= $this->bd->conn->prepare($sql);
		$result->execute();
		if($result != false){
			return $result->fetchAll(FETCH_COLUMN);	

		}else{
			print("erro!!");
			return -1;
		}
	}
	public function take_dataType($name_tbl){ //retorna tipo de dado da coluna
		$sql = "SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = '$name_tbl'";
		$result= $this->bd->conn->prepare($sql);
		$result->execute();
		if($result != false){
			return $result->fetchAll(FETCH_COLUMN);	
		}else{
			print("erro!!");
			return -1;
		}
	}
	public function take_columKey($name_tbl){//retorna chave pri ou foreign da coluna 
		$sql = "SELECT COLUMN_KEY FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = '$name_tbl'";
		$result= $this->bd->conn->prepare($sql);
		$result->execute();
		if($result != false){
			return $result->fetchAll(FETCH_COLUMN);
		}else{
			print("erro!!");
			return -1;
		}
	}

	public function take_tamColumn($name_tbl){//retorna tamanho do tipo coluna
		$sql = "SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = '$name_tbl'";
		$result= $this->bd->conn->prepare($sql);
		$result->execute();
		if($result != false){
			return $result->fetchAll(FETCH_COLUMN);
		}else{
			print("erro!!");
			return -1;
		}
	}
	public function check_if_pri($tipo_chave){//checa se é chave primaria
		if($tipo_chave == 'PRI'){
			return 'sim';
		}
		return 'não';
	}
	public function check_if_frg($tipo_chave){//checa se é chave estrangeira
		if($tipo_chave == 'MUL'){
			return 'sim';
		}
		return 'não';
	}
}


class ComparaBanco{
	function __construct($config=''){
		if ($config == ''){
			$this->db1 = new ShowInfo($_SESSION['config_check']);
			$this->db2 = new ShowInfo('');

		}else{
			$this->db1 = new ShowInfo('');
			$this->db2 = new ShowInfo($config);
		}
		
	}

	function __destruct(){//unset object
		print"";
	}
	
	private function check_data($col,$data,$tam,$tipo, $c, $j){
		if( $this->db1->show_numTbl() > $c){
			$name_tbl = $this->db1->show_tblNames($c);
			$name_col = $this->db1->take_columns($name_tbl);
			$data_type = $this->db1->take_dataType($name_tbl);
			$tam_type = $this->db1->take_tamColumn($name_tbl);
			$tipo_chave = $this->db1->take_columKey($name_tbl);
			$tipo_chave1 = $this->db1->take_columKey($name_tbl);

			$count = 0;
			if($this->db1->show_numFld($name_col) > $this->db2->show_numFld($col)){

				if($data_type[$j] != $data){
					$count = 1;
				}
				if($tam_type[$j] != $tam){
					$count = 1;
				}
				if($tipo_chave1[$j] != $tipo and $tipo_chave[$j] != $tipo){
					$count =1;
				}
				if($name_col[$j] != $col[$j]){
					$count = 1;
				}

				return $count;

			}else{
				return -1;
			}

		}else{
			return -1;
		}
	}

	private function check_li($check, $name_col, $data_type, $tam_type, $tipo_chave){
		switch($check){
			case 1:
				print "<li class='li-change'>".$name_col."</li>";
				print "<li class='li-change'>".$data_type."</li>";
				print "<li class='li-change'>".$tam_type."</li>";
				print "<li class='li-change'>".$this->db2->check_if_pri($tipo_chave)."</li>";
				print "<li class='li-change'>".$this->db2->check_if_frg($tipo_chave)."</li>";
				print"<li class='li-change'><i class='fa fa-times'></i></li>";
				print"<li>-</li>";
				break;
				
			case 0:
				print "<li>".$name_col[$j]."</li>";
				print "<li>".$data_type[$j]."</li>";
				print "<li>".$tam_type[$j]."</li>";
				print "<li>".$this->db2->check_if_pri($tipo_chave[$j])."</li>";
				print "<li>".$this->db2->check_if_frg($tipo_chave[$j])."</li>";
				print"<li><i class='fas fa-check'></i></li>";
				print"<li>-</li>";

			default:
				print "<li class='li-change'>".$name_col."</li>";
				print "<li class='li-change'>".$data_type."</li>";
				print "<li class='li-change'>".$tam_type."</li>";
				print "<li class='li-change'>".$this->db2->check_if_pri($tipo_chave)."</li>";
				print "<li class='li-change'>".$this->db2->check_if_frg($tipo_chave)."</li>";
				print"<li class='li-change'><i class='fa fa-times'></i></li>";
				print"<li class='li-change'>-</li>";
				break;


		}


	}


	function show_fields(){
		$name = $this->db2->show_dbName();
		$char_type = $this->db2->show_dbChar();
		print "<ul class='ul-titulo_bd'>Nome do Banco- ".$name."&nbsp;Tipo de caracteres&nbsp;"."{'$char_type'}"."</ul><br/>";
		for($c = 0; $c < $this->db2->show_numTbl();$c++){
			print "<ul>";
			$put_title = True;
			$name_tbl = $this->db2->show_tblNames($c);
			$name_col = $this->db2->take_columns($name_tbl);
			$data_type = $this->db2->take_dataType($name_tbl);
			$tam_type = $this->db2->take_tamColumn($name_tbl);
			$tipo_chave = $this->db2->take_columKey($name_tbl);

			print"<br/><br/>";
			print"<ul class='ul-titulo_tbl'>Nome da tabela {'$name_tbl'}</ul>";
			for($j = 0; $j < $this->db2->show_numFld($name_col); $j++){
				if($put_title){
					print "<li>Coluna</li>";
					print "<li>Tipo</li>";
					print "<li>Tamanho</li>";
					print "<li>Pk</li>";
					print "<li>Fk</li>";
					print "<li>Status</li>";
					print "<li>Info</li>";
					$put_title = False;
					$j = $j-1;
				}else{
					$check= $this->check_data($name_col, $data_type[$j], $tam_type[$j], $tipo_chave[$j], $c, ($j));
					if($check != 0){
						$this->check_li($check,$name_col[$j], $data_type[$j], $tam_type[$j], $tipo_chave[$j]);

					}else{
						print "<li>".$name_col[$j]."</li>";
						print "<li>".$data_type[$j]."</li>";
						print "<li>".$tam_type[$j]."</li>";
						print "<li>".$this->db2->check_if_pri($tipo_chave[$j])."</li>";
						print "<li>".$this->db2->check_if_frg($tipo_chave[$j])."</li>";
						print"<li><i class='fas fa-check'></i></li>";
						print"<li>-</li>";
					}
				}
				print "</br>";
			}
		}	
	}
}
?>
