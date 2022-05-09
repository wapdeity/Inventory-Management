<?php

namespace Modules\AdminUserManager\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProfileRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'image' => 'nullable',
            'name' => 'required|max:255',
            'designation' => 'nullable|max:255',
            'email' => 'required|unique:App\User,email,'.$this->segment(3).',id',
            'mobile' => 'required|numeric|min:10|unique:App\User,mobile,'.$this->segment(3).',id',
            'company' => 'nullable|max:255',
            'address' => 'nullable|max:255',
            'address_two' => 'nullable|max:255',
            'city' => 'required|max:255',
            'state' => 'required|max:255',
        ];
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
}
