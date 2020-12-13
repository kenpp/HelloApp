//
//  ContentView.swift
//  HelloApp
//
//  Created by Kento on 2020/12/13.
//

// フレームワークの読み込み。
import SwiftUI

/*
 実際にソースコードを修正する部分。
 */
struct ContentView: View {
    var body: some View {
        Text("こんにちは！")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    }
}

/*
 プレビューに関するコード
 */
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
