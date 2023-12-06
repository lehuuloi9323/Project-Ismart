<?php
function show_array($data) {
    if(is_array($data)){
        echo "<pre>";
            print_r($data);
            echo "</pre>";
    }
}
function getImageUrlForProduct($productId)
{

    $conn = new mysqli('localhost', 'root', '', 'Ismart');
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    //Lấy danh sách sản phẩm có ID = $productId
    $product = "select * from products where id = '$productId'";
    $result_product = $conn->query($product);
    if ($result_product->num_rows > 0)
    {
    // Sử dụng vòng lặp while để lặp kết quả
    while($row = $result_product->fetch_assoc())
        {
            // echo "title: " . $row["id"]. " - Content: " . $row["name"]."<br>";
            $idProduct = $row["id"];
        }
    }
    $get_image_avatar = $conn->query("SELECT image_id FROM product_images where product_id='$idProduct' and pin = '1' ");

    if ($get_image_avatar->num_rows > 0)
    {
    // Sử dụng vòng lặp while để lặp kết quả
    while($row_idimage = $get_image_avatar->fetch_assoc())
        {
            // echo "title: " . $row["id"]. " - Content: " . $row["name"]."<br>";
            $image = $row_idimage["image_id"];

        }
    }

    $get_url_image = $conn->query("select url from images where id = '$image'");
    if ($get_url_image->num_rows > 0)
    {
    // Sử dụng vòng lặp while để lặp kết quả
    while($row_url_image = $get_url_image->fetch_assoc())
        {
            // echo "title: " . $row["id"]. " - Content: " . $row["name"]."<br>";
            $url_image = $row_url_image["url"];

        }
    }
    return $url_image;
}
