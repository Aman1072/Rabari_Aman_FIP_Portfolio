<?php
    //ini_set('display_errors', 1);
    //error_reporting(E_ALL);

    //This is for testing purposes
    //$tbl = "tbl_marvel";
    //$col = "marvel_id";
    //$id = "4";
    //getAll($tbl);
    //getSingle($tbl, $col, $id);
    //filterType('tbl_movies', 'tbl_genre', 'tbl_link', 'movie_id', 'genre_id', 'genre_name', 'action');

   
    //Get all of something
    function getAll($tbl) {
        include("connects.php");
        $queryAll = "SELECT * FROM {$tbl}";
        //echo $queryAll;
        $runAll = mysqli_query($link, $queryAll);
        if($runAll){
            return $runAll;
        }else{
            $error = "From getAll()";
            return $error;
        }
        mysqli_close($link);
    }

   function getSingle($tbl, $col, $id) {
    include('connects.php');
    $querySingle = "SELECT * FROM {$tbl} WHERE {$col} = {$id}";
    //echo $querySingle;
    $runSingle = mysqli_query($link, $querySingle);
    if($runSingle){
        return $runSingle;
    }else{
        $error = "From getSingle()";
        return $error;
    }
    mysqli_close($link);
   }

   function filterType($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter){
    include('connects.php');
    $queryFilter = "SELECT * FROM {$tbl}, {$tbl2}, {$tbl3} WHERE {$tbl}.{$col} = {$tbl3}.{$col} AND {$tbl2}.{$col2} = {$tbl3}.{$col2} AND {$tbl2}.{$col3} = \"{$filter}\"";
    //echo $queryFilter;
    if($runfilter){
        return $runfilter;
    }else{
        $error = "From getSingle()";
        return $error;
    }
    mysqli_close($link);
   
   
   }
?>