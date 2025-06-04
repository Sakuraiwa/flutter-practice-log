// // Flutterの基本パッケージを読み込む
// import 'package:flutter/material.dart';

// // アプリのエントリーポイント（起動地点）
// void main() {
//   // runAppでFlutterアプリを起動し、表示するウィジェット(MyApp)を指定
//   runApp(MyApp());
// }

// // StatelessWidget（状態を持たないウィジェット）を継承してアプリを作成
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // MaterialAppはアプリ全体の設定（テーマ、ナビゲーションなど）を担当
//     return MaterialApp(
//       title: 'Flutter Web Sample', // ブラウザタブなどに表示されるタイトル
//       home: Scaffold(
//         // Scaffoldは画面の基本レイアウト枠（ページの土台）を作ってくれる
//         appBar: AppBar(
//           // AppBarはページ上部に表示されるバー（ヘッダー）
//           title: Text('Flutter Web Page'), // AppBar内に表示するタイトルテキスト
//         ),
//         body: Center(
//           // Centerは、子ウィジェット（ここではColumn）を画面の中央に配置
//           child: Column(
//             // Columnはウィジェットを縦方向（上から下）に並べるためのレイアウト
//             mainAxisAlignment: MainAxisAlignment.center,
//             // mainAxisAlignmentは縦方向（主軸）の位置揃えを指定（ここでは中央）
//             crossAxisAlignment: CrossAxisAlignment.center,
//             // crossAxisAlignmentは横方向（副軸）の揃え方（ここでは中央）
//             children: <Widget>[
//               // Columnの子ウィジェットをリストで指定
//               Text(
//                 'こんにちは、Flutter Web!',
//                 style: TextStyle(fontSize: 24), // 文字サイズを24ポイントに設定
//               ),
//               SizedBox(height: 20),
//               // SizedBoxは「空白」を作るためのウィジェット（ここでは高さ20px）
//               ElevatedButton(
//                 // ElevatedButtonは、立体的な見た目の押せるボタン
//                 onPressed: () {
//                   // ボタンが押されたときの処理をここに書く（今回はターミナルに出力）
//                   print('ボタンが押されました');
//                 },
//                 child: Text('ボタンを押してね'), // ボタンのラベルテキスト
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
