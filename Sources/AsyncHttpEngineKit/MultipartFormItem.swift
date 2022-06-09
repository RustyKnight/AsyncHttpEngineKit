//
//  MultipartFormItem.swift
//  
//
//  Created by Shane Whitehead on 9/6/2022.
//

import Foundation

public enum MultipartFormItem {
    case data(_ value: Data, name: String, mimeType: String? = nil, fileName: String? = nil)
    case file(_ url: URL, name: String, mimeType: String? = nil, fileName: String? = nil)
}
