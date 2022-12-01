//
//  PostResponse.swift
//  MAPD714-Lesson11-MVVM
//
//  Created by Samuel Sum on 2022-11-29.
//

import UIKit
struct PostResponse: Codable {
    let userId: Int
    let id: Int?
    let title: String?
    let body: String?
}
