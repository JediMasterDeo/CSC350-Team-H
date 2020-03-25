<?php

/*Grid Programming Exercise*/
//Group H
//24MAY2020
//Prof. Kok
//CSC350 - 1200

    $row = $_POST['row'];
    $col = $_POST['col'];
    
?>
    <html><style> td { width: 1em; height: 1em; line-height: 1 }</style>
    <table>
        <?php
        for($x = 0; $x < $row; $x++) {
            echo '<tr>';
            for($y = 0; $y < $col; $y++) {
                echo '<td>[&nbsp;&nbsp;]';
            }
        }?>
    </table></html>


