<?php

/*
@copyright

Fleet Manager v6.0.0

Copyright (C) 2017-2021 Hyvikk Solutions <https://hyvikk.com/> All rights reserved.
Design and developed by Hyvikk Solutions <https://hyvikk.com/>

 */

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class DriverVehicleModel extends Model
{

    protected $table = "driver_vehicle";
    protected $fillable = ['driver_id', 'vehicle_id'];

    public function vehicle()
    {
        return $this->hasOne("App\Model\VehicleModel", "id", "vehicle_id")->withTrashed();
    }

    public function assigned_driver()
    {
        return $this->hasOne("App\Model\User", "id", "driver_id")->withTrashed();
    }
}
