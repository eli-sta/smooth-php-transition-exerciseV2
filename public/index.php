<?php
include('versionb/All_classes/Main_finance.php');
if ($_SERVER['REQUEST_URI'] === '/time') {
    $data = new Main_finance();
    $title_data = 'Time';
    $output_data = $data->today();
} elseif ($_SERVER['REQUEST_URI'] === '/price') {
    include('Main_host.php');
    $title_data = 'Today\'s price';
    $price = 0;
    $host = new Main_host();
    $query = 'SELECT * FROM option WHERE name = \'display_price\'';
    $result = mysqli_query($host->link, $query);
    if ($result) {
        $row = mysqli_fetch_assoc($result);
        if ($row['value'] === 'yes') {
            $query = 'SELECT * FROM option WHERE name = \'price\'';
            $result = mysqli_query($host->link, $query);
            if ($result) {
                $row = mysqli_fetch_assoc($result);
                $price = $row['value'];
            }
        }
    }
    if ($price) {
        $data = new Main_finance();
        $title_data = 'Today\'s price';
        $output_data = 'Final price: '.$data->VAT($price, $tax);
        $output_data .= ' Tax: '.$tax;
    } else {
        $output_data = 'We don\'t have price for today';
    }
} else {
    $title_data = 'Welcome!';
    include('Main_host.php');
    $host = new Main_host();
    $query = 'SELECT * FROM articletype WHERE Description = \'Article\'';
    $result = mysqli_query($host->link, $query);
    if ($result) {
        $row = mysqli_fetch_assoc($result);
        $query = 'SELECT * FROM articles WHERE ArticleTypeId = '.$row['keyid'].' ORDER BY LiveDate DESC LIMIT 1,1';
        $result = mysqli_query($host->link, $query);
        if ($result) {
            $row = mysqli_fetch_assoc($result);
            $title_data = $row['Title'];
            $output_data = $row['Text'];
        }
    }
}
require('versionb/theme.php');

?>
