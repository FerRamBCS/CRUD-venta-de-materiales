<? php
    class mysqlconex{
        public function conex(){
            $enlace = mysqli_connect("127.0.0.1", "root", "", "registro");
            return $enlace;
        }
    }
?>