//
//  Apollo.swift
//  graphql-poc
//
//  Created by Luis David Goyes Garces on 9/3/19.
//  Copyright © 2019 Condor Labs S.A.S. All rights reserved.
//

import Foundation
import Apollo

class Apollo {
    static let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjQyMTIxOTEiLCJ1c2VyTmFtZSI6IkhBUlJJU09ORVZFUkNIRUNLIiwiZW1haWwiOiI0MjEyMTkxQE1BSUwuQ09NIiwiZnVsbE5hbWUiOiJBTkdJRSBDQVJET05BIiwiZW1wbG95ZXJJZCI6IjMxMSIsInNjb3BlIjoiQURNSU4iLCJpc0N1c3RvbVJvbGUiOmZhbHNlLCJ2aWV3R3VpZGVUb3VyIjpmYWxzZSwiYXV0aG9yaXplZEZlYXR1cmVzIjpbImFkZENyZWRlbnRpYWxDYW5kaWRhdGUiLCJlZGl0VW5tb25pdG9yZWRDcmVkZW50aWFsQ2FuZGlkYXRlIiwiYWRkRW1wbG95ZWUiLCJlZGl0RW1wbG95ZWUiLCJhZGRQcm92aWRlciIsImFkZFBvc2l0aW9uc0NhbmRpZGF0ZSIsImVkaXRQb3NpdGlvbnNDYW5kaWRhdGUiLCJpbmFjdGl2ZVBvc2l0aW9uc0NhbmRpZGF0ZSIsIm92ZXJyaWRlUmVxdWlyZW1lbnRzQ2FuZGlkYXRlIiwicmVtb3ZlQ3JlZGVudGlhbENhbmRpZGF0ZSIsInJlbW92ZUVtcGxveWVlIiwicmVtb3ZlUHJvdmlkZXIiLCJlZGl0VXNlclByb2ZpbGUiLCJlZGl0VXNlcm5hbWVQYXNzd29yZCIsImFkZExpY2Vuc2UiLCJhZGRDZXJ0aWZpY2F0aW9uIiwiYWRkVW5tb25pdG9yZWRDcmVkZW50aWFsIiwicmVtb3ZlTGljZW5zZSIsInJlbW92ZUNlcnRpZmljYXRpb24iLCJyZW1vdmVVbm1vbml0b3JlZENyZWRlbnRpYWwiLCJlZGl0U2V0dGluZ3MiLCJhZGRVc2Vyc1RvTm90aWZpY2F0aW9ucyIsInJlbW92ZVVzZXJzRnJvbU5vdGlmaWNhdGlvbnMiLCJhZGp1c3ROb3RpZmljYXRpb25GcmVxdWVuY3kiLCJlZGl0U2V0dGluZ3NQZXJzb25hbEluZm8iLCJlZGl0U2V0dGluZ3NVc2VybmFtZSIsImVkaXRTZXR0aW5nc1Bhc3N3b3JkIiwiZWRpdFNldHRpbmdzUm9sZXNBbmRBcHBzIiwiZWRpdFNldHRpbmdzR3JhbnRzIiwidmlld1NldHRpbmdzTXlQcm9maWxlIiwidmlld1NldHRpbmdzT3JnYW5pemF0aW9uIiwidmlld1NldHRpbmdzQmlsbGluZyIsInZpZXdTZXR0aW5nc05vdGlmaWNhdGlvbnMiLCJ2aWV3VXNlcnNJblVzZXJNZW51Iiwidmlld0J1bGtVcGxvYWRzIiwidmlld0VtcGxveWVlQWN0aW9uc0J1dHRvbiIsInZpZXdFeGNsdXNpb25zIiwidmlld1BlbmRpbmdDcmVkZW50aWFscyIsInZpZXdQcmVoaXJlIiwicmVzZW5kQXV0aG9yaXphdGlvbkZvcm0iLCJ1cGRhdGVFbXBsb3llZUN1c3RvbUlkcyIsInVwZGF0ZVVubW9uaXRvcmVkQ3JlZGVudGlhbCIsInZpZXdIYW1idWdlck1lbnUiLCJ2aWV3VG9wU2VhcmNoQmFyIiwidmlld01lc3NhZ2VzIiwidmlld0hvbWUiLCJjaGFuZ2VFeHBpcmF0aW9uRGF0ZVVubW9uaXRvcmVkIiwiYWRkTm90ZXMiLCJhZGREb2N1bWVudHMiLCJ2aWV3U3RhdHVzUmVwb3J0Iiwidmlld0V4cGlyYXRpb25EYXRlUmVwb3J0Iiwidmlld0RhdGVSZW5ld2VkUmVwb3J0Iiwidmlld05hbWVDb21wYXJpc29uUmVwb3J0IiwiRWRpdE5hbWVDb21wYXJpc29uUmVwb3J0IiwiVmlld0Rpc2NpcGxpbmFyeWFjdGlvblJlcG9ydCIsIkVkaXREaXNjaXBsaW5hcnlBY3Rpb25SZXBvcnQiLCJ2aWV3T0lHUmVwb3J0IiwiRWRpdE9JR1JlcG9ydCJdLCJpc3MiOiJodHRwczovL2F1dGgudGVzdC5ldmVyY2hlY2suY29tIiwiYXBwbGljYXRpb25zIjp7Imh1bWFuUmVzb3VyY2VzIjp0cnVlLCJlZHVjYXRpb24iOmZhbHNlLCJjcmVkZW50aWFsaW5nIjpmYWxzZSwicHJlaGlyZSI6dHJ1ZSwicG9zaXRpb24iOnRydWUsImhyUG9zaXRpb24iOnRydWUsIndhbGxldCI6dHJ1ZX0sImF1ZCI6WyJFdmVyY2hlY2stT25lIiwid2FsbGV0Il0sImlkVHZVc2VyIjpudWxsLCJ0dkFjY2Vzc1Rva2VuIjoiIiwianRpIjoiZTIzNjExMTQtZTA5MC00Mjk3LTlhNjctZTU0MDAyMzVhZmJhIiwiaWF0IjoxNTY3NTY5MjczLCJleHAiOjE1Njg3Nzg4NzN9.rKLvMuq5oeZXg5DRYNzR1lDm2i7raB0bEsWDwxYfBM0"
    
    static let shared = Apollo()
    
    // Configure the network transport to use the singleton as the delegate.
    private lazy var networkTransport = HTTPNetworkTransport(
        url: URL(string: "https://secure.test.evercheck.com/api/graphql")!,
        delegate: self
    )
    
    // Use the configured network transport in your client.
    private(set) lazy var client = ApolloClient(networkTransport: self.networkTransport)
}

// MARK: - Pre-flight delegate

extension Apollo: HTTPNetworkTransportPreflightDelegate {
    
    func networkTransport(_ networkTransport: HTTPNetworkTransport,
                          shouldSend request: URLRequest) -> Bool {
        // If there's an authenticated user, send the request. If not, don't.
        return true
    }
    
    func networkTransport(_ networkTransport: HTTPNetworkTransport,
                          willSend request: inout URLRequest) {
        
        // Get the existing headers, or create new ones if they're nil
        var headers = request.allHTTPHeaderFields ?? [String: String]()
        
        // Add any new headers you need
        headers["Authorization"] = "Bearer \(Apollo.token)"
        
        // Re-assign the updated headers to the request.
        request.allHTTPHeaderFields = headers
    }
}
