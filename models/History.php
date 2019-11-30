<?php

namespace app\models;
use Yii;

class Attendance extends \yii\db\ActiveRecord
{
    public static function tableName()
    {
        return 'attendance';
    }

    public function rules()
    {
        return [
            [['date', 'email'], 'required'],
            [['time', 'date'], 'safe'],
            [['email'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'time' => 'Time',
            'date' => 'Date',
            'email' => 'Email',
        ];
    }
}
