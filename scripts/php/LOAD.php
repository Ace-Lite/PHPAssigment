<!--

    Tento skript, načte data ze SQL serveru.

-->

<?php
    // Load
    $sql = (new mysqli(HOST, USER, PASSWORD, FILENAME, 3306)) 
    or die('Error occured while connecting to SQL server');

    $sql_result = $sql->query('SELECT * FROM produkty')
    or die('Error no items in query found');    

    if ($sql_result) {
        $result = array();
        while ($row = mysqli_fetch_array($sql_result))
        {
            $result[] = $row;
        }
    }


?>

<!--


-->

<script>
    table = new PHP_Manager(
        <?php echo NUMDISPLAY;?>,
        <?php echo json_encode($result);?>
    );
</script>