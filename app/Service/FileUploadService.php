<?php

namespace App\Service;

use Illuminate\Support\Facades\Storage;

class FileUploadService
{
    public function imageUpload($request, $model, $path='public/uploads')
    {
        if($request->file !=null){
            $uploaded_file = $request->file;
            $file_extension = $uploaded_file->getClientOriginalExtension();

            /** check if old file exist */
            if($model->file !=null){
                Storage::delete($model->file);
            }

            $file_upload_url = Storage::putFileAs($path, $uploaded_file, $model->id.'.'.$file_extension, 'public');
            return Storage::url($file_upload_url);
        }
        return;

    }
}
