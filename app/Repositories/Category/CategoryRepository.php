<?php

namespace App\Repositories\Category;

use App\Models\Category;
use Illuminate\Support\Str;

class CategoryRepository implements CategoryInterface
{
    /*
    * @param $data
    * @return mixed|void
    */

    public function store($request_data)
    {
        $data =  Category::create([
            'name' => $request_data->name,
            'slug' => Str::slug($request_data->name),
            'code' => $request_data->code,
        ]);

        return $this->show($data->id);
    }

    /*
    * @retun mixed|void
    */

    public function all()
    {
        $data = Category::latest('id')
        ->get();
        return $data;
    }

    /*
    * @retun mixed|void
    */

    public function allPaginate($perPage)
    {
        $data = Category::latest('id')
        ->paginate($perPage);

        return $data;
    }

    /*
    * @retun mixed|void
    */

    public function show($id)
    {
        return Category::findOrFail($id);
    }

    /*
    * @param $data
    * @return mixed|void
    */

    public function update($request_data, $id)
    {
        $data = $this->show($id);
        $data->update([
            'name' => $request_data->name,
            'slug' => Str::slug($request_data->name),
            'code' => $request_data->code,
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

    /*
    * @retun mixed|void
    */

    public function status($id)
    {
        $data = $this->show($id);
        if($data->is_active == 1){
            $data->is_active = 0;
        }elseif($data->is_active == 0){
            $data->is_active = 1;
        }
        $data->save();
        return $data;
    }

}
