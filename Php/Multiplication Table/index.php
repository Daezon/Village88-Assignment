
<style>
.head{
     font-weight: bolder;
}
table {
  background: white; 
  border: 1px solid black; 
  border-collapse: collapse;
  width: 500px;
  text-align: center;
}

td, tr, th {
border-collapse: collapse;
  border: 1px solid black; 
} 
.white{
      background-color: whitesmoke;
}
.grey{
      background-color: gray
}




</style>
<table>
      <tr class="head">
            <td></td>
            <?php for ($i = 1; $i <= 9; $i++) { ?>
                  <td><?= $i ?></td>
                  <?php } ?>
      </tr>
      <?php for ($i = 1; $i <= 9; $i++) { ?>
            <tr class = " <?= ($i % 2 != 0)? 'grey' : ' ';?> ">
                  <td class="head"><?= $i ?></td>
                  <?php for ($j = 1; $j <= 9; $j++) { ?>
                        <?php $equal = $i * $j; ?>
                        <td id = "equal"><?= $equal ?></td>
                        <?php } ?>
                  <?php } ?>
            </tr>
</table>