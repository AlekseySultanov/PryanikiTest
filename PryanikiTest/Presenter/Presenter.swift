//
//  Presenter.swift
//  PryanikiTest
//
//  Created by Aleksey Sultanov on 08.02.2021.
//

import Foundation

class Presenter {
    
    let responseService: ResponseService!
    
    init() {
        responseService = ResponseService()
    }
    
    func getAPIResponse(callBack: @escaping (ResponseModel?) -> ()) {
        responseService.responseFromApi { (response) in
            if (response != nil) {
                callBack(response)
            } else {
                callBack(nil)
            }
        }
    }
    
}
