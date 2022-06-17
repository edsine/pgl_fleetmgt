<?php
namespace Database\Seeders;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
//use App\s\Users;

class PermissionSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $modules = array(
            'Users',
            'Drivers',
            'Customer',
            'VehicleType',
            'VehicleMaker',
            'VehicleModels',
            'VehicleColors',
            'VehicleGroup',
            'VehicleInspection',
            'BookingQuotations',
            'PartsCategory',
            'Mechanics',
            'Vehicles',
            'Transactions',
            'Bookings',
            'Reports',
            'Fuel',
            'Vendors',
            'Parts',
            'WorkOrders',
            'Notes',
            'ServiceReminders',
            'ServiceItems',
            'Testimonials',
            'Team',
            'Settings',
            'Inquiries',
        );
        foreach ($modules as $row) {

            Permission::create(['name' => $row . " add"]);
            Permission::create(['name' => $row . " edit"]);
            Permission::create(['name' => $row . " delete"]);
            Permission::create(['name' => $row . " list"]);
            Permission::create(['name' => $row . " import"]);
        }
        
    }
}
