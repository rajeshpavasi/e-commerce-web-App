<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
class UsersTableSeeder extends Seeder {
 
    public function run()
    {
        DB::table('users')->delete();
 
        DB::table('users')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Rajesh',
  		        'email' => 'rajeshpavasi@gmail.com',
  		        'email_verified_at' => '2023-01-04 00:54:22',
                'password' => Hash::make('Test@123'),
                'remember_token' => 'Test@123',
 		        'created_at' =>'2023-01-03 00:54:22',
                'updated_at' =>'2023-01-03 00:54:22',
            ),
           
        ));
    }
 
}
