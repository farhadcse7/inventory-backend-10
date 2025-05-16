<?php

namespace App\Repositories\SystemSetting;

use App\Models\SystemSetting;

class SystemSettingRepository implements SystemSettingInterface
{
    /*
    * @param $data
    * @return mixed|void
    */

    public function store($request_data)
    {
        $data =  SystemSetting::create([
            'site_name' => 'Inventory Shop -1',
            "site_logo" => null,
            "site_favicon" => null,
            'site_phone' => 123456789,
            'site_email' => 'admin@inventory.com',
            "site_facebook_link" => 'inventory@facebook.com',
            "meta_keywords" => 'POS, Inventory, Shopping',
            "meta_description" => 'Its a mult product inventory shop'
        ]);

        return $this->show($data->id);
    }

    /*
    * @retun mixed|void
    */

    public function all()
    {
        $data = SystemSetting::firstOrFail();
        return $data;
    }

    /*
    * @retun mixed|void
    */

    public function show($id)
    {
        $data = SystemSetting::firstOrFail($id);
        return $data;
    }

    /*
    * @param $data
    * @return mixed|void
    */

    public function update($request_data, $id)
    {
        $data = $this->show($id);
        $data->update([
            'site_name' => 'Inventory Shop -1',
            "site_logo" => null,
            "site_favicon" => null,
            'site_phone' => 123456789,
            'site_email' => 'admin@inventory.com',
            "site_facebook_link" => 'inventory@facebook.com',
            "meta_keywords" => 'POS, Inventory, Shopping',
            "meta_description" => 'Its a mult product inventory shop'
        ]);

        return $data;
    }

    /*
    * @retun mixed|void
    */

    public function delete($id)
    {
        $data = $this->show($id);
        $data->delete();
        return true;
    }

}
