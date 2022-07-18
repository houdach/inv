<?php
  require_once('C:\xampp\htdocs\InventorySystem_PHP\includes\sql.php');
 $user = current_user(); ?>
<?php
  $page_title = 'Add Product';
  session_start();
  require_once('C:\xampp\htdocs\InventorySystem_PHP\includes\load.php');
  // Checkin What level user has permission to view this page
?>
<?php
 if(isset($_POST['add_product'])){
   $req_fields = array('product-title','product-quantity','product-sheetId', 'product-respo' );
   validate_fields($req_fields);
   if(empty($errors)){
     $p_name  = remove_junk($db->escape($_POST['product-title']));
     $p_res  = remove_junk($db->escape($_POST['product-respo']));
     $p_sheetId   = remove_junk($db->escape($_POST['product-sheetId']));
     $p_qty   = remove_junk($db->escape($_POST['product-quantity']));
     $date    = make_date();
     $query  = "INSERT INTO products (";
     $query .=" name,quantity,respo,sheetId,date";
     $query .=") VALUES (";
     $query .=" '{$p_name}', '{$p_qty}', '{$p_res}', '{$p_sheetId}','{$date}'";
     $query .=")";
     $query .=" ON DUPLICATE KEY UPDATE name='{$p_name}'";
     if($db->query($query)){
       $session->msg('s',"Produit ajouté");
       redirect('add_product.php', false);
     } else {
       $session->msg('d',' impossible dajouter!');
       redirect('product.php', false);
     }

   } else{
     $session->msg("d", $errors);
     redirect('add_product.php',false);
   }

 }

?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-12">
    <?php echo display_msg($msg); ?>
  </div>
</div>
  <div class="row">
  <div class="col-md-8">
      <div class="panel panel-default">
        <div class="panel-heading">
          <strong>
            <span class="glyphicon glyphicon-th"></span>
            <span>Ajouter Nouveau produit</span>
         </strong>
        </div>
        <div class="panel-body">
         <div class="col-md-12">
          <form method="post" action="add_product.php" class="clearfix">
              <div class="form-group">
                <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="text" class="form-control" name="product-title" placeholder="Product Title">
               </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="text" class="form-control" name="product-respo" placeholder="product respo" value ="<?= ucfirst($user['name']); ?>">
               </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="text" class="form-control" name="product-sheetId" placeholder="Product sheetId">
               </div>
              </div>

              <div class="form-group">
               <div class="row">
                 <div class="col-md-4">
                   <div class="input-group">
                     <span class="input-group-addon">
                      <i class="glyphicon glyphicon-shopping-cart"></i>
                     </span>
                     <input type="number" class="form-control" name="product-quantity" placeholder="Product Quantity">
                  </div>
                 </div>
               </div>
              </div>
              <button type="submit" name="add_product" class="btn btn-danger">Add product</button>
          </form>
         </div>
        </div>
      </div>
    </div>
  </div>

<?php include_once('layouts/footer.php'); ?>
