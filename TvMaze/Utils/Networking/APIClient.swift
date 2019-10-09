//
//  ApiClient.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 08/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import Alamofire


class APIClient {
    
    static func getShows<T: Decodable>(completion:@escaping (AFResult<[T]>) -> Void) {
        let jsonDecoder = JSONDecoder()
        AF.request(APIRouter.shows)
            .responseDecodable (decoder: jsonDecoder) { (response: DataResponse<[T], AFError>) in
                completion(response.result)
        }
    }
    
    static func getShow<T: Decodable>(id: Int,
                                      completion:@escaping (AFResult<T>) -> Void) {
        let jsonDecoder = JSONDecoder()
        AF.request(APIRouter.show(id: id))
            .responseDecodable (decoder: jsonDecoder){ (response: DataResponse<T, AFError>) in
                completion(response.result)
        }
    }
    
}
