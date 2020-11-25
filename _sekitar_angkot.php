<?php

	include('connect.php');
    $latit = $_GET['lat'];
    $longi = $_GET['long'];
	$rad=$_GET['rad'];

	// $querysearch="SELECT id, route_color, destination, st_distance_sphere(ST_GeomFromText('POINT(".$longi." ".$latit.")',-1), geom) as jarak FROM angkot where st_distance_sphere(ST_GeomFromText('POINT(".$longi." ".$latit.")',-1), geom) <= ".$rad.""; 
	// $hasil=pg_query($querysearch);

    // while($baris = pg_fetch_array($hasil)){
    //     $id=$baris['id'];
    //     $route_color=$baris['route_color'];
    //     $destination=$baris['destination'];
    //     $dataarray[]=array('id'=>$id,'route_color'=>$route_color,'destination'=>$destination);

    $lt = array();
    $lati = array();
    $long = array();
    $ln = array();
    $id = array();
    $name = array();
    $jarak = array();

    $query = "SELECT id, destination, track, ST_X(ST_Centroid(geom)) AS lng, ST_Y(ST_CENTROID(geom)) As lat, id_color, cost, number, route_color FROM angkot";

    $h = pg_query($query);
    while($d = pg_fetch_assoc($h)){
        $id[] = $d['id'];
        $destination[] = $d['destination'];
        $track[] = $d['track'];
        $id_color[] = $d['id_color'];
        $cost[] = $d['cost'];
        $number[] = $d['number'];
        $route_color[] = $d['route_color'];
        $lt[] = $d['lat'];
        $ln[] = $d['lng'];
    }

    $i=0;
    foreach($lt as $lats){
        $longs = $ln[$i];
        
        $q = "SELECT ST_DistanceSphere(ST_GeomFromText('POINT($latit $longi)', 4326), ST_GeomFromText('POINT($lats $longs)', 4326)) as jarak FROM angkot";
        $hasil=pg_query($q);
        $data = pg_fetch_array($hasil);
        $jarak[] = $data['jarak'];
        $i++;
    }   

    $i=0;
    foreach($ln as $longs){
        $id1     = $id[$i];
        $destination1   = $destination[$i];
        $jarak1  = $jarak[$i];
        $track1     = $track[$i];
        $id_color1     = $id_color[$i];
        $cost1     = $cost[$i];
        $number1    = $number[$i];
        $route_color1 = $route_color[$i];
        $lat1    = $lt[$i];
        $lng1    = $ln[$i];
        if($jarak1 <= $rad){
            $dataarray[]=array('id'=>$id1,'destination'=>$destination1,'jarak'=>$jarak1, "lat"=>$lat1,"long"=>$lng1,"track"=>$track1,"id_color"=>$id_color1,"cost"=>$cost1,"number"=>$number1,"route_color"=>$route_color1);
        }
        $i++;

    }
    echo json_encode ($dataarray);
?>