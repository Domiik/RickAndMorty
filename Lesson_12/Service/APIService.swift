//
//  APIService.swift
//  Lesson_12
//
//  Created by Domiik on 11.11.2021.
//

import Foundation
import Alamofire
import SwiftyJSON


struct Connectivity {
    static let sharedInstance = NetworkReachabilityManager()!
    static var isConnectedToInternet:Bool {
        return self.sharedInstance.isReachable
    }
}

enum ApiError: Error {
    case noData
    case noConnection
}

class APIService: NSObject {
    func downloadItem(url: String,completionHandler: @escaping (Heroes) -> ()) {
        var title, imageUrl: String!
        if Connectivity.isConnectedToInternet {
            AF.request(url).responseJSON { response in
                guard let data = response.data else { return }
                if let currentHeroes = self.parseJSON(withData: data ) {
                   // print(currentHeroes)
                    completionHandler(currentHeroes)
                }
            }
        } else {
            print(ApiError.noConnection)
            //completionHandler(false)
        }
        
        
        
//        if Connectivity.isConnectedToInternet {
//            AF.request(url).responseJSON { response in
//                switch response.result {
//                case .success(let value):
//                    if let json = try? JSON(value) {
//                        let items = json.map { Heroes(currentHeroesData: $0.1.rawValue) }
//                        completionHandler(items)
//                    }
//                    break
//                case .failure(let error):
//                    print(ApiError.noData)
//                    //completionHandler(false)
//                    break
//                }
//            }
//        } else {
//            print(ApiError.noConnection)
//            //completionHandler(false)
//        }
    }
    
    
    func parseJSON(withData data: Data) -> Heroes? {
        let decoder = JSONDecoder()
        do {
            let currentHeroesData = try decoder.decode(HeroesData.self, from: data)
            for itemHeroes in currentHeroesData.results {
                guard let currentHeroes = Heroes(currentHeroesData: itemHeroes) else
                {
                    return nil
                }
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        return nil
    }
    
}
