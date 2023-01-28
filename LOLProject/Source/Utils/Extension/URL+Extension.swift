//
//  URL+Extension.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/26.
//

import Foundation

extension URL {
    static func makeEndPointString(_ version: String, _ endPoint: String) -> String {
        return URLConstant.BaseURL + version + endPoint
    }
}
