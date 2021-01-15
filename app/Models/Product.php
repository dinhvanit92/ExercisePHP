<?php

namespace App\Models;

use Core\Model;
use PDO;

class Product extends Model
{
    public static function All()
    {
        $db = static::getDB();
        $stmt = $db->query('SELECT * FROM products');
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
