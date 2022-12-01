//
//  ContentView.swift
//  MAPD714-Lesson11-MVVM
//
//  Created by Samuel Sum on 2022-11-29.
//

import SwiftUI
struct ContentView : View {
    
    @ObservedObject var model = PostViewModel()
    
    var body: some View {
        List(model.articles) { article in
            VStack(alignment: .leading) {
                Text(article.title)
                Text(article.description)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
