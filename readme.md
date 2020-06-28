# hinode

手配線で作る自作キーボードです。  
ケースは3Dプリンターで作りました。

![](https://i.gyazo.com/c823ad2e87fbc44491a4d92f5b71d579.png)

[需要あるかわかりませんがstlファイルも置いています。](./hinode.stl)

Fusion360で作成しています。  
元のファイルも公開してよいのですが、ちまちま修正が続いており、  
かつAutodeskのクラウド上に保存されるため、gitと同期が難しいため置いていません。  
あまりきれいではないですが、欲しい方は言ってください。

回路図です。
![](https://i.gyazo.com/94977ef53c7540481da1c3e2ea383f43.png)

ファームウェアはhelixのものを編集して使っています。

## キーボードレイアウト

[http://www.keyboard-layout-editor.com/](http://www.keyboard-layout-editor.com/)で雰囲気作っています。そのものではありません。  

レイヤーは6つあります。後ろ3つはほぼスッカスカです。

| レイヤー番号 | 名前   | 簡単な説明                     |
| ---          | ---    | ---                            |
| 1            | Qwerty | デフォルトのレイヤーです       |
| 2            | Ystrp  | 独自キー配列のレイヤーです     |
| 3            | Symbol | 記号レイヤーです               |
| 4            | Left   | 方向キーを置いています         |
| 5            | Right  | マウスポインタの操作ができます |
| 6            | Adjust | 何も配置していません           |

## レイヤー詳細

1. [Qwerty](http://www.keyboard-layout-editor.com/##@_name=hinode&author=xcd0&notes=A%20hand-wiring%20split%20keyboard%20with%203D%20print%20case.%20%20%0Ahttps%2F:%2F%2F%2F%2Fgithub.com%2F%2Fxcd0%2F%2Fhinode%20%20%0AZealPC%20Blue%20Zilent%20v2%2062g%20%20&switchMount=cherry%3B&@_c=%23f7c199&a:7&f:5%3B&=&_x:-1%3B&=Alt&_c=%23cccccc%3B&=Esc&=1%0A%0A%0A%0AF1&=2%0A%0A%0A%0AF2&=3%0A%0A%0A%0AF3&=4%0A%0A%0A%0AF4&=5%0A%0A%0A%0AF5&=<&_x:4%3B&=>&=6%0A%0A%0A%0AF6&=7%0A%0A%0A%0AF7&=8%0A%0A%0A%0AF8&=9%0A%0A%0A%0AF9&=0%0A%0A%0A%0AF10&=-%0A%0A%0A%0AF11&=Del%0A%0A%0A%0AF12%3B&@_c=%23f7c199%3B&=GUI&_c=%23dedfff%3B&=Tab&_c=%23cccccc%3B&=Q&=W&=E&=R&=T&=(&_x:4%3B&=)&=Y&=U&=I&=O&=P&=%2F@&=Bs%3B&@_c=%23f7c199%3B&=Ins&_c=%23d18686%3B&=Sym&_c=%23cccccc%3B&=A&=S&=D&=F&=G%0A%0A%0A%0AQWERTY&=%5B%0A%0A%0A%0AEE%20RST&_x:4%3B&=%5D&=H&=J&=K&=L&=%2F%3B&=%2F:&=Ent%3B&@_c=%23f7c199%3B&=Home&=&_c=%23cccccc%3B&=Z&=X&=C&=V&=B%0A%0A%0A%0AYSTRP&=%7B%0A%0A%0A%0ARST&_x:4%3B&=%7D&=N&=M&=,&=.&=%2F%2F&=%5C&_c=%23f7c199%3B&=End%3B&@_rx:5.1&ry:9.55&y:-5.550000000000001&x:-0.5999999999999996&c=%23cccccc%3B&=英%3B&@_rx:15.1&ry:8.7&y:-4.699999999999999&x:-0.5999999999999996&c=%23f7c199%3B&=かな%3B&@_r:15&rx:5.1&y:-4.699999999999999&x:-0.5999999999999996%3B&=Ctlr%3B&@_r:30&y:-1&x:-0.5999999999999996%3B&=Shift%3B&@_r:45&y:-1&x:-0.5999999999999996%3B&=Spc%3B&@_r:60&y:-1&x:-0.5999999999999996&c=%23d18686%3B&=←%3B&@_r:-60&rx:15.1&y:-4.699999999999999&x:-0.5999999999999996%3B&=→%3B&@_r:-45&y:-1&x:-0.5999999999999996&c=%23f7c199%3B&=Bs%3B&@_r:-30&y:-1&x:-0.5999999999999996%3B&=Ent%3B&@_r:-15&y:-1&x:-0.5999999999999996%3B&=Del)  

一般的なQwertyです。  
デフォルトになっています。  

74キーと多少余裕があるため、`Backspace`、`Enter`、`Delete`は右手親指と右手小指に２重に配置されています。  
普段Qwertyの小指で操作しているキーですが実験的に親指に配置して使いやすいのか試しています。
今のところそこまで使いやすいと感じているわけではないです\_(:3 」∠ )\_

更に、`HOME`や`END`、`INSERT`を配置しているほか、1キーが何も割り当てられていません。  
`HOME`や`END`、`INSERT`は個人的に仮想端末で使い勝手が良いので置いています。

	  /* Qwerty
	   * ,-------------------------------------------------------.  ,----------------------------------------------------------.
	   * | GUI  | ESC  |   1  |   2  |   3  |   4  |   5  |  <   |  |   >  |   6  |   7  |   8  |   9  |   0   |  -    | Delete|
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * | Alt  | Tab  |   Q  |   W  |   E  |   R  |   T  |  (   |  |   )  |   Y  |   U  |   I  |   O  |   P   |  @    | BkSp  |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * |Insert|Symbol|   A  |   S  |   D  |   F  |   G  |  {   |  |   }  |   H  |   J  |   K  |   L  |   ;   |  :    | Enter |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * | HOME |      |   Z  |   X  |   C  |   V  |   B  |  [   |  |   ]  |   N  |   M  |   ,  |   .  |   /   |  \    |  END  |
	   * `--------------------+------+------+------+------+------|  |------+------+------+------+------+-----------------------'
	   *                      | EISU | Ctrl |Space |Shift | LEFT |  |RIGHT | BkSp |Enter |Delete| KANA |
	   *                      `----------------------------------'  `----------------------------------'
	   */
 
2. [Ystrp](http://www.keyboard-layout-editor.com/##@_name=hinode&author=xcd0&notes=A%20hand-wiring%20split%20keyboard%20with%203D%20print%20case.%20%20%0Ahttps%2F:%2F%2F%2F%2Fgithub.com%2F%2Fxcd0%2F%2Fhinode%20%20%0AZealPC%20Blue%20Zilent%20v2%2062g%20%20&switchMount=cherry%3B&@_c=%23f7c199&a:7&f:5%3B&=&_x:-1%3B&=Alt&_c=%23cccccc%3B&=Esc&=1%0A%0A%0A%0AF1&=2%0A%0A%0A%0AF2&=3%0A%0A%0A%0AF3&=4%0A%0A%0A%0AF4&=5%0A%0A%0A%0AF5&=<&_x:4%3B&=>&=6%0A%0A%0A%0AF6&=7%0A%0A%0A%0AF7&=8%0A%0A%0A%0AF8&=9%0A%0A%0A%0AF9&=0%0A%0A%0A%0AF10&=-%0A%0A%0A%0AF11&=Del%0A%0A%0A%0AF12%3B&@_c=%23f7c199%3B&=GUI&_c=%23dedfff%3B&=Tab&_c=%23cccccc%3B&=Q&=W&_c=%23a7a9fc%3B&=D&=F&=G&_c=%23cccccc%3B&=(&_x:4%3B&=)&=Y&_c=%23a7a9fc%3B&=S&=T&=R&_c=%23cccccc%3B&=P&=%2F@&=Bs%3B&@_c=%23f7c199%3B&=Ins&_c=%23d18686%3B&=Sym&_c=%23cccccc%3B&=A&_c=%23a7a9fc%3B&=O&=E&=U&=I%0A%0A%0A%0AQWERTY&_c=%23cccccc%3B&=%5B%0A%0A%0A%0AEE%20RST&_x:4%3B&=%5D&=H&=J&=K&=L&=%2F%3B&=%2F:&=Ent%3B&@_c=%23f7c199%3B&=Home&=&_c=%23cccccc%3B&=Z&=X&=C&=V&=B%0A%0A%0A%0AYSTRP&=%7B%0A%0A%0A%0ARST&_x:4%3B&=%7D&=N&=M&=,&=.&=%2F%2F&=%5C&_c=%23f7c199%3B&=End%3B&@_rx:5.1&ry:9.55&y:-5.550000000000001&x:-0.5999999999999996&c=%23cccccc%3B&=英%3B&@_rx:15.1&ry:8.7&y:-4.699999999999999&x:-0.5999999999999996&c=%23f7c199%3B&=かな%3B&@_r:15&rx:5.1&y:-4.699999999999999&x:-0.5999999999999996%3B&=Ctlr%3B&@_r:30&y:-1&x:-0.5999999999999996%3B&=Shift%3B&@_r:45&y:-1&x:-0.5999999999999996%3B&=Spc%3B&@_r:60&y:-1&x:-0.5999999999999996&c=%23d18686%3B&=←%3B&@_r:-60&rx:15.1&y:-4.699999999999999&x:-0.5999999999999996%3B&=→%3B&@_r:-45&y:-1&x:-0.5999999999999996&c=%23f7c199%3B&=Bs%3B&@_r:-30&y:-1&x:-0.5999999999999996%3B&=Ent%3B&@_r:-15&y:-1&x:-0.5999999999999996%3B&=Del)  

QwertyからDvorakのように左手ホームポジションに母音を集めた独自キーマップです。  
日本語の交互打鍵を意識しています。  
Qwertyからできるだけ変更せずに使えるよう最低限の変更にしています。(10キーの変更)  

ホームポジションに母音を置くために元々Qwertyにある`SDFG`をどかし、  
母音をDvorakと同じように並べ、  
左手の`E`と右手の`UIO`のあったところに、どかした`SDFG`を置きました。  
すると`T`は交互打鍵の都合上右手に欲しくなったため、  
`G`を左手(Qwertyの`G`の一つ上)に戻し、`T`を右手に移動させました。  

	  /* Ystrp
	   * ,-------------------------------------------------------.  ,----------------------------------------------------------.
	   * | Alt  | ESC  |   1  |   2  |   3  |   4  |   5  |  <   |  |   >  |   6  |   7  |   8  |   9  |   0   |  -    | Delete|
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * | GUI  | Tab  |   Q  |   W  |  "D" |  "F" |  "G" |  (   |  |   )  |   Y  |  "S" |  "T" |  "R" |   P   |  @    | BkSp  |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * |Insert|Symbol|   A  |  "O" |  "E" |  "U" |  "I" |  {   |  |   }  |   H  |   J  |   K  |   L  |   ;   |  :    | Enter |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * | HOME |      |   Z  |   X  |   C  |   V  |   B  |  [   |  |   ]  |   N  |   M  |   ,  |   .  |   /   |  \    |  END  |
	   * `--------------------+------+------+------+------+------|  |------+------+------+------+------+-----------------------'
	   *                      | EISU | Ctrl |Space |Shift | LEFT |  |RIGHT | BkSp |Enter |Delete| KANA |
	   *                      `----------------------------------'  `----------------------------------'
	   */

`Qwerty`と`Ystrp`は、 `LEFT Layer` または `Right Layer` の `Qwerty` と `Ystrp` から切り替えることができます。

3. [Symbol]()

記号レイヤーです。  
`Qwerty`と`Ystrp`の左手小指のキーから遷移できます。  
特にこだわりなく並べました。  
おそらく今後一番変更があるレイヤーだと思います。

	  /* Symbol
	   * ,-------------------------------------------------------.  ,--------------------------------------------------------.
	   * | Alt  | ESC  |  1   |  2   |  3   |  4   |  5   |      |  |      |  6   |  7   |  8   |  9   |  0   |      | Delete|
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+------+------+-------|
	   * | GUI  | TAB  |      |  _   |  "   |  '   |  `   |      |  |      |  &   |  (   |  <   |  {   |  [   |      | BkSp  |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+------+------+-------|
	   * |Insert|      |  +   |  -   |  *   |  =   |  :   |      |  |      |  |   |  )   |  >   |  }   |  ]   |      | Enter |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+------+------+-------|
	   * | HOME |      |  !   |  ?   |  #   |  $   |  %   |      |  |      |      |  @   |  ^   |  ,   |      |      |  END  |
	   * `--------------------+------+------+------+------+------|  |------+------+------+------+------+---------------------'
	   *                      | EISU | Ctrl |Space |Shift | LEFT |  |RIGHT | BkSp |Enter |Delete| KANA |
	   *                      `----------------------------------'  `----------------------------------'
	   */

4. [LEFT Layer]()

方向キーのレイヤーです。ファンクションキーも配置しています。
`Qwerty`と`Ystrp`の左手親指のキーから遷移できます。  

	  /* LEFT
	   * ,-------------------------------------------------------.  ,---------------------------------------------------------.
	   * |      |      |  F1  |  F2  |  F3  |  F4  |  F5  |      |  |      |  F6  |  F7  |  F8  |  F9  |  F10  |  F11  |  F12  |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * |      |      |      |      |      |      |      |      |  |      |      |      |      |      |       |       |       |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * |      |      |      |      |      |      |Qwerty|EEPROM|  |      | Left | Down |  Up  |Right |       |       |       |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * |      |      |      |      |      |      |Ystrp |Reset |  |      |      |      |      |      |       |       |       |
	   * `--------------------+------+------+------+------+------|  |------+------+------+------+------+-----------------------'
	   *                      |      | Ctrl |Space |Shift |      |  |      | BkSp |Enter |Delete|      |
	   *                      `----------------------------------'  `----------------------------------'
	   */

5. [RIGHT Layer]()

マウスポインタのレイヤーです。ファンクションキーも配置しています。
`Qwerty`と`Ystrp`の右手親指のキーから遷移できます。  

	  /* Right
	   * ,-------------------------------------------------------.  ,---------------------------------------------------------.
	   * |      |      |  F1  |  F2  |  F3  |  F4  |  F5  |      |  |      |  F6  |  F7  |  F8  |  F9  |  F10  |  F11  |  F12  |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * |      |      |      |      |      |      |      |      |  |      |      | M.lc | M.mc | M.rc | wh.u  |       |       |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * |      |      |      |      |      |      |Qwerty|EEPROM|  |      | M.l  | M.d  | M.u  | M.r  | wh.d  |       |       |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * |      |      |      |      |      |      |Ystrp |Reset |  |      |      |      |      |      |       |       |       |
	   * `--------------------+------+------+------+------+------|  |------+------+------+------+------+-----------------------'
	   *                      |      | Ctrl |Space |Shift |      |  |      | BkSp |Enter |Delete|      |
	   *                      `----------------------------------'  `----------------------------------'
	   */

5. [Adjust]()

LeftとRightを同時押しするとこのレイヤーになります。特に何も配置していません。
いい使い道があれば使います。

	  /* Adjust
	   * LeftとRightを同時押しするとこのレイヤーになります。特に何も配置していません。
	   * ,-------------------------------------------------------.  ,----------------------------------------------------------.
	   * |      |      |      |      |      |      |      |      |  |      |      |      |      |      |       |       |       |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * |      |      |      |      |      |      |      |      |  |      |      |      |      |      |       |       |       |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * |      |      |      |      |      |      |      |      |  |      |      |      |      |      |       |       |       |
	   * |------+------+------+------+------+------+------+------|  |------+------+------+------+------+-------+-------+-------|
	   * |      |      |      |      |      |      |      |      |  |      |      |      |      |      |       |       |       |
	   * `--------------------+------+------+------+------+------|  |------+------+------+------+------+-----------------------'
	   *                      |      |      |      |      |      |  |      |      |      |      |      |
	   *                      `----------------------------------'  `----------------------------------'
	   */

## ファームウェアのビルド方法

1. [https://github.com/qmk/qmk_firmware.git](https://github.com/qmk/qmk_firmware.git)  
をクローンしたディレクトリと同じ場所にこのリポジトリをクローンする。

2. `./build_hinode.sh` を実行する

	./
	├── qmk_firmware          クローンしてきたqmk_firmware
	│  └── keyboards         ここにhinodeがコピーされる
	└── hinode
		├── hinode            ファームウェア本体
		└── readme.md         このreadme.md

3. このディレクトリにビルドしたファームウェアが保存される。


