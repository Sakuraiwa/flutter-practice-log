// *便利な書き方（printに$変数名）
// void main(){
//   int age = 27;
//   int birth = 1997;
//   print("私は$birth年生まれの$age才です");
// }

// !関数
// void main(){
//   shori1(); // 関数を呼び出す
//   shori2(); // 同上
// }
// void shori1(){ // 関数を定義
//   print("処理1-1");
//   print("処理1-2");
//   print("処理1-3");
//   }

// void shori2(){ // 関数を定義
//   print("処理2-1");
//   print("処理2-2");
//   print("処理2-3");
//   }

// *変数のスコープ
// void main(){
//   int a = 0;
//   print(a);

//   shori1();
//   shori2();
// }

// void shori1(){
//   // print(a); // エラー
// }

// void shori2(){
//   int a = 10;
//   print(a); // mainのaとは別
// }

// *戻り値
// void main() {
//   int a = test();

//   print(a);
// }

// int test() {
//   int answer = 10 + 5;

//   return answer;
// }

// *引数
// void main() {
//   test("文字", 10);
// }

// void test(String a, int b) {
//   print(a * b);
// }

// *値のスコープに注意
// 予想---100,10,20,100,20
// 結果---100,10,20,100,20
// void main() {
//   int a = 100;
//   print(a);

//   int b = test(10);
//   print(a);
//   print(b);
// }

// int test(int a) {
//   print(a);

//   a += 10;
//   print(a);

//   return a;
// }

// !クラス
void main() {
  car obj = car(); // インスタンスの生成

  print(obj.speed); // .は「～の～」と読むと分かりやすいです
  obj.accelerate();
  print(obj.speed);
  obj.brake();
  print(obj.speed);
}

class car {
  // *設計図(クラス)
  int speed = 0; // 変数（フィールド）
  int energy = 0; // ガソリン

  // *関数（メソッド）
  // アクセル
  void accelerate() {
    if (energy > 0) {
      speed++;
    }
  }

  // ブレーキ
  void brake() {
    speed--;
  }
}

// 設計図だけじゃ車には乗れませんね？
// クラスから作り出した実体(インスタンス)を作る必要があります(main)
