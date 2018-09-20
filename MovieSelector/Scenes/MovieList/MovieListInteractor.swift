//
//  MovieListInteractor.swift
//  MovieSelector
//
//  Created by Cagdas Timurlenk on 21.09.2018.
//  Copyright © 2018 CodeAndDreams. All rights reserved.
//

import Foundation
protocol MovieListBusinessLogic {
    //func getMovieList(_ request: MovieList.Request)
}

class MovieListInteractor: MovieListBusinessLogic{
    var presenter: MovieListPresentationLogic?
    
//    func getElectricianList(_ request: ElectricianList.Request) {
//        ElectricianApi.getElectricianList(request: request,
//                                          success:  { [weak weakSelf = self] (response) in
//                                            weakSelf?.presenter?.presentElectricianList(ElectricianList.Response(data: response))
//        })
//    }
}
