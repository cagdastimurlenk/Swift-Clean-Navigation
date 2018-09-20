//
//  MovieModels.swift
//  MovieSelector
//
//  Created by Cagdas Timurlenk on 21.09.2018.
//  Copyright © 2018 CodeAndDreams. All rights reserved.
//

import Foundation

enum MovieList{
    struct Request: DictionaryRepresentation {
        var dictionaryRepresentation: [String : Any]{
            return ["":""]
        }
    }
    
    struct Response {
   //     let data: [MovieListDTO]
        
        func getViewModel() -> ViewModel{
            var movieList = [ViewModel.MovieViewModel]()
//            data.forEach { (dto) in
//
//                let name = "\(dto.firstName ?? "") \(dto.lastName ?? "")"
//                let phone = dto.gsmNumber ?? ""
//                let address = "\(dto.district ?? "") \(dto.street ?? "") \(dto.houseNum1 ?? "") \(dto.houseNum2 ?? "") \(dto.town ?? ""),\(dto.city ?? "")"
//                let cityCode = dto.cityCode ?? ""
//                let townCode = dto.townCode ?? ""
//                let distictCode = dto.districtCode ?? ""
//
//                let electricianModel = ViewModel.ElectricianViewModel(name: name, phone: phone, address: address, cityCode:cityCode, townCode: townCode, districtCode: distictCode)
//                electricianList.append(electricianModel)
//            }
            return ViewModel(movies: movieList)
        }
    }
    struct ViewModel {
        let movies: [MovieViewModel]
        
        struct MovieViewModel {
//            let name: String
//            let phone: String
//            let address: String
//            let cityCode : String
//            let townCode : String
//            let districtCode : String
//            // buraya il ilce vs kisminida ekleriz filtreyi buradan yapariz direk..
        }
    }
    
}
