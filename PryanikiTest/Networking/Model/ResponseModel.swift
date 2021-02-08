//
//  ResponseModel.swift
//  PryanikiTest
//
//  Created by Aleksey Sultanov on 08.02.2021.
//

import Foundation

struct ResponseModel: Codable {
    var data: [ResponseData]
    var view: [String]
}

struct ResponseData: Codable {
    var name: String
    var data: MainResponse
}

struct MainResponse: Codable {
    var text: String?
    var url: String?
    var selectedId: Int?
    var variants: [ResponseVariants]?
}

struct ResponseVariants: Codable {
    var id: Int
    var text: String
}

    
