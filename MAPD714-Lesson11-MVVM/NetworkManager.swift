//
//  NetworkManager.swift
//  MAPD714-Lesson11-MVVM
//
//  Created by Samuel Sum on 2022-11-29.
//

import UIKit
class NetworkManager {
    
    static func loadData(url: URL, completion: @escaping ([PostResponse]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            if let response = try? JSONDecoder().decode([PostResponse].self, from: data) {
                DispatchQueue.main.async {
                    completion(response)
                }
            }
        }.resume()
    }
}
