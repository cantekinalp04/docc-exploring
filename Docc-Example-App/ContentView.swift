//
//  ContentView.swift
//  Docc-Example-App
//
//  Created by Can Tekinalp on 3.02.2023.
//

import SwiftUI
import ui_package
import ui_kit_package

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            //Text("Hello, world!")
            UIPackage().textView(text: "hello world")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let view = CustomView(frame: .zero)
let handler = {
    view.addChildView()
}
