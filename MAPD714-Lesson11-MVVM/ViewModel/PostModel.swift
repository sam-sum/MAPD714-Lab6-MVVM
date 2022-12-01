//
//  PostModel.swift
//  MAPD714-Lesson11-MVVM
//
//  Created by Samuel Sum on 2022-11-29.
//

import UIKit
class PostModel: Identifiable {
    
    let id = UUID()
    let post: PostResponse
    
    init(article: PostResponse) {
        self.post = article
    }
    
    var title: String {
        return post.title ?? ""
    }
    
    var description: String {
        return post.body ?? ""
    }
}
