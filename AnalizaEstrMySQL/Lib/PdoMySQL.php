
<?php include_once "C:\wamp64\www\AnalizaEstrMySQL\Config\Config.php";

class PDOMySQL{
	
	var $__connection;
	var $__dbinfo;
	var $__persistent = false;
	var $__errorCode = '';
	var $__errorInfo = Array('');
	var $__result = null;
	var $__query = '';
	var $__fetchType = PDO::FETCH_BOTH;
	var $__boundParams = Array();
	
	public $conn;
	private $dbname;    
	private $host;      
	private $user;
	private $password;
	private $port;
	private $configDb;

	public function __construct($config_manual='') {

		// Verifica se as configurações foram feitas manualmente ou se é a padrão
		if ($config_manual!='' && count($config_manual)>0) {			
			$this->configDb	= $config_manual;
		}else{
			$this->configDb	= array(
				'host' => 'localhost',
				'dbname' => 'padrao',
				'user' => 'root',
				'password' => '',
				'port' => 5432,
				'attr' => array(
	                PDO::ATTR_TIMEOUT => 1,
	                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
	            )
			);
		}

		// Adiciona os valores de configuração definido
		$this->host     = $this->configDb['host'];
		$this->port     = $this->configDb['port'];
		$this->dbname   = $this->configDb['dbname'];
		$this->user     = $this->configDb['user'];
		$this->password = $this->configDb['password'];
		$this->attr     = $this->configDb['attr'];

		// define e instancia a conexao com o banco
	    try {
			$string_conn="mysql:dbname=".$this->dbname.";charset=utf8;host=".$this->host;
	        $this->conn=new PDO($string_conn, $this->user, $this->password);
			$this->constantes();
	    } catch(PDOException $e) {
	        die("Erro: <code>" . $e->getMessage() . "</code>");
	    } 
	}

    /*Evita que a classe seja clonada*/
    private function __clone(){}

    /*Método que destroi a conexão com banco de dados e remove da memória todas as variáveis setadas*/
    public function __destruct() {
        $this->disconnect();
        foreach ($this as $key => $value) {
            unset($this->$key);
        }
    }

    // Zera a conexao com o banco
    private function disconnect(){
        $this->conn = null;
    }

    // Define como constantes os paramentros padrao do PDO
	function constantes() {

		//PDO::setAttribute ( int $attribute , mixed $value )
		@define(PARAM_BOOL, PDO::PARAM_BOOL);
		@define(PARAM_NULL, PDO::PARAM_NULL);
		@define(PARAM_INT, PDO::PARAM_INT);
		@define(PARAM_STR, PDO::PARAM_STR);
		@define(PARAM_LOB, PDO::PARAM_LOB);
		@define(PARAM_STMT, PDO::PARAM_STMT);
		@define(PARAM_INPUT_OUTPUT, PDO::PARAM_INPUT_OUTPUT);
		

		//PDO::setAttribute ( int $attribute , mixed $value )
		@define(FETCH_ASSOC, PDO::FETCH_ASSOC);
		@define(FETCH_NUM, PDO::FETCH_NUM);
		@define(FETCH_BOTH, PDO::FETCH_BOTH);
		@define(FETCH_OBJ, PDO::FETCH_OBJ);
		@define(FETCH_LAZY, PDO::FETCH_LAZY);
		@define(FETCH_BOUND, PDO::FETCH_BOUND);
		@DEFINE(FETCH_COLUMN, PDO::FETCH_COLUMN);
		//PDO::setAttribute ( int $attribute , mixed $value )
		@define(ATTR_CASE, PDO::ATTR_CASE);
			@define(ATTR_CASE, PDO::CASE_LOWER);
			@define(ATTR_CASE, PDO::CASE_NATURAL);
			@define(ATTR_CASE, PDO::CASE_UPPER);
		@define(ATTR_ERRMODE, PDO::ATTR_ERRMODE);
			@define(ERRMODE_SILENT, PDO::ERRMODE_SILENT);
			@define(ERRMODE_WARNING, PDO::ERRMODE_WARNING);
			@define(ERRMODE_EXCEPTION, PDO::ERRMODE_EXCEPTION);			
		@define(ATTR_STRINGIFY_FETCHES, PDO::ATTR_STRINGIFY_FETCHES);
		@define(ATTR_STATEMENT_CLASS, PDO::ATTR_STATEMENT_CLASS);
		@define(ATTR_TIMEOUT, PDO::ATTR_TIMEOUT);
		@define(ATTR_AUTOCOMMIT , PDO::ATTR_AUTOCOMMIT );
		@define(ATTR_EMULATE_PREPARES , PDO::ATTR_EMULATE_PREPARES );
		@define(ATTR_AUTOCOMMIT , PDO::ATTR_AUTOCOMMIT );
		@define(ATTR_DEFAULT_FETCH_MODE , PDO::ATTR_DEFAULT_FETCH_MODE );
		
		@define(ATTR_SERVER_VERSION, PDO::ATTR_SERVER_VERSION);
		@define(ATTR_CLIENT_VERSION, PDO::ATTR_CLIENT_VERSION);
		@define(ATTR_SERVER_INFO, PDO::ATTR_SERVER_INFO);
		@define(ATTR_PERSISTENT, PDO::ATTR_PERSISTENT);
		
	}
}

// $config_padrao	= array(
// 	'host' => 'localhost',
// 	'dbname' => 'padrao',
// 	'user' => 'root',
// 	'password' => '',
// 	'port' => 5432,
// 	'attr' => array(
//         PDO::ATTR_TIMEOUT => 1,
//         PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
//     )
// );



//$db = new PDOMySQL($config_check);
//$sql = "SELECT * FROM {nome_da_tabela} LIMIT 1";
//$sql2 = "SELECT DATABASE()";
//$query = $db->conn->prepare($sql2);
//$query->execute();
//$fetchAll = $query->fetchAll(FETCH_ASSOC);
//var_dump($fetchAll);

// $config_check	= array(
// 	'host' => 'localhost',
// 	'dbname' => 'outro_banco',
// 	'user' => 'root',
// 	'password' => '',
// 	'port' => 5432,
// 	'attr' => array(
//         PDO::ATTR_TIMEOUT => 1,
//         PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
//     )
// );

// $db_ck = new PDOMySQL(config_check);
// $sql = "SELECT * FROM {nome_da_tabela} LIMIT 1";
// $q_ck = $db_ck->conn->prepare($sql);
// $q_ck->execute();
// $fetchAllCk = $q_ck->fetchAll(FETCH_ASSOC);
// var_dump($fetchAllCk);
// exit();





?>