# Digital fabrication

2017 3D講義スライド

松浦知也

---

## 今回の最終目標

- 2Dの時:イラレなどでは作りにくい図形をプログラミングで作る
- 今回:**普通の3Dモデリングでは作りにくい3Dオブジェクトを作る**

---

## 3Dのデータ構造

|データの種類|内容|
|---|----|
|ポイントクラウド|点の集まり|
|ワイヤーフレーム|ポイントクラウド+頂点同士のつながり|
|サーフェス|ワイヤーフレーム+どこに面が張られているか|
|ソリッド|サーフェース+どこの面で閉じた空間が充填されているか|

- 最終的に体積を持っていないと3Dプリンタなどで出力できない

---

## 3D+プログラミング

- これらのデータを直に扱うのも不可能ではないが、大変
- そこでProcessingの時と同様、**単純な3Dオブジェクトを組み合わせる**
- 加えて3Dでは、**単純な2D図形を押し出して3Dにする**事もできる

---

## 単純図形の組み合わせ

![青:sphere 赤:cube 緑:cylinder](./img/primitives.png)

---

### 押し出し


![全てsquareを押し出している。拡大縮小、回転しながら押し出すことで様々な形状が作れる](./img/extrusion.png)

---


## 作例

![squareを回転押し出し+ランダム位置にcylinderを配置して引き算
](./img/scadsample.png)

---

## 今回使うソフト：OpenSCAD

<http://www.openscad.org/>

- プログラミング＋3DモデリングだとRhinoceros用のGrasshopperがよく使われるが、Rhinocerosは有償
- 今回は3Dの形状を作るところまでで良いので、OpenSCADでも十分

---

![これらにif/for文、数学関数などを組み合わせて色んな形を作る
](img/flowchart.svg)


---

## とりあえず困ったら

<http://www.openscad.org/cheatsheet/index.html>

---

## 日本語資料

※あんまり無い

[OpenSCAD日本語Wiki(一部未翻訳)](https://ja.wikibooks.org/wiki/OpenSCAD_User_Manual)

[OpenSCADで始めるプログラマブルな3Dモデリング](http://qiita.com/ganta-viii@github/items/b984519ad24ac3c7d7d5)

[OpenSCAD で『けん玉』作ってみた – 『たま』編（初心者向けのチュートリアルに使ってね）](http://picworld.jp/2016/12/21/openscad-%E3%81%A7%E3%80%8E%E3%81%91%E3%82%93%E7%8E%89%E3%80%8D%E4%BD%9C%E3%81%A3%E3%81%A6%E3%81%BF%E3%81%9F-%E3%80%8E%E3%81%9F%E3%81%BE%E3%80%8F%E7%B7%A8%EF%BC%88%E5%88%9D%E5%BF%83%E8%80%85/)

---

