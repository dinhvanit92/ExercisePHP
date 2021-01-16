<?php

namespace Core;

use PDO;

abstract class Model
{

    protected static function getDB()
    {
        static $db = null;

        if ($db === null) {
            $dsn = 'mysql:host=' . DB_HOST . ';dbname=' . DB_NAME . ';charset=utf8';
            $db = new PDO($dsn, DB_USER, DB_PASSWORD);

            // Throw an Exception when an error occurs
            $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }

        return $db;
    }
    public static function insert($dbinsert, $table)
    {
        $dsn = 'mysql:host=' . DB_HOST . ';dbname=' . DB_NAME . ';charset=utf8';
        $update = new PDO($dsn, DB_USER, DB_PASSWORD);
        $listkey = [];
        $listvalue = [];
        foreach ($dbinsert as $key => $value) {
            $listkey[] = $key;
            $listvalue[] = "'" . $value . "'";
        }
        $addkey = implode(', ', $listkey);
        $addvalue = implode(', ', $listvalue);
        $sql = "INSERT INTO $table ($addkey) VALUES ($addvalue)";
        $update->exec($sql);
        return 1;
    }
    public static function where($row, $addcompare, $table)
    {
        $compare = '';
        for ($i = 0; $i < count($row); $i++) {
            $compare .= $row[$i] . ' = ' . "'" . $addcompare[$i] . "'" . ' && ';
        }
        $compare = rtrim($compare, ' && ');
        $dsn = 'mysql:host=' . DB_HOST . ';dbname=' . DB_NAME . ';charset=utf8';
        $update = new PDO($dsn, DB_USER, DB_PASSWORD);
        $query = $update->prepare("SELECT * FROM $table WHERE ($compare)");
        $query->setFetchMode(PDO::FETCH_ASSOC);
        $query->execute();
        return  $query->fetchAll();
    }
}
