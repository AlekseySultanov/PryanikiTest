//
//  ResponseService.swift
//  PryanikiTest
//
//  Created by Aleksey Sultanov on 08.02.2021.
//

import Foundation

class ResponseService {
    func responseFromApi(callBack: @escaping (ResponseModel?) -> Void) {
        NetworkManager.shared.getData { (response) in
            callBack(response)
        }
    }
}
