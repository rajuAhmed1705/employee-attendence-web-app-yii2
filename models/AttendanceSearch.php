<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Attendance;

/**
 * AttendanceSearch represents the model behind the search form of `app\models\Attendance`.
 */
class AttendanceSearch extends Attendance
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'integer'],
            [['time', 'date', 'email'], 'safe'],
        ];
    }

  
    public function scenarios()
    {

        return Model::scenarios();
    }

    public function search($email,$date)
    {
        if(strlen($date) > 0){
            $date = explode("-",$date);

            $query = Attendance::find()->where(['email'=>$email,'YEAR(date)'=>$date[0],'MONTH(date)'=>$date[1]]);
        }else
            $query = Attendance::find()->where(['email'=>$email,'date'=>$date]);


        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);


        $this->load($email);

        if (!$this->validate()) {
            return $dataProvider;
        }

        return $dataProvider;
    }
    
}
