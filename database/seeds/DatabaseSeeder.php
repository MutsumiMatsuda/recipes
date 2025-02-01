<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         //$this->call(NutrientsTableSeeder::class);
         //$this->call(MaterialcategoriesTableSeeder::class);
         //$this->call(MaterialsTableSeeder::class);
         //$this->call(NutrientMaterialsTableSeeder::class);
         //$this->call(RecipeCategoriesTableSeeder::class);
         //$this->call(DifficultiesTableSeeder::class);
         //$this->call(MaterialrecipesTableSeeder::class);
         //$this->call(TastesTableSeeder::class);
         //$this->call(FeelingsTableSeeder::class);
         //$this->call(HowtosTableSeeder::class);
         //$this->call(MenuSeeder::class);
         //$this->call(RecipeCountryTableSeeder::class);
        //$path = 'database/sql/dump07.sql';
        //\DB::unprepared(file_get_contents($path));
        /*
        \DB::table('recipe_countries')->insert([
          [
              'name' => '和食',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
          [
              'name' => '洋食',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
          [
              'name' => '中華',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
          [
              'name' => 'エスニック',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
        ]);

        \DB::table('mainsubs')->insert([
          [
              'name' => '主菜',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
          [
              'name' => '副菜',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
          [
              'name' => 'その他',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
        ]);
        */
        /*
        \DB::table('seasons')->insert([
          [
              'id' => 1,
              'name' => '春',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
          [
              'id' => 2,
              'name' => '夏',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
          [
              'id' => 3,
              'name' => '秋',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
          [
              'id' => 4,
              'name' => '冬',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
        ]);
        \DB::table('tags')->insert([
          [
              'id' => 1,
              'name' => '目に良い',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
          [
              'id' => 2,
              'name' => '体重を増やす',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
          [
              'id' => 3,
              'name' => '消化が良い',
              'created_at' => new DateTime(),
              'updated_at' => new DateTime(),
          ],
        ]);
        DB::table('users')->insert([
        [
          'name' => '松田睦',
          'email' => 'matsuda_mutsumi@r3.dion.ne.jp',
          'password' => Hash::make('lovekayo'),
        ],
        */
      ]);

    }
}
