//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension API {

    public enum GetUser {

      public static let service = APIService<Response>(id: "getUser", tag: "", method: "GET", path: "/user", hasBody: false)

      public class Request: APIRequest<Response> {

          public init() {
              super.init(service: GetUser.service)
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Empty Response */
            case success201

            public var success: Void? {
                switch self {
                case .success201(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                default: return ()
                }
            }

            public var statusCode: Int {
              switch self {
              case .success201: return 201
              }
            }

            public var successful: Bool {
              switch self {
              case .success201: return true
              }
            }

            public init(statusCode: Int, data: Data) throws {
                switch statusCode {
                case 201: self = .success201
                default: throw APIError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
