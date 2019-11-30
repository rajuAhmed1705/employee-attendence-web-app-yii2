<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\time\TimePicker;
use mdm\admin\components\MenuHelper;
use yii\bootstrap\Nav;

/* @var $this yii\web\View */
/* @var $model app\models\Attendance */
/* @var $form ActiveForm */
echo Nav::widget([
    'items' => MenuHelper::getAssignedMenu(Yii::$app->user->id)
]);
$this->title = 'Add attendance';
?>
<h1><?= Html::encode($this->title) ?></h1>
<hr>
<div class="container">
    <div class="row">
        <div class="col-sm-3">
            <ul class="list-group">
                <?= Html::a('history', ['attendance/history'], ['class' => 'list-group-item']) ?>
                <?= Html::a('dashboard', ['attendance/index'], ['class' => 'list-group-item']) ?>
            </ul>
        </div>
        <div class="col-sm-9">
            <div class="attendance">

        <?php $form = ActiveForm::begin(); ?>

            <?= $form->field($model, 'time')->widget(TimePicker::classname(), [
                //'name' => 'time',
                'pluginOptions' => [
                    'showSeconds' => false,
                    'minuteStep' => 1,
                    'defaultTime' => 'current',
                ]
            ]); ?>

            <!-- <?= $form->field($model, 'date') ?> -->
            <?= $form->field($model, 'date')->hiddenInput(['value'=> date("Y-m-d")])->label(false); ?>
            <?= $form->field($model, 'email')->hiddenInput(['value'=> \Yii::$app->user->identity->email])->label(false); ?>

            <div class="form-group">
                <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
            </div>
        <?php ActiveForm::end(); ?>

        </div><!-- attendance -->
        </div>

</div>
</div>