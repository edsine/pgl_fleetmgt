<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\VehicleModelRequest;
use App\Model\VehicleMake;
use App\Model\VehiclesModel;
use Illuminate\Http\Request;

class VehicleModelController extends Controller
{
    public function __construct()
    {
        // $this->middleware(['role:Admin']);
        $this->middleware('permission:VehicleModels add',['only' => ['create','store']]);
        $this->middleware('permission:VehicleModels edit',['only' => ['edit','update']]);
        $this->middleware('permission:VehicleModels delete',['only' => ['bulk_delete', 'destroy']]);
        $this->middleware('permission:VehicleModels list');
    }

    public function index()
    {
        $index['data'] = VehiclesModel::get();
        return view('VehiclesModel.index', $index);
    }

    public function create()
    {
        $vehicle_makes = VehicleMake::get();
        return view('VehiclesModel.create', compact('vehicle_makes'));
    }

    public function store(VehicleModelRequest $request)
    {
        $new = VehiclesModel::create([
            'make_id' => $request->make_id,
            'model' => $request->model,
        ]);

        return redirect()->route('vehicle-model.index');
    }

    public function edit($id)
    {
        $data['vehicle_makes'] = VehicleMake::get();
        $data['VehiclesModel'] = VehiclesModel::find($id);
        return view('VehiclesModel.edit', $data);
    }

    public function update(VehicleModelRequest $request)
    {

        $data = VehiclesModel::find($request->get('id'));
        $data->update([
            'make_id' => $request->make_id,
            'model' => $request->model,
        ]);

        return redirect()->route('vehicle-model.index');
    }

    public function destroy(Request $request)
    {
        VehiclesModel::find($request->get('id'))->delete();
        return redirect()->route('vehicle-model.index');
    }

    public function bulk_delete(Request $request)
    {
        VehiclesModel::whereIn('id', $request->ids)->delete();
        return back();
    }
}
