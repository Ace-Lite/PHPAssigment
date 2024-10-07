<!DOCTYPE html>

<html lang="en">

    <!--

        HEAD

    -->

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X_UA_Compatible", content="IE=edge">

        <link rel="stylesheet" href="style.css">
        <title>PHP Table search</title>
    </head>

    <!--

        BODY

    -->

    <body>
        <!-- Hlavní skript -->   
        <script src="scripts/javascript/MANAGER.js"></script>

        <!-- Konfigurace -->
        <?php
            // MySQL Server
            const HOST = 'localhost';
            const PORT = 3306;

            const USER = 'root';
            const PASSWORD = null;
            const FILENAME = 'extradeon_data';

            // Display
            const NUMDISPLAY = 10;
        ?>


        <!-- Definice prvků -->
        <class id='search_bar'>
            
                <div id='pageController'>
                    <button id='prevPage' onclick="table.prevPage();">←</button>
                    <b id='currentPage'></b>
                    <button id='nextPage' onclick="table.nextPage();">→</button>
                </div>

                <div id='searching'>
                    Filter: <input id="searchbox" type="text" oninput="table.searchUpdate(this.value);"/>
                </div>

            <!-- Filter -->   
                <div id="dropdown">
                    <button class="dropbtn">Možnosti</button>
                    <div class="dropdown-content">
                        <a id="filterTitle" onclick="table.sort(6)">Seřadit</a>

                        <a id="filter" onclick="table.sort(1)">ASC by INDEX</a>
                        <a id="filter" onclick="table.sort(2)">DSC by INDEX</a>

                        <a id="filter" onclick="table.sort(3)">ASC by BRAND</a>
                        <a id="filter" onclick="table.sort(4)">DSC by BRAND</a>
                        
                        <a id="filter" onclick="table.sort(5)">ASC by PRICE</a>
                        <a id="filter" onclick="table.sort(6)">DSC by PRICE</a>
                        
                        <a id="filterTitle" onclick="table.sort(6)">Export Možnosti</a>

                        <a id="filter" onclick="table.sort(6)">Export CSV</a>
                    </div>
                </div>
        </class>

        <!-- Tabulkový kontejner -->   
        <div id ='glass_bg'>
            <class id='dataTable'></class>
        </div>

        <!-- Načítání dat -->         
        <?php include('scripts/php/LOAD.php'); ?>
    </body>
</html>