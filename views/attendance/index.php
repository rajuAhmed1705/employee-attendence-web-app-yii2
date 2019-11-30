<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;


/* @var $this yii\web\View */
/* @var $searchModel app\models\AttendanceSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Current months attendance history';
// $this->params['breadcrumbs'][] = $this->title;
?>
<h1><?= Html::encode($this->title) ?></h1>
<hr>
<div class="container">
    <div class="row">

        <div class="col-sm-3">
            <ul class="list-group">
                <?= Html::a('add attendance', ['site/attendance'], ['class' => 'list-group-item']) ?>
                <?= Html::a('history', ['attendance/history'], ['class' => 'list-group-item']) ?>
                <?= Html::a('all users', ['user/index'], ['class' => 'list-group-item']) ?>
                <?= Html::a('admin panel', ['/admin'], ['class' => 'list-group-item']) ?>
            </ul>
        </div>


        <div class="col-sm-9">

            <?php if(Yii::$app->user->can('admin')){ ?>
            <div class="attendance-index">

                <?php  //echo $this->render('_search', ['model' => $searchModel]); 
                ?>
                <?php Pjax::begin(); ?>
                <?= GridView::widget([

                    'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],
                        'email',
                        [
                            'attribute' => 'date',
                            'label' => 'date',
                            'format' => 'date',
                        ],
                        'time',
                        ['class' => 'yii\grid\ActionColumn']

                    ],
                    'dataProvider' => $dataProvider,
                ]); ?>
                <?php Pjax::end(); ?>

            </div>
            <?php }else{?>
                <div class="attendance-index">

                <?php // echo $this->render('_search', ['model' => $searchModel]); 
                ?>
                <?php Pjax::begin(); ?>
                <?= GridView::widget([

                    'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],

                        [
                            'attribute' => 'date',
                            'label' => 'date',
                            'format' => 'date',
                        ],
                        'time',

                    ],
                    'dataProvider' => $dataProvider,
                ]); ?>
                <?php Pjax::end(); ?>

                </div>
            <?php }?>





        </div>
    </div>


</div>
</div>