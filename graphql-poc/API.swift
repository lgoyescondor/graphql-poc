//  This file was automatically generated and should not be edited.

import Apollo

public final class GetLicenseCategoryCountQuery: GraphQLQuery {
  public let operationDefinition =
    "query GetLicenseCategoryCount($employerId: String!, $userId: String!) {\n  getLicenseCategoryCount(data: {employerId: $employerId, userId: $userId}) {\n    __typename\n    warning\n  }\n}"

  public let operationName = "GetLicenseCategoryCount"

  public var employerId: String
  public var userId: String

  public init(employerId: String, userId: String) {
    self.employerId = employerId
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["employerId": employerId, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getLicenseCategoryCount", arguments: ["data": ["employerId": GraphQLVariable("employerId"), "userId": GraphQLVariable("userId")]], type: .nonNull(.object(GetLicenseCategoryCount.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getLicenseCategoryCount: GetLicenseCategoryCount) {
      self.init(unsafeResultMap: ["__typename": "Query", "getLicenseCategoryCount": getLicenseCategoryCount.resultMap])
    }

    public var getLicenseCategoryCount: GetLicenseCategoryCount {
      get {
        return GetLicenseCategoryCount(unsafeResultMap: resultMap["getLicenseCategoryCount"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getLicenseCategoryCount")
      }
    }

    public struct GetLicenseCategoryCount: GraphQLSelectionSet {
      public static let possibleTypes = ["CategoryCount"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("warning", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(warning: String) {
        self.init(unsafeResultMap: ["__typename": "CategoryCount", "warning": warning])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var warning: String {
        get {
          return resultMap["warning"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "warning")
        }
      }
    }
  }
}
