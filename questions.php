<?php
    require_once 'header.php';

?>

<div id="content">
    <input type="hidden" id="nav_trigger_input" value="students"/>
    <table id="users">
        <thead>
            <tr>
                <th style="width:20%"> Имена на потребителя:</th>
                <th> Въпрос/Препоръка:</th>
            </tr>
        </thead>
        <tbody id="tb">
            <?php

                $questions = fRecordSet::buildFromSQL('Question', 'SELECT questions.* FROM questions');

                foreach ($questions as $question) {?>
                    <tr>
                        <td style="width:20%"><?php echo $question->getFirstName() . ' ' . $question->getLastName(); ?></td>
                        <td><?php echo $question->getText(); ?></td>
                    </tr>
            <?php }

            ?>
        </tbody>
    </table>


</div>
<?php
    require_once 'footer.php';
?>