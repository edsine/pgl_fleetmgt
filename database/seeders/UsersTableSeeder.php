<?php
namespace Database\Seeders;

use App\Model\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class UsersTableSeeder extends Seeder
{

    /**
     * Run the database seeds.
     *
     * @return void
     */

    public function run()
    {
        

        $user = User::on('mysql2')->find(1);//UsersModel::create($userDetails);
        // DB::table('users')->insert($users);

        $role = Role::on('mysql2')->find(1);//Role::create(['name' => 'Admin']);

        $permissions = Permission::on('mysql2')->pluck('id','id')->all();

        //$role->syncPermissions($permissions);
        //$role->syncPermissions($permissions);
        $role->givePermissionTo($permissions);
        //$permissions->syncRoles($role);
        //$user->assignRole([$role->id]);
    }
}
