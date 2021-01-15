<?php

namespace App\Models;

use Core\Model;
use PDO;

class User extends Model
{

    public static function All()
    {
        $db = static::getDB();
        $stmt = $db->query('SELECT * FROM users');
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
