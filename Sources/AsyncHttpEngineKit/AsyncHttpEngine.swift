//
//  AsyncHttpEngine.swift
//  
//
//  Created by Shane Whitehead on 9/6/2022.
//

import Foundation

public protocol RequestResponse {
    var statusCode: Int { get }
    var statusDescription: String { get }
    var data: Data? { get }
    var responseHeaders: [AnyHashable: Any]? { get }
}

public protocol AsyncHttpEngine {    
    // MARK: get
    func get() async throws -> RequestResponse

    // MARK: put
    func put() async throws -> RequestResponse
    func put(_ data: Data) async throws -> RequestResponse

    // MARK: post
    func post() async throws -> RequestResponse
    func post(_ data: Data) async throws -> RequestResponse
    func post(_ formaData: [MultipartFormItem]) async throws -> RequestResponse

    // MARK: delete
    func delete() async throws -> RequestResponse
    func delete(_ data: Data) async throws -> RequestResponse
}
