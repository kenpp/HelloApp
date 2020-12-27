import UIKit
//: ライブラリの読み込み
//: 変数設定
//:【大事】半角スペースをあけること！
var str = "Hello, playground"

//: 画面表示
//:print("バッテリー残量が少なくなっています")
print(str)

//: コメントアウトの方法と、printで変数を表示させる方法
print("文字列を表示させる方法:\(str)")

//: スペースを開けないと、コメント正しく表示されない。
print(1 == 1)

//:これは、エラーになる。
//:var word = "動物"
//:var number = 1
//:print(word + number)

//: 変数を宣言するときに、型も一緒に宣言する方法
var number:Int = 3
var pi:Double = 3.14

//:for文の使い方
for x in 1...9{
    if x % 2 == 0{
        for n in 1...9{
            print(x * n)
        }
    }
}
//: 変数を使って、幅指定をする場合は、以下のようにする。
for x in 0...number{
    print(x)
}
//: switch文！
switch number{
case 0:
    print("0です。")

case 1:
    print("1です。")
    
case 2:
    print("2です。")
default:
    print("0,1,2以外の値です。")
}
//:配列の使い方。
var todos = ["ジョギングをする", "選択をする", "掃除をする"]
print("\(todos[0]) その後に、\(todos[2])")
//:foreachのような書き方ですね！
for todo in todos{
    print(todo)
}
//: 辞書（列挙型）の使い方
//: as Anyをつけると、エラーがでなくなった。
var numberOfTires = ["車":4, "バイク":2, "船":0]
print(numberOfTires["車"] as Any)

//:nullではなくて、nilになる。
numberOfTires["車"] = nil
print(numberOfTires["車"] as Any)

//:関数の使い方
func kuku2dan(){
    for n in 1...9{
        print(2 * n)
    }
}

kuku2dan()

//:関数に引数を渡す。（リターンなし）
func kuku(dan:Int){
    for n in 1...9{
        print(dan * n)
    }
}

kuku(dan: 3)
kuku(dan: 4)

//: ラベルの使い方
func areaOfTraiangle(withBase base:Int, height:Int){
    print(base * height / 2)
}
areaOfTraiangle(withBase: 10, height: 3)

//:関数に引数を渡す。（リターンあり）
func areaOfTraiangle1(withBase base:Int, height:Int) -> Int{
    let result = base * height / 2
    return result
}
var area = areaOfTraiangle1(withBase: 3, height: 4)
print(area)

//: 構造体の使い方
struct Taiyaki{
    //:メンバ変数
    var nakami = "あんこ"
    //:メンバ関数
    func sayNakami() {
        print("中身は" + nakami + "です。")
    }
}

var taiyaki = Taiyaki()
taiyaki.nakami = "クリーム"
taiyaki.sayNakami()

var taiyakiKosian = Taiyaki()
taiyakiKosian.nakami = "こしあん"
taiyakiKosian.sayNakami()


//: 正方形を作る関数
struct Square {
    //: 辺の長さ
    var sideLength = 3
    //: 面積
    //: コンピューティットプロパティ
    /*
    var area:Int{
        let result = sideLength * sideLength
        return result
    }
    */
    //: ｛｝内に一行しかなかったら、省略することができる！
    var area:Int{
        sideLength * sideLength
    }
    //:以下の様に、書くことも可能！
    func area2()-> Int{
        let result = sideLength * sideLength
        return result
    }
}
 
//: コンピューティッドプロパティは、引数を取ることができない。
//: コンピューティッドプロパティは、戻り値が必ずある。

