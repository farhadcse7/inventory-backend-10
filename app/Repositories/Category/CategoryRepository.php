<?php

namespace App\Repositories\Category;

use App\Models\Category;
use App\Service\FileUploadService;
use Illuminate\Support\Str;

class CategoryRepository implements CategoryInterface
{
    private $file_path = "public/category";
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

        /* image upload */
        $image_path = (new FileUploadService())->imageUpload($request_data, $data, $this->file_path);

        /* Update file stage */
        $data->update([
            'file' => 'http://localhost:8000'.$image_path
        ]);
        return $this->show($data->id);
    }

    /*
    * @retun mixed|void
    */

    public function all()
    {
        $data = Category::latest('id')
        ->when(request('name'), function($query){
            $query->where(['name' => request('name')]);
        })
        ->when(request('code'), function($query){
            $query->where(['code' => request('code')]);
        })
        ->get();
        return $data;
    }

    /*
    * @retun mixed|void
    */

    public function allPaginate($perPage)
    {
        $data = Category::latest('id')
        ->when(request('search'), function($query){
            $query->where('name', 'like', '%'.request('search').'%')
                ->orWhere('code', 'like', '%'.request('search').'%');
        })
        ->when(request('name'), function($query){
            $query->where(['name' => request('name')]);
        })
        ->when(request('code'), function($query){
            $query->where(['code' => request('code')]);
        })
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
        /* image upload */
        $image_path = (new FileUploadService())->imageUpload($request_data, $data, $this->file_path);

        /* Update file stage */
        $data->update([
            'file' => 'http://localhost:8000'.$image_path
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
