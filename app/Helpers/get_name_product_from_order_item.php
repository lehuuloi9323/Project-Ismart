
<?php
function get_name_product_from_order_item($array){
    $conn = new mysqli('localhost', 'root', '', 'Ismart');
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    $string_array = implode(', ', $array);
    $product = "select * from Products where id in ($string_array)";
    $result_product = $conn->query($product);

    $idProduct = [];
    if ($result_product->num_rows > 0)
    {

    // Sử dụng vòng lặp while để lặp kết quả
    while($row = $result_product->fetch_assoc())
        {
            // echo "title: " . $row["id"]. " - Content: " . $row["name"]."<br>";
            $idProduct[] = $row["name"];
        }
    }
    return $idProduct;
}
function get_id_product_from_order_item($array){
    $conn = new mysqli('localhost', 'root', '', 'Ismart');
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    $string_array = implode(', ', $array);
    $product = "select * from Products where id in ($string_array)";
    $result_product = $conn->query($product);

    $idProduct = [];
    if ($result_product->num_rows > 0)
    {

    // Sử dụng vòng lặp while để lặp kết quả
    while($row = $result_product->fetch_assoc())
        {
            // echo "title: " . $row["id"]. " - Content: " . $row["name"]."<br>";
            $idProduct[] = $row["id"];
        }
    }
    return $idProduct;
}

?>
