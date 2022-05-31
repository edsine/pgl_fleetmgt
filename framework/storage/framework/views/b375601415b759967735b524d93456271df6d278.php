<?php $__env->startSection("breadcrumb"); ?>
<li class="breadcrumb-item active"><?php echo app('translator')->get('fleet.vehicle_types'); ?></li>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('extra_css'); ?>
<style type="text/css">
  .checkbox, #chk_all{
    width: 20px;
    height: 20px;
  }
</style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="row">
  <div class="col-md-12">
    <div class="card card-info">
      <div class="card-header">
        <h3 class="card-title"><?php echo app('translator')->get('fleet.vehicle_types'); ?> &nbsp;
          <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('VehicleType add')): ?><a href="<?php echo e(route('vehicle-types.create')); ?>" class="btn btn-success"><?php echo app('translator')->get('fleet.addNew'); ?></a></h3><?php endif; ?>
      </div>

      <div class="card-body table-responsive">
        <table class="table" id="data_table">
          <thead class="thead-inverse">
            <tr>
              <th>
                <?php if($data->count() > 0): ?>
                <input type="checkbox" id="chk_all">
                <?php endif; ?>
              </th>
              <th>#</th>
              <th><?php echo app('translator')->get('fleet.icon_img'); ?></th>
              <th><?php echo app('translator')->get('fleet.vehicle_type'); ?></th>
              <th><?php echo app('translator')->get('fleet.displayname'); ?></th>
              <th><?php echo app('translator')->get('fleet.seats'); ?></th>
              <th><?php echo app('translator')->get('fleet.isenable'); ?></th>
              <th><?php echo app('translator')->get('fleet.action'); ?></th>
            </tr>
          </thead>
          <tbody>
            <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
              <td>
                <input type="checkbox" name="ids[]" value="<?php echo e($row->id); ?>" class="checkbox" id="chk<?php echo e($row->id); ?>" onclick='checkcheckbox();'>
              </td>
              <td><?php echo e($row->id); ?></td>
              <td>
              <?php if($row->icon != null): ?>
              <img src="<?php echo e(asset('uploads/'.$row->icon)); ?>" height="70px" width="70px">
              <?php else: ?>
              <img src="<?php echo e(asset("assets/images/vehicle.jpeg")); ?>" height="70px" width="70px">
              <?php endif; ?>
              </td>
              <td><?php echo e($row->vehicletype); ?></td>
              <td><?php echo e($row->displayname); ?></td>
              <td><?php echo e($row->seats); ?></td>
              <td>
              <?php if($row->isenable == 1): ?>
              YES
              <?php else: ?>
              NO
              <?php endif; ?>
              </td>
              <td>
              <div class="btn-group">
              <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
              <span class="fa fa-gear"></span>
              <span class="sr-only">Toggle Dropdown</span>
              </button>
              <div class="dropdown-menu custom" role="menu">
              <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('VehicleType edit')): ?><a class="dropdown-item" href="<?php echo e(url("admin/vehicle-types/".$row->id."/edit")); ?>"> <span aria-hidden="true" class="fa fa-edit" style="color: #f0ad4e;"></span> <?php echo app('translator')->get('fleet.edit'); ?></a><?php endif; ?>
              <?php echo Form::hidden("id",$row->id); ?>


              <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('VehicleType delete')): ?><a class="dropdown-item" data-id="<?php echo e($row->id); ?>" data-toggle="modal" data-target="#myModal"> <span aria-hidden="true" class="fa fa-trash" style="color: #dd4b39"></span> <?php echo app('translator')->get('fleet.delete'); ?></a><?php endif; ?>
              </div>
              </div>
              <?php echo Form::open(['url' => 'admin/vehicle-types/'.$row->id,'method'=>'DELETE','class'=>'form-horizontal','id'=>'form_'.$row->id]); ?>


              <?php echo Form::hidden("id",$row->id); ?>


              <?php echo Form::close(); ?>

              </td>
            </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </tbody>
          <tfoot>
            <tr>
              <th>
                <?php if($data->count() > 0): ?>
                <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('VehicleType delete')): ?><button class="btn btn-danger" id="bulk_delete" data-toggle="modal" data-target="#bulkModal" disabled><?php echo app('translator')->get('fleet.delete'); ?></button><?php endif; ?>
                <?php endif; ?>
              </th>
              <th>#</th>
              <th><?php echo app('translator')->get('fleet.icon_img'); ?></th>
              <th><?php echo app('translator')->get('fleet.vehicle_type'); ?></th>
              <th><?php echo app('translator')->get('fleet.displayname'); ?></th>
              <th><?php echo app('translator')->get('fleet.seats'); ?></th>
              <th><?php echo app('translator')->get('fleet.isenable'); ?></th>
              <th><?php echo app('translator')->get('fleet.action'); ?></th>
            </tr>
          </tfoot>
        </table>
      </div>
    </div>
  </div>
</div>

<!-- Modal -->
<div id="bulkModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title"><?php echo app('translator')->get('fleet.delete'); ?></h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <?php echo Form::open(['url'=>'admin/delete-vehicle-types','method'=>'POST','id'=>'form_delete']); ?>

        <div id="bulk_hidden"></div>
        <p><?php echo app('translator')->get('fleet.confirm_bulk_delete'); ?></p>
      </div>
      <div class="modal-footer">
        <button id="bulk_action" class="btn btn-danger" type="submit" data-submit=""><?php echo app('translator')->get('fleet.delete'); ?></button>
        <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo app('translator')->get('fleet.close'); ?></button>
      </div>
        <?php echo Form::close(); ?>

    </div>
  </div>
</div>
<!-- Modal -->

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title"><?php echo app('translator')->get('fleet.delete'); ?></h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <p><?php echo app('translator')->get('fleet.confirm_delete'); ?></p>
      </div>
      <div class="modal-footer">
        <button id="del_btn" class="btn btn-danger" type="button" data-submit=""><?php echo app('translator')->get('fleet.delete'); ?></button>
        <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo app('translator')->get('fleet.close'); ?></button>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script type="text/javascript">
  $("#del_btn").on("click",function(){
    var id=$(this).data("submit");
    $("#form_"+id).submit();
  });

  $('#myModal').on('show.bs.modal', function(e) {
    var id = e.relatedTarget.dataset.id;
    $("#del_btn").attr("data-submit",id);
  });

  $('input[type="checkbox"]').on('click',function(){
    $('#bulk_delete').removeAttr('disabled');
  });

  $('#bulk_delete').on('click',function(){
    // console.log($( "input[name='ids[]']:checked" ).length);
    if($( "input[name='ids[]']:checked" ).length == 0){
      $('#bulk_delete').prop('type','button');
        new PNotify({
            title: 'Failed!',
            text: "<?php echo app('translator')->get('fleet.delete_error'); ?>",
            type: 'error'
          });
        $('#bulk_delete').attr('disabled',true);
    }
    if($("input[name='ids[]']:checked").length > 0){
      // var favorite = [];
      $.each($("input[name='ids[]']:checked"), function(){
          // favorite.push($(this).val());
          $("#bulk_hidden").append('<input type=hidden name=ids[] value='+$(this).val()+'>');
      });
      // console.log(favorite);
    }
  });


  $('#chk_all').on('click',function(){
    if(this.checked){
      $('.checkbox').each(function(){
        $('.checkbox').prop("checked",true);
      });
    }else{
      $('.checkbox').each(function(){
        $('.checkbox').prop("checked",false);
      });
    }
  });

  // Checkbox checked
  function checkcheckbox(){
    // Total checkboxes
    var length = $('.checkbox').length;
    // Total checked checkboxes
    var totalchecked = 0;
    $('.checkbox').each(function(){
        if($(this).is(':checked')){
            totalchecked+=1;
        }
    });
    // console.log(length+" "+totalchecked);
    // Checked unchecked checkbox
    if(totalchecked == length){
        $("#chk_all").prop('checked', true);
    }else{
        $('#chk_all').prop('checked', false);
    }
  }
</script>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\fleet-manager\framework\resources\views/vehicle_types/index.blade.php ENDPATH**/ ?>