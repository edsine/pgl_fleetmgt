<?php ($date_format_setting=(Hyvikk::get('date_format'))?Hyvikk::get('date_format'):'d-m-Y'); ?>

<?php $__env->startSection("breadcrumb"); ?>
<li class="breadcrumb-item active"><?php echo app('translator')->get('menu.my_bookings'); ?></li>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="row">
  <div class="col-md-12">
    <div class="card card-info">
      <div class="card-header">
        <h3 class="card-title"><?php echo app('translator')->get('menu.my_bookings'); ?></h3>
      </div>

      <div class="card-body table-responsive">
        <table class="table" id="data_table">
          <thead class="thead-inverse">
            <tr>
              <th><?php echo app('translator')->get('fleet.id'); ?></th>
              <th><?php echo app('translator')->get('fleet.customer'); ?></th>
              <th><?php echo app('translator')->get('fleet.vehicle'); ?></th>
              <th><?php echo app('translator')->get('fleet.pickup'); ?></th>
              <th><?php echo app('translator')->get('fleet.dropoff'); ?></th>
              <th><?php echo app('translator')->get('fleet.pickup_addr'); ?></th>
              <th><?php echo app('translator')->get('fleet.dropoff_addr'); ?></th>
              <th><?php echo app('translator')->get('fleet.passengers'); ?></th>
            </tr>
          </thead>
          <tbody>
            <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
              <td><?php echo e($row->id); ?></td>
              <td><?php echo e($row->customer->name); ?></td>
              <td><?php echo e($row->vehicle->maker['make']); ?> - <?php echo e($row->vehicle->vehiclemodel['model']); ?> - <?php echo e($row->vehicle['license_plate']); ?></td>
              <td>
              <?php if($row->pickup != null): ?>
              <?php echo e(date($date_format_setting.' g:i A',strtotime($row->pickup))); ?>

              <?php endif; ?>
              </td>
              <td>
              <?php if($row->dropoff != null): ?>
              <?php echo e(date($date_format_setting.' g:i A',strtotime($row->dropoff))); ?>

              <?php endif; ?>
              </td>
              <td><?php echo e($row->pickup_addr); ?></td>
              <td><?php echo e($row->dest_addr); ?></td>
              <td><?php echo e($row->travellers); ?></td>
            </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </tbody>
          <tfoot>
            <tr>
              <th></th>
              <th><?php echo app('translator')->get('fleet.customer'); ?></th>
              <th><?php echo app('translator')->get('fleet.vehicle'); ?></th>
              <th><?php echo app('translator')->get('fleet.pickup'); ?></th>
              <th><?php echo app('translator')->get('fleet.dropoff'); ?></th>
              <th><?php echo app('translator')->get('fleet.pickup_addr'); ?></th>
              <th><?php echo app('translator')->get('fleet.dropoff_addr'); ?></th>
              <th><?php echo app('translator')->get('fleet.passengers'); ?></th>
            </tr>
          </tfoot>
        </table>
      </div>
    </div>
  </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\fleet-manager\framework\resources\views/drivers/my_bookings.blade.php ENDPATH**/ ?>