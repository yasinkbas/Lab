import Foundation

public protocol Response { }

public struct ErrorResponse: Error, Response {
    public let title: String
    public let content: String
    
    public init(title: String, content: String) {
        self.title      = title
        self.content    = content
    }
}

public struct SuccessResponse: Response {}
