// // 複雑な内容をやる前に何もかもわからないので基礎の基礎から写経

// // flutterの基本機能を使えるようにするimport文（おまじないと思ってOK）
// import "package:flutter/material.dart";

// // アプリを実行するためのmain関数（dartプログラムはここから始まる）
// void main() {
//   runApp(MyApp()); // MyAppウィジェットを実行（画面に表示）
//   // runApp() は Flutterの組み込み関数
//   // アプリの「最初の画面（ルートウィジェット）」を指定して実行するもの
//   // MyApp() というウィジェット（画面の設計図）を引数に渡して
//   //そのウィジェットを 画面全体に表示 する処理を行う
// }

// // アプリ全体の設定をまとめたMyAppクラス
// class MyApp extends StatelessWidget {
//   // StatelessWidgetは「動かない画面」という意味
//   @override
//   Widget build(BuildContext context) {
//     // MaterialAppはアプリの土台（画面遷移やテーマを管理）
//     return MaterialApp(
//       title: 'Flutter入門', // アプリの名前（実際は画面に出ないことも多い）
//       home: MyHomePage(), // 実際に表示する画面（下で定義）
//     );
//   }
// }

// // ホーム画面用のウィジェット（画面に表示したい内容を書く）
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Scaffoldは基本画面の枠（AppBarやBody等を配置出来る）
//       appBar: AppBar(
//         title: Text("初めてのFlutter"), // 上のバーに表示される文字
//         // 画面の一番上に横長に表示されるバー（ツールバーとも言います）
//         // アプリ名や画面タイトル、メニューアイコンなどを表示できる部分
//         // 画面の「見出し」や「ナビゲーションの起点」として使われます
//       ),
//       body: Center(
//         // bodyが本文
//         child: Text("こんにちは flutter!"), // 中央に表示されるテキスト
//       ),
//     );
//   }
// }
