<?php
function NameToSlug($str) {
    $vietnameseAccents = array(
        'Ẩ','ẩ','à', 'á', 'ạ', 'ả', 'ã', 'ă', 'ằ', 'ắ', 'ặ', 'ẳ', 'ẵ', 'â', 'ầ', 'ấ', 'ậ', 'ẩ', 'ẫ',
        'đ',
        'ê','è', 'é', 'ẹ', 'ẻ', 'ẽ',
        'ì', 'í', 'ị', 'ỉ', 'ĩ',
        'ò', 'ó', 'ọ', 'ỏ', 'õ', 'ô', 'ồ', 'ố', 'ộ', 'ổ', 'ỗ', 'ơ', 'ờ', 'ớ', 'ợ', 'ở', 'ỡ',
        'ù', 'ú', 'ụ', 'ủ', 'ũ', 'ư', 'ừ', 'ứ', 'ự', 'ử', 'ữ',
        'ỳ', 'ý', 'ỵ', 'ỷ', 'ỹ'
    );

    $vietnameseNonAccents = array(
        'a','a','a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a',
        'd',
        'e','e', 'e', 'e', 'e', 'e',
        'i', 'i', 'i', 'i', 'i',
        'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o',
        'u', 'u', 'u', 'u', 'u', 'u', 'u', 'u', 'u', 'u', 'u',
        'y', 'y', 'y', 'y', 'y'
    );

    $str = str_replace($vietnameseAccents, $vietnameseNonAccents, $str);
    $str1 = preg_replace('/\s+/', '-', $str);
    return strtolower($str1);
}
?>
