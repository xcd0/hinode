# hinode

手配線で作る自作キーボードです。  
ケースは3Dプリンターで作りました。

![](hinode.png)

[需要あるかわかりませんがstlファイルも置いています。](./hinode.stl)

回路図です。
![](hinode.svg)

ファームウェアはhelixのものを編集して使っています。(うごいてない)

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


