<?php

use Illuminate\Database\Seeder;

class TestTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('menus')->insert([
        [
            'name' => '圧力鍋',
            'created_at' => new DateTime(),
            'updated_at' => new DateTime(),
         ],
        [
            'name' => 'オーブン',
            'created_at' => new DateTime(),
            'updated_at' => new DateTime(),
         ],
        [
            'name' => 'レンジ',
            'created_at' => new DateTime(),
            'updated_at' => new DateTime(),
         ],
    ]);
    }
}
