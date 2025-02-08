<?php

use Illuminate\Database\Seeder;
use App\LearnQuestion;
use Carbon\Carbon;

class LearnQuestionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      \DB::table('learn_questions')->insert([
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '先生のおかげで良い成績が取れました',
          'a' => '多亏老师的指导和帮助,我取得了很好的成绩',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '最初は仕事を辞めて留学へ行こうと考えていました',
          'a' => '最初我打算辞职去留学',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '私は彼のホームページのスクリーンショットを取りました',
          'a' => '我截了一张他的主页的图',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => 'クラス分けテストを受けました',
          'a' => '我参加了分班考试/我接受了分考试.',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '彼女は私と同じクラスの学生です',
          'a' => '她是我的同班同学',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '現地の人はとても優しかったです',
          'a' => '在这里的当地人很溫柔',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '彼は足にケガをした',
          'a' => '他的脚受了',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '頭部に重傷を負った',
          'a' => '光部受重',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => 'ケガをした部位はどこですか？',
          'a' => '受傷部位在哪里',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '薬局にあったらいいなと思うものは何ですか？',
          'a' => '你想要在葯房看到什么',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '中国人は外国人が勇敢に中国語を話すことを、 とても度胸(勇気)があって、とても勇気の入る行動だと考えている',
          'a' => '中国人觉得外国人勇敢说中文是很有胆量,很有勇气的行為',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => 'フォローします',
          'a' => '我美注你了',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => 'フォローして下さい',
          'a' => '清美注我(客人)(朋友)',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '私の小紅アカウントをフォローして下さい',
          'a' => '请关注我的小红书账号',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => 'ご来店の3時間前までにご予約が必要です',
          'a' => '提前3小時預約到店',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '社長は私が小紅を始めていいと言いました',
          'a' => '他説我可以做小紅的内容(在小紅上宣传)',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '大学に入った時からそう思っていましたか?',
          'a' => '剛逆大学就送会想的?',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '大学で学ぶ',
          'a' => '读大学',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '大学院で学ぶ',
          'a' => '读研究生',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '博士課程で学ぶ',
          'a' => '读研究生',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '博士課程で学ぶ',
          'a' => '读博士',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '彼女は大学を終えないで、仕事に就いた',
          'a' => '地没完大学・就去工作了',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '初めて給料をもらった',
          'a' => '第一次到工資',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => 'わたしの給料は少ない',
          'a' => '我的工資很少',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '給料を上げてほしいと言っているのですか?',
          'a' => '説你想工資?',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => 'いつその給料を受け取れますか?',
          'a' => '我社会的候能收到那个二資?',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '日本では過去10年で実質賃金が大幅に下がった',
          'a' => '日本在辻去的10年中央工大幅下降',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '中年危機は40~60才の段階の中年人が 事業、健康、家庭や婚姻など多方面の 問題に直面することを指している',
          'a' => '中年危机,是指40到60分段的中華人他們可能要面事、健康、家庭和婚姻等多方面的問題',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '仕事が不安定',
          'a' => '工作不穏定',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '自営業',
          'a' => '个体经营',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => 'チェーン店',
          'a' => '連鎖店',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '私は〇〇会社に就職しました',
          'a' => '我在〇〇公司東方',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => 'ひっぱらないで',
          'a' => '你別捜我',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '上から目線はやめて',
          'a' => '你別子',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '北京の戸籍がほしい',
          'a' => '想上北京戸口',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => 'ある人は家が必要だと思った時に、へんぴなところに 行って家を買うことを選ぶ',
          'a' => '有一些人他行想要房子、他行洗浄去偏远的地方买房子',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '今日は一緒にごはん食べれる?',
          'a' => '今天和你可以吃饭?',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '状況によるよ、もし仕事が早く終わったら大丈夫',
          'a' => '一看情况,如果我的工作结束的早就可以',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '場所による',
          'a' => '也看在',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '方法による',
          'a' => '也香用',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => 'アルバイトをしてお金を貯める',
          'a' => '打工来存銭',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '夢を実現するために金を貯める',
          'a' => '我会実現梦想而存銭',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => 'ふとんをたたまない',
          'a' => '不整被(子)',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '今日はいい天気ですね',
          'a' => '今天天气真好,不是吗',
          'created_at' => Carbon::now(),
        ],
        /*
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '',
          'a' => '',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '',
          'a' => '',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '',
          'a' => '',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '',
          'a' => '',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '',
          'a' => '',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '',
          'a' => '',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '',
          'a' => '',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '',
          'a' => '',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '',
          'a' => '',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '',
          'a' => '',
          'created_at' => Carbon::now(),
        ],
        [
          'type' => LearnQuestion::TRANSLATE,
          'q' => '',
          'a' => '',
          'created_at' => Carbon::now(),
        ],
        */
      ]);     
    }
}
