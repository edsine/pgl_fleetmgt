<?php $__env->startSection('extra_css'); ?>
  <link rel="stylesheet" href="<?php echo e(asset('assets/css/bootstrap-datepicker.min.css')); ?>">
  <style type="text/css">
    .checkbox, #chk_all{
      width: 20px;
      height: 20px;
    }
  </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection("breadcrumb"); ?>
<li class="breadcrumb-item "><a href="<?php echo e(route("bookings.index")); ?>"><?php echo app('translator')->get('menu.bookings'); ?></a></li>
<li class="breadcrumb-item active"><?php echo app('translator')->get('fleet.transactions'); ?></li>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="row">
  <div class="col-md-12">
    <div class="card card-info">
      <div class="card-header with-border">
        <h3 class="card-title"> <?php echo app('translator')->get('fleet.transactions'); ?>
        </h3>
      </div>

      <div class="card-body">
        <div class="table-responsive">
          <table class="table display" id="data_table" style="padding-bottom: 35px; width: 100%">
            <thead class="thead-inverse">
              <tr>
                <th><?php echo app('translator')->get('fleet.id'); ?></th>
                <th><?php echo app('translator')->get('fleet.customer'); ?></th>
                <th><?php echo app('translator')->get('fleet.method'); ?></th>
                <th><?php echo app('translator')->get('fleet.payment_id'); ?></th>
                <th><?php echo app('translator')->get('fleet.status'); ?></th>
                <th><?php echo app('translator')->get('fleet.amount'); ?></th>
                <th><?php echo app('translator')->get('fleet.date'); ?></th>
              </tr>
            </thead>
            <tbody>
              <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
               <tr>
                <td><?php echo e($row->id); ?></td>
                <td>
                  <?php echo e($row->booking->customer->name); ?>

                </td>
                <td><?php echo e($row->method); ?></td>
                <td><?php echo e($row->transaction_id); ?></td>
                <td><?php echo e($row->payment_status); ?></td>
                <td><?php echo e(Hyvikk::get('currency').' '. $row->amount); ?></td>
                <td><?php echo e(date('d-m-Y g:i A',strtotime($row->created_at))); ?></td>
              </tr>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
            <tfoot>
              <tr>
                <th><?php echo app('translator')->get('fleet.id'); ?></th>
                <th><?php echo app('translator')->get('fleet.customer'); ?></th>
                <th><?php echo app('translator')->get('fleet.method'); ?></th>

                <th><?php echo app('translator')->get('fleet.payment_id'); ?></th>
                <th><?php echo app('translator')->get('fleet.status'); ?></th>
                <th><?php echo app('translator')->get('fleet.amount'); ?></th>
                <th><?php echo app('translator')->get('fleet.date'); ?></th>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\fleet-manager\framework\resources\views/bookings/transactions.blade.php ENDPATH**/ ?>