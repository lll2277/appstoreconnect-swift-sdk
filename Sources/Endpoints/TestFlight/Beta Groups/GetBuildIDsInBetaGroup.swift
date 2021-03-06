//
//  GetBuildIDsInBetaGroup.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 30/11/2018.
//
    
import Alamofire

extension APIEndpoint where T == BetaGroupBuildsLinkagesResponse {

    /// Get a list of build resource IDs in a specific beta group.
    ///
    /// - Parameters:
    ///   - id: (Required) An opaque resource ID that uniquely identifies the resource.
    ///   - limit: Number of resources to return.
    public static func buildIDs(
        inBetaGroupWithId id: String,
        limit: Int? = nil) -> APIEndpoint {
        var parameters = [String: Any]()
        if let limit = limit { parameters["limit"] = limit }
        return APIEndpoint(path: "betaGroups/\(id)/relationships/builds", method: .get, parameters: parameters)
    }
}
