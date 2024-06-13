<?php
// Thông tin kết nối đến cơ sở dữ liệu MySQL
$host = 'localhost'; // Địa chỉ máy chủ MySQL
$dbname = 'moneypro'; // Tên cơ sở dữ liệu
$username = 'root'; // Tên người dùng MySQL
$password = ''; // Mật khẩu MySQL

try {
    // Kết nối đến cơ sở dữ liệu MySQL
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    
    // Thiết lập chế độ lỗi cho PDO
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Chuẩn bị truy vấn SQL để lấy tất cả các category
    $query = "SELECT * FROM mp_categories";
    
    // Thực thi truy vấn và lấy kết quả
    $stmt = $conn->query($query);
    $categories = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    // Trả về kết quả dưới dạng JSON
    header('Content-Type: application/json');
    echo json_encode($categories);
} catch(PDOException $e) {
    // Xử lý lỗi nếu có
    echo "Lỗi: " . $e->getMessage();
}
?>
