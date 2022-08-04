<?php
$users = array(
    array('first_name' => 'Michael', 'last_name' => 'Choi'),
    array('first_name' => 'John', 'last_name' => 'Supsupin'),
    array('first_name' => 'Mark', 'last_name' => 'Guillen'),
    array('first_name' => 'KB', 'last_name' => 'Tonel'),
    array('first_name' => 'Mark Kenneth', 'last_name' => 'Rillamas'),
    array('first_name' => 'Vincent Bojo', 'last_name' => 'Barcena'),
    array('first_name' => 'Marco Christian', 'last_name' => 'Ragmat'),
    array('first_name' => 'Jeff Daezon', 'last_name' => 'Almarez'),
    array('first_name' => 'Jay Vincent', 'last_name' => 'Sosa'),
    array('first_name' => 'Carl Jonar', 'last_name' => 'Palado'),
    array('first_name' => 'Janine', 'last_name' => 'Macugay'),
    array('first_name' => 'Kristine', 'last_name' => 'Adolfo'),
    array('first_name' => 'Eylla Marie', 'last_name' => 'Micua'),
    array('first_name' => 'Arlene', 'last_name' => 'Quijano'),
    array('first_name' => 'Kathrine Rio', 'last_name' => 'Dumlao')

);

?>
<?php if (count($users) > 0) : ?>
    <table>
        <thead>
            <tr>
                <th>User #</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Full Name</th>
                <th>Full Name in upper case</th>
                <th>Length of Full Names (without space)</th>
            </tr>
        </thead>
        <?php  $i = 0; foreach ($users as $row) : array_map('htmlentities', $row);  $i++; ?>
            <tr class = " <?= ($i % 10 == 0 || $i % 10 == 5)? 'grey' : ' ';?> ">
            <td><?=  $i;?></td>
                <td><?= implode('</td><td>', $row); ?></td>
                <td><?= implode(" " ,$row); ?></td>
                <td><?= strtoupper(implode(" " ,$row)); ?></td>
                <td><?= strlen(implode("" ,$row));?></td>
            </tr>
            <!-- <?php  ?> -->
        <?php endforeach; ?>
        </tbody>
    </table>
<?php endif; ?>

<style>

table {
  background: white; 
  border: 1px solid black; 
  border-collapse: collapse;
  width: 1000px;
  text-align: center;
}

td, tr, th {
border-collapse: collapse;
  border: 1px solid black; 
} 
.grey{
      background-color: black;
      color: white;
}


</style>