// // Flutter UI ウィジェット デモ（初心者向けコメント付き）
// import 'package:flutter/material.dart';

// // アプリのエントリーポイント（最初に実行される関数）
// void main() => runApp(MyApp());

// // アプリのルートウィジェット（StatelessWidgetは状態を持たない）
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter UI Widgets Demo', // アプリのタイトル
//       home: MyHomePage(), // 最初に表示する画面（ホーム画面）
//     );
//   }
// }

// // ホーム画面（状態を持つウィジェット）
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// // ホーム画面の状態クラス（ユーザーの操作に応じて画面を更新）
// class _MyHomePageState extends State<MyHomePage> {
//   // 入力や状態の管理用変数
//   final TextEditingController _controller = TextEditingController(); // テキスト入力用
//   String _inputText = ''; // 入力されたテキストを保持
//   bool _isChecked = false; // チェックボックスの状態
//   bool _isSwitchOn = false; // スイッチの状態
//   int _selectedRadio = 0; // 選択されたラジオボタンの値
//   String _selectedDropdown = '選択肢1'; // ドロップダウンの選択肢
//   double _sliderValue = 0; // スライダーの値

//   // ポップアップメニューの選択処理
//   void _onSelectedMenu(String value) {
//     // 下部にメッセージを表示する
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('選択された: $value')));
//   }

//   // アラートダイアログを表示する関数
//   void _showAlertDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text('アラート'),
//         content: Text('これはアラートダイアログです。'),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context), // ダイアログを閉じる
//             child: Text('OK'),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // アプリの上部バー
//       appBar: AppBar(title: Text('Flutter UI Widgets Demo')),

//       // 右下の丸いボタン（押すとアラート表示）
//       floatingActionButton: FloatingActionButton(
//         onPressed: _showAlertDialog,
//         child: Icon(Icons.warning), // アイコンを表示
//         tooltip: 'ダイアログを表示', // ホバー時のヒント
//       ),

//       // アプリの本体部分
//       body: Padding(
//         padding: EdgeInsets.all(16.0), // 画面の余白
//         child: SingleChildScrollView( // 縦スクロール可能にする
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start, // 左揃え
//             children: [
//               // TextButton（シンプルな文字だけのボタン）
//               TextButton(
//                 onPressed: () {},
//                 child: Text('TextButton'),
//               ),

//               // ElevatedButton（背景つきのボタン）＋Padding（上下の余白）
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 8.0),
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   child: Text('ElevatedButton'),
//                 ),
//               ),

//               // IconButton（アイコンのボタン）
//               IconButton(
//                 icon: Icon(Icons.thumb_up), // サムズアップのアイコン
//                 onPressed: () {},
//               ),

//               // RawMaterialButton（カスタマイズ自由なボタン）
//               RawMaterialButton(
//                 fillColor: Colors.blue, // 背景色
//                 shape: CircleBorder(), // 丸型にする
//                 padding: EdgeInsets.all(16.0), // アイコンの周囲の余白
//                 onPressed: () {},
//                 child: Icon(Icons.star, color: Colors.white), // 白い星アイコン
//               ),

//               Divider(), // 区切り線

//               // TextField（テキスト入力欄）とControllerを使用
//               TextField(
//                 controller: _controller, // 入力管理用のController
//                 decoration: InputDecoration(labelText: 'テキストを入力'),
//                 onChanged: (text) {
//                   setState(() => _inputText = text); // 入力されるたびに変数に反映
//                 },
//               ),
//               Text('入力されたテキスト: $_inputText'), // 入力内容を表示

//               // CheckboxListTile（チェックボックス＋説明文）
//               CheckboxListTile(
//                 title: Text('チェックを入れる'),
//                 value: _isChecked,
//                 onChanged: (value) {
//                   setState(() => _isChecked = value!);
//                 },
//               ),

//               // SwitchListTile（スイッチ＋説明文）
//               SwitchListTile(
//                 title: Text('スイッチ切替'),
//                 value: _isSwitchOn,
//                 onChanged: (value) {
//                   setState(() => _isSwitchOn = value);
//                 },
//               ),

//               // RadioListTile（ラジオボタン）を3つ生成
//               Column(
//                 children: List.generate(3, (index) {
//                   return RadioListTile(
//                     title: Text('選択肢 ${index + 1}'),
//                     value: index,
//                     groupValue: _selectedRadio, // 同じグループの中から1つだけ選べる
//                     onChanged: (value) {
//                       setState(() => _selectedRadio = value!);
//                     },
//                   );
//                 }),
//               ),

//               // DropdownButton（プルダウンメニュー）
//               DropdownButton<String>(
//                 value: _selectedDropdown,
//                 items: ['選択肢1', '選択肢2', '選択肢3']
//                     .map((e) => DropdownMenuItem(value: e, child: Text(e)))
//                     .toList(),
//                 onChanged: (value) {
//                   setState(() => _selectedDropdown = value!);
//                 },
//               ),

//               // PopupMenuButton（クリックで小さなメニューを表示）
//               PopupMenuButton<String>(
//                 onSelected: _onSelectedMenu, // 選ばれたときの処理
//                 itemBuilder: (context) => [
//                   PopupMenuItem(value: 'A', child: Text('メニューA')),
//                   PopupMenuItem(value: 'B', child: Text('メニューB')),
//                 ],
//               ),

//               // Slider（スライダーで数値を変更）
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Slider(
//                     min: 0, // 最小値
//                     max: 100, // 最大値
//                     value: _sliderValue,
//                     onChanged: (value) {
//                       setState(() => _sliderValue = value); // 値を更新
//                     },
//                   ),
//                   Text('スライダーの値: ${_sliderValue.toStringAsFixed(1)}'),
//                 ],
//               ),

//               // SimpleDialog（シンプルなダイアログ）
//               ElevatedButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (context) => SimpleDialog(
//                       title: Text('SimpleDialog'),
//                       children: [
//                         SimpleDialogOption(
//                           onPressed: () => Navigator.pop(context), // 閉じる処理
//                           child: Text('閉じる'),
//                         )
//                       ],
//                     ),
//                   );
//                 },
//                 child: Text('SimpleDialogを表示'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
