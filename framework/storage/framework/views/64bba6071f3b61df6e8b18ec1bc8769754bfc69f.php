<?php $__env->startSection("breadcrumb"); ?>
<li class="breadcrumb-item"><a href="<?php echo e(route("customers.index")); ?>"><?php echo app('translator')->get('fleet.customers'); ?></a></li>
<li class="breadcrumb-item active"> <?php echo app('translator')->get('fleet.edit_customer'); ?></li>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="row">
  <div class="col-md-12">
    <div class="card card-warning">
      <div class="card-header">
        <h3 class="card-title">
          <?php echo app('translator')->get('fleet.edit_customer'); ?>
        </h3>
      </div>

      <div class="card-body">
        <?php if(count($errors) > 0): ?>
        <div class="alert alert-danger">
          <ul>
            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <li><?php echo e($error); ?></li>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </ul>
        </div>
        <?php endif; ?>

        <?php echo Form::open(['route' => ['customers.update',$data->id],'method'=>'PATCH']); ?>

        <?php echo Form::hidden('id',$data->id); ?>

        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <?php echo Form::label('first_name', __('fleet.firstname'), ['class' => 'form-label']); ?>

              <?php echo Form::text('first_name', $data->getMeta('first_name'),['class' => 'form-control','required']); ?>

            </div>
          </div>

          <div class="col-md-6">
            <div class="form-group">
              <?php echo Form::label('last_name', __('fleet.lastname'), ['class' => 'form-label']); ?>

              <?php echo Form::text('last_name', $data->getMeta('last_name'),['class' => 'form-control','required']); ?>

            </div>
          </div>

          <div class="col-md-6">
            <div class="form-group">
              <?php echo Form::label('phone',__('fleet.phone'), ['class' => 'form-label']); ?>

              <div class=" input-group mb-3">
                <div class="input-group-prepend date">
                  <span class="input-group-text"><i class="fa fa-phone"></i></span>
                </div>
                <?php echo Form::text('phone', $data->getMeta('mobno'),['class' => 'form-control','required']); ?>

              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="form-group">
              <?php echo Form::label('email', __('fleet.email'), ['class' => 'form-label']); ?>

              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                </div>
                <?php echo Form::email('email', $data->email,['class' => 'form-control','required']); ?>

              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="form-group">
              <?php echo Form::label('address', __('fleet.address'), ['class' => 'form-label']); ?>

              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fa fa-address-book-o"></i></span>
                </div>
                <?php echo Form::textarea('address', $data->getMeta('address'),['class' => 'form-control','size'=>'30x2']); ?>

              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <?php echo Form::label('gender', __('fleet.gender') , ['class' => 'form-label']); ?><br>
              <input type="radio" name="gender" class="flat-red gender" value="1" <?php if($data->gender == 1): ?> checked <?php endif; ?> required> <?php echo app('translator')->get('fleet.male'); ?><br>
              <input type="radio" name="gender" class="flat-red gender" value="0" <?php if($data->gender == 0): ?> checked <?php endif; ?> required> <?php echo app('translator')->get('fleet.female'); ?>
            </div>
          </div>
        </div>
        <div class="col-md-12">
          <?php echo Form::submit(__('fleet.update'), ['class' => 'btn btn-warning']); ?>

        </div>
        <?php echo Form::close(); ?>

      </div>
    </div>
  </div>
</div>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
<script type="text/javascript">
  //Flat red color scheme for iCheck
  $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
    checkboxClass: 'icheckbox_flat-green',
    radioClass   : 'iradio_flat-green'
  })
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\fleet-manager\framework\resources\views/customers/edit.blade.php ENDPATH**/ ?>