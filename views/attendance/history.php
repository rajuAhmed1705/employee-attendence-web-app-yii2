<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\datepicker\DatePicker;
use yii\grid\GridView;


/* @var $this yii\web\View */
/* @var $model app\models\Attendance */
/* @var $form ActiveForm */
$this->title = 'history';
?>

<h1><?= Html::encode($this->title) ?></h1>
<hr>
<div class="container">
    <div class="row">
        <div class="col-sm-3">
            <ul class="list-group">
                <?= Html::a('add attendance', ['site/attendance'], ['class' => 'list-group-item']) ?>
                <?= Html::a('dashboard', ['attendance/index'], ['class' => 'list-group-item']) ?>
            </ul>
        </div>
        <div class="col-sm-9">
<div class="history">

    <?php $form = ActiveForm::begin(); ?>

        <?= $form->field($model, 'date')->widget(
            DatePicker::className(), [
                // inline too, not bad
                'inline' => false, 
                'clientOptions' => [
                    'autoclose' => true,
                    'format' => 'yyyy-m',
                    'autoclose' => true,
                    'endDate' => 'now',
                    'immediateUpdates' => true,
                    'startView'=>'year',
                    'minViewMode'=>'months',
                ]
            ]);?>

        <?= $form->field($model, 'email')->hiddenInput(['value'=> \Yii::$app->user->identity->email])->label(false); ?>

        <div class="form-group">
            <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
        </div>
    <?php ActiveForm::end(); ?>

</div><!-- history -->

<div class="attendance-index">

<?php // echo $this->render('_search', ['model' => $searchModel]); ?>

<?= GridView::widget([
    
    'filterModel' => $model,
    'columns' => [
        ['class' => 'yii\grid\SerialColumn'],

        [
            'attribute' =>'date',
            'label' => 'date',
            'format' => 'date',
        ],
        'time',

    ],
    'dataProvider' => $dataProvider,
]); ?>

</div>
</div>
</div>
</div>
