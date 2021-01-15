<?php

namespace App\Models;

use Core\Model;
use PDO;

class Orders extends Model
{
    public static function All()
    {
        $db = static::getDB();
        $stmt = $db->query('SELECT * FROM orders');
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
