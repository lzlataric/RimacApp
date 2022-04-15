// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct UpdateUser: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - username
  ///   - firstName
  ///   - lastName
  public init(username: Swift.Optional<String?> = nil, firstName: Swift.Optional<String?> = nil, lastName: Swift.Optional<String?> = nil) {
    graphQLMap = ["username": username, "firstName": firstName, "lastName": lastName]
  }

  public var username: Swift.Optional<String?> {
    get {
      return graphQLMap["username"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var firstName: Swift.Optional<String?> {
    get {
      return graphQLMap["firstName"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: Swift.Optional<String?> {
    get {
      return graphQLMap["lastName"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }
}

public struct UpdateTolerance: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  ///   - limit
  public init(id: GraphQLID, limit: Double) {
    graphQLMap = ["id": id, "limit": limit]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var limit: Double {
    get {
      return graphQLMap["limit"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "limit")
    }
  }
}

public struct GrantUserRole: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - role
  public init(role: Role) {
    graphQLMap = ["role": role]
  }

  public var role: Role {
    get {
      return graphQLMap["role"] as! Role
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "role")
    }
  }
}

public enum Role: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case guest
  case carOwner
  case engineer
  case systemAdmin
  case generalAdmin
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "GUEST": self = .guest
      case "CAR_OWNER": self = .carOwner
      case "ENGINEER": self = .engineer
      case "SYSTEM_ADMIN": self = .systemAdmin
      case "GENERAL_ADMIN": self = .generalAdmin
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .guest: return "GUEST"
      case .carOwner: return "CAR_OWNER"
      case .engineer: return "ENGINEER"
      case .systemAdmin: return "SYSTEM_ADMIN"
      case .generalAdmin: return "GENERAL_ADMIN"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Role, rhs: Role) -> Bool {
    switch (lhs, rhs) {
      case (.guest, .guest): return true
      case (.carOwner, .carOwner): return true
      case (.engineer, .engineer): return true
      case (.systemAdmin, .systemAdmin): return true
      case (.generalAdmin, .generalAdmin): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Role] {
    return [
      .guest,
      .carOwner,
      .engineer,
      .systemAdmin,
      .generalAdmin,
    ]
  }
}

public struct CreateUser: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - username
  ///   - firstName
  ///   - lastName
  ///   - password
  public init(username: String, firstName: String, lastName: String, password: String) {
    graphQLMap = ["username": username, "firstName": firstName, "lastName": lastName, "password": password]
  }

  public var username: String {
    get {
      return graphQLMap["username"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var firstName: String {
    get {
      return graphQLMap["firstName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: String {
    get {
      return graphQLMap["lastName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var password: String {
    get {
      return graphQLMap["password"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }
}

public struct CreateSensor: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - name
  ///   - unit
  ///   - vehicleId
  ///   - locationId
  public init(name: String, unit: String, vehicleId: GraphQLID, locationId: GraphQLID) {
    graphQLMap = ["name": name, "unit": unit, "vehicleId": vehicleId, "locationId": locationId]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var unit: String {
    get {
      return graphQLMap["unit"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "unit")
    }
  }

  public var vehicleId: GraphQLID {
    get {
      return graphQLMap["vehicleId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "vehicleId")
    }
  }

  public var locationId: GraphQLID {
    get {
      return graphQLMap["locationId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locationId")
    }
  }
}

public struct CreateTolerance: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - sensorId
  ///   - limit
  public init(sensorId: GraphQLID, limit: Double) {
    graphQLMap = ["sensorId": sensorId, "limit": limit]
  }

  public var sensorId: GraphQLID {
    get {
      return graphQLMap["sensorId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sensorId")
    }
  }

  public var limit: Double {
    get {
      return graphQLMap["limit"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "limit")
    }
  }
}

public enum VehicleStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case active
  case inactive
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ACTIVE": self = .active
      case "INACTIVE": self = .inactive
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .active: return "ACTIVE"
      case .inactive: return "INACTIVE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: VehicleStatus, rhs: VehicleStatus) -> Bool {
    switch (lhs, rhs) {
      case (.active, .active): return true
      case (.inactive, .inactive): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [VehicleStatus] {
    return [
      .active,
      .inactive,
    ]
  }
}

public final class LoginMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation Login($username: String!, $password: String!) {
      login(username: $username, password: $password) {
        __typename
        token
      }
    }
    """

  public let operationName: String = "Login"

  public var username: String
  public var password: String

  public init(username: String, password: String) {
    self.username = username
    self.password = password
  }

  public var variables: GraphQLMap? {
    return ["username": username, "password": password]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("login", arguments: ["username": GraphQLVariable("username"), "password": GraphQLVariable("password")], type: .object(Login.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(login: Login? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "login": login.flatMap { (value: Login) -> ResultMap in value.resultMap }])
    }

    /// Auth
    public var login: Login? {
      get {
        return (resultMap["login"] as? ResultMap).flatMap { Login(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "login")
      }
    }

    public struct Login: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Token"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("token", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(token: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Token", "token": token])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }
    }
  }
}

public final class EnableUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation enableUser($id: ID!) {
      enableUser(id: $id) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "enableUser"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("enableUser", arguments: ["id": GraphQLVariable("id")], type: .object(EnableUser.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(enableUser: EnableUser? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "enableUser": enableUser.flatMap { (value: EnableUser) -> ResultMap in value.resultMap }])
    }

    public var enableUser: EnableUser? {
      get {
        return (resultMap["enableUser"] as? ResultMap).flatMap { EnableUser(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "enableUser")
      }
    }

    public struct EnableUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Entity"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Entity", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class DisableUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation disableUser($id: ID!) {
      disableUser(id: $id) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "disableUser"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("disableUser", arguments: ["id": GraphQLVariable("id")], type: .object(DisableUser.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(disableUser: DisableUser? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "disableUser": disableUser.flatMap { (value: DisableUser) -> ResultMap in value.resultMap }])
    }

    public var disableUser: DisableUser? {
      get {
        return (resultMap["disableUser"] as? ResultMap).flatMap { DisableUser(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "disableUser")
      }
    }

    public struct DisableUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Entity"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Entity", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation updateUser($id: ID!, $input: UpdateUser!) {
      updateUser(id: $id, input: $input) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "updateUser"

  public var id: GraphQLID
  public var input: UpdateUser

  public init(id: GraphQLID, input: UpdateUser) {
    self.id = id
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["id": id, "input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateUser", arguments: ["id": GraphQLVariable("id"), "input": GraphQLVariable("input")], type: .object(UpdateUser.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateUser: UpdateUser? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateUser": updateUser.flatMap { (value: UpdateUser) -> ResultMap in value.resultMap }])
    }

    public var updateUser: UpdateUser? {
      get {
        return (resultMap["updateUser"] as? ResultMap).flatMap { UpdateUser(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Entity"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Entity", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class UpdateToleranceMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation updateTolerance($id: ID!, $input: UpdateTolerance!) {
      updateTolerance(id: $id, input: $input) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "updateTolerance"

  public var id: GraphQLID
  public var input: UpdateTolerance

  public init(id: GraphQLID, input: UpdateTolerance) {
    self.id = id
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["id": id, "input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateTolerance", arguments: ["id": GraphQLVariable("id"), "input": GraphQLVariable("input")], type: .object(UpdateTolerance.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateTolerance: UpdateTolerance? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateTolerance": updateTolerance.flatMap { (value: UpdateTolerance) -> ResultMap in value.resultMap }])
    }

    public var updateTolerance: UpdateTolerance? {
      get {
        return (resultMap["updateTolerance"] as? ResultMap).flatMap { UpdateTolerance(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateTolerance")
      }
    }

    public struct UpdateTolerance: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Entity"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Entity", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class GrantUserRoleMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation grantUserRole($id: ID!, $input: GrantUserRole!) {
      grantUserRole(id: $id, input: $input) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "grantUserRole"

  public var id: GraphQLID
  public var input: GrantUserRole

  public init(id: GraphQLID, input: GrantUserRole) {
    self.id = id
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["id": id, "input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("grantUserRole", arguments: ["id": GraphQLVariable("id"), "input": GraphQLVariable("input")], type: .object(GrantUserRole.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(grantUserRole: GrantUserRole? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "grantUserRole": grantUserRole.flatMap { (value: GrantUserRole) -> ResultMap in value.resultMap }])
    }

    public var grantUserRole: GrantUserRole? {
      get {
        return (resultMap["grantUserRole"] as? ResultMap).flatMap { GrantUserRole(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "grantUserRole")
      }
    }

    public struct GrantUserRole: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Entity"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Entity", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class CreateUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation createUser($input: CreateUser!) {
      createUser(input: $input) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "createUser"

  public var input: CreateUser

  public init(input: CreateUser) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createUser", arguments: ["input": GraphQLVariable("input")], type: .object(CreateUser.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createUser: CreateUser? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createUser": createUser.flatMap { (value: CreateUser) -> ResultMap in value.resultMap }])
    }

    /// Users
    public var createUser: CreateUser? {
      get {
        return (resultMap["createUser"] as? ResultMap).flatMap { CreateUser(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createUser")
      }
    }

    public struct CreateUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Entity"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Entity", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class CreateSensorMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation createSensor($input: CreateSensor!) {
      createSensor(input: $input) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "createSensor"

  public var input: CreateSensor

  public init(input: CreateSensor) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createSensor", arguments: ["input": GraphQLVariable("input")], type: .object(CreateSensor.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createSensor: CreateSensor? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createSensor": createSensor.flatMap { (value: CreateSensor) -> ResultMap in value.resultMap }])
    }

    /// Sensors/Locations
    public var createSensor: CreateSensor? {
      get {
        return (resultMap["createSensor"] as? ResultMap).flatMap { CreateSensor(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createSensor")
      }
    }

    public struct CreateSensor: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Entity"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Entity", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class CreateToleranceMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation createTolerance($input: CreateTolerance!) {
      createTolerance(input: $input) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "createTolerance"

  public var input: CreateTolerance

  public init(input: CreateTolerance) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createTolerance", arguments: ["input": GraphQLVariable("input")], type: .object(CreateTolerance.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createTolerance: CreateTolerance? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createTolerance": createTolerance.flatMap { (value: CreateTolerance) -> ResultMap in value.resultMap }])
    }

    /// Tolerances
    public var createTolerance: CreateTolerance? {
      get {
        return (resultMap["createTolerance"] as? ResultMap).flatMap { CreateTolerance(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createTolerance")
      }
    }

    public struct CreateTolerance: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Entity"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Entity", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class VehiclesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Vehicles {
      vehicles {
        __typename
        id
        name
        modelName
        firmwareVersion
        status
      }
    }
    """

  public let operationName: String = "Vehicles"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("vehicles", type: .list(.object(Vehicle.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(vehicles: [Vehicle?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "vehicles": vehicles.flatMap { (value: [Vehicle?]) -> [ResultMap?] in value.map { (value: Vehicle?) -> ResultMap? in value.flatMap { (value: Vehicle) -> ResultMap in value.resultMap } } }])
    }

    /// Vehicles
    public var vehicles: [Vehicle?]? {
      get {
        return (resultMap["vehicles"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Vehicle?] in value.map { (value: ResultMap?) -> Vehicle? in value.flatMap { (value: ResultMap) -> Vehicle in Vehicle(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Vehicle?]) -> [ResultMap?] in value.map { (value: Vehicle?) -> ResultMap? in value.flatMap { (value: Vehicle) -> ResultMap in value.resultMap } } }, forKey: "vehicles")
      }
    }

    public struct Vehicle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Vehicle"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("modelName", type: .nonNull(.scalar(String.self))),
          GraphQLField("firmwareVersion", type: .scalar(String.self)),
          GraphQLField("status", type: .nonNull(.scalar(VehicleStatus.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String, modelName: String, firmwareVersion: String? = nil, status: VehicleStatus) {
        self.init(unsafeResultMap: ["__typename": "Vehicle", "id": id, "name": name, "modelName": modelName, "firmwareVersion": firmwareVersion, "status": status])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var modelName: String {
        get {
          return resultMap["modelName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "modelName")
        }
      }

      public var firmwareVersion: String? {
        get {
          return resultMap["firmwareVersion"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "firmwareVersion")
        }
      }

      public var status: VehicleStatus {
        get {
          return resultMap["status"]! as! VehicleStatus
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }
    }
  }
}

public final class UserQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query User {
      me {
        __typename
        id
        username
        firstName
        lastName
        role
      }
    }
    """

  public let operationName: String = "User"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("me", type: .object(Me.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(me: Me? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "me": me.flatMap { (value: Me) -> ResultMap in value.resultMap }])
    }

    /// Auth and users
    public var me: Me? {
      get {
        return (resultMap["me"] as? ResultMap).flatMap { Me(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "me")
      }
    }

    public struct Me: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
          GraphQLField("role", type: .nonNull(.scalar(Role.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, username: String, firstName: String, lastName: String, role: Role) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "username": username, "firstName": firstName, "lastName": lastName, "role": role])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return resultMap["username"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      public var firstName: String {
        get {
          return resultMap["firstName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return resultMap["lastName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastName")
        }
      }

      public var role: Role {
        get {
          return resultMap["role"]! as! Role
        }
        set {
          resultMap.updateValue(newValue, forKey: "role")
        }
      }
    }
  }
}

public final class GetUsersQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetUsers {
      users {
        __typename
        id
        username
        firstName
        lastName
        role
      }
    }
    """

  public let operationName: String = "GetUsers"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("users", type: .list(.object(User.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(users: [User?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "users": users.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }])
    }

    public var users: [User?]? {
      get {
        return (resultMap["users"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [User?] in value.map { (value: ResultMap?) -> User? in value.flatMap { (value: ResultMap) -> User in User(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }, forKey: "users")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
          GraphQLField("role", type: .nonNull(.scalar(Role.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, username: String, firstName: String, lastName: String, role: Role) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "username": username, "firstName": firstName, "lastName": lastName, "role": role])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return resultMap["username"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      public var firstName: String {
        get {
          return resultMap["firstName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return resultMap["lastName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastName")
        }
      }

      public var role: Role {
        get {
          return resultMap["role"]! as! Role
        }
        set {
          resultMap.updateValue(newValue, forKey: "role")
        }
      }
    }
  }
}

public final class DrivesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Drives($id: ID!) {
      drives(vehicleId: $id) {
        __typename
        id
        coordinates {
          __typename
          latitude
          longitude
        }
        period {
          __typename
          startAt {
            __typename
            shortTimestamp
            fullTimestamp
          }
          endAt {
            __typename
            shortTimestamp
            fullTimestamp
          }
        }
      }
    }
    """

  public let operationName: String = "Drives"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("drives", arguments: ["vehicleId": GraphQLVariable("id")], type: .list(.object(Drife.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(drives: [Drife?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "drives": drives.flatMap { (value: [Drife?]) -> [ResultMap?] in value.map { (value: Drife?) -> ResultMap? in value.flatMap { (value: Drife) -> ResultMap in value.resultMap } } }])
    }

    /// Drives
    public var drives: [Drife?]? {
      get {
        return (resultMap["drives"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Drife?] in value.map { (value: ResultMap?) -> Drife? in value.flatMap { (value: ResultMap) -> Drife in Drife(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Drife?]) -> [ResultMap?] in value.map { (value: Drife?) -> ResultMap? in value.flatMap { (value: Drife) -> ResultMap in value.resultMap } } }, forKey: "drives")
      }
    }

    public struct Drife: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Drive"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("coordinates", type: .object(Coordinate.selections)),
          GraphQLField("period", type: .object(Period.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, coordinates: Coordinate? = nil, period: Period? = nil) {
        self.init(unsafeResultMap: ["__typename": "Drive", "id": id, "coordinates": coordinates.flatMap { (value: Coordinate) -> ResultMap in value.resultMap }, "period": period.flatMap { (value: Period) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var coordinates: Coordinate? {
        get {
          return (resultMap["coordinates"] as? ResultMap).flatMap { Coordinate(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "coordinates")
        }
      }

      public var period: Period? {
        get {
          return (resultMap["period"] as? ResultMap).flatMap { Period(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "period")
        }
      }

      public struct Coordinate: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Coordinates"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("latitude", type: .scalar(Double.self)),
            GraphQLField("longitude", type: .scalar(Double.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(latitude: Double? = nil, longitude: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "Coordinates", "latitude": latitude, "longitude": longitude])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: Double? {
          get {
            return resultMap["latitude"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "latitude")
          }
        }

        public var longitude: Double? {
          get {
            return resultMap["longitude"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "longitude")
          }
        }
      }

      public struct Period: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Period"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("startAt", type: .object(StartAt.selections)),
            GraphQLField("endAt", type: .object(EndAt.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(startAt: StartAt? = nil, endAt: EndAt? = nil) {
          self.init(unsafeResultMap: ["__typename": "Period", "startAt": startAt.flatMap { (value: StartAt) -> ResultMap in value.resultMap }, "endAt": endAt.flatMap { (value: EndAt) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var startAt: StartAt? {
          get {
            return (resultMap["startAt"] as? ResultMap).flatMap { StartAt(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "startAt")
          }
        }

        public var endAt: EndAt? {
          get {
            return (resultMap["endAt"] as? ResultMap).flatMap { EndAt(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "endAt")
          }
        }

        public struct StartAt: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Date"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("shortTimestamp", type: .scalar(String.self)),
              GraphQLField("fullTimestamp", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(shortTimestamp: String? = nil, fullTimestamp: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Date", "shortTimestamp": shortTimestamp, "fullTimestamp": fullTimestamp])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var shortTimestamp: String? {
            get {
              return resultMap["shortTimestamp"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "shortTimestamp")
            }
          }

          public var fullTimestamp: String? {
            get {
              return resultMap["fullTimestamp"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "fullTimestamp")
            }
          }
        }

        public struct EndAt: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Date"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("shortTimestamp", type: .scalar(String.self)),
              GraphQLField("fullTimestamp", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(shortTimestamp: String? = nil, fullTimestamp: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Date", "shortTimestamp": shortTimestamp, "fullTimestamp": fullTimestamp])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var shortTimestamp: String? {
            get {
              return resultMap["shortTimestamp"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "shortTimestamp")
            }
          }

          public var fullTimestamp: String? {
            get {
              return resultMap["fullTimestamp"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "fullTimestamp")
            }
          }
        }
      }
    }
  }
}

public final class SensorsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Sensors($id: ID!) {
      sensors(vehicleId: $id) {
        __typename
        id
        name
        location {
          __typename
          id
          name
          description
        }
      }
    }
    """

  public let operationName: String = "Sensors"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("sensors", arguments: ["vehicleId": GraphQLVariable("id")], type: .list(.object(Sensor.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(sensors: [Sensor?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "sensors": sensors.flatMap { (value: [Sensor?]) -> [ResultMap?] in value.map { (value: Sensor?) -> ResultMap? in value.flatMap { (value: Sensor) -> ResultMap in value.resultMap } } }])
    }

    /// Sensors and their readings
    public var sensors: [Sensor?]? {
      get {
        return (resultMap["sensors"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Sensor?] in value.map { (value: ResultMap?) -> Sensor? in value.flatMap { (value: ResultMap) -> Sensor in Sensor(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Sensor?]) -> [ResultMap?] in value.map { (value: Sensor?) -> ResultMap? in value.flatMap { (value: Sensor) -> ResultMap in value.resultMap } } }, forKey: "sensors")
      }
    }

    public struct Sensor: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Sensor"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("location", type: .nonNull(.object(Location.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String, location: Location) {
        self.init(unsafeResultMap: ["__typename": "Sensor", "id": id, "name": name, "location": location.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var location: Location {
        get {
          return Location(unsafeResultMap: resultMap["location"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "location")
        }
      }

      public struct Location: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Location"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, name: String, description: String) {
          self.init(unsafeResultMap: ["__typename": "Location", "id": id, "name": name, "description": description])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String {
          get {
            return resultMap["description"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }
      }
    }
  }
}

public final class ReadingQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Reading($sensorID: ID!, $driveId: ID!) {
      readingsAndTolerances(sensorId: $sensorID, driveId: $driveId) {
        __typename
        tolerances {
          __typename
          id
          limitAt
        }
        readings {
          __typename
          id
          value
          recordedAt {
            __typename
            shortTimestamp
            fullTimestamp
          }
        }
      }
    }
    """

  public let operationName: String = "Reading"

  public var sensorID: GraphQLID
  public var driveId: GraphQLID

  public init(sensorID: GraphQLID, driveId: GraphQLID) {
    self.sensorID = sensorID
    self.driveId = driveId
  }

  public var variables: GraphQLMap? {
    return ["sensorID": sensorID, "driveId": driveId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("readingsAndTolerances", arguments: ["sensorId": GraphQLVariable("sensorID"), "driveId": GraphQLVariable("driveId")], type: .object(ReadingsAndTolerance.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(readingsAndTolerances: ReadingsAndTolerance? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "readingsAndTolerances": readingsAndTolerances.flatMap { (value: ReadingsAndTolerance) -> ResultMap in value.resultMap }])
    }

    public var readingsAndTolerances: ReadingsAndTolerance? {
      get {
        return (resultMap["readingsAndTolerances"] as? ResultMap).flatMap { ReadingsAndTolerance(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "readingsAndTolerances")
      }
    }

    public struct ReadingsAndTolerance: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["TolerancesReadings"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("tolerances", type: .list(.object(Tolerance.selections))),
          GraphQLField("readings", type: .list(.object(Reading.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(tolerances: [Tolerance?]? = nil, readings: [Reading?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "TolerancesReadings", "tolerances": tolerances.flatMap { (value: [Tolerance?]) -> [ResultMap?] in value.map { (value: Tolerance?) -> ResultMap? in value.flatMap { (value: Tolerance) -> ResultMap in value.resultMap } } }, "readings": readings.flatMap { (value: [Reading?]) -> [ResultMap?] in value.map { (value: Reading?) -> ResultMap? in value.flatMap { (value: Reading) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var tolerances: [Tolerance?]? {
        get {
          return (resultMap["tolerances"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Tolerance?] in value.map { (value: ResultMap?) -> Tolerance? in value.flatMap { (value: ResultMap) -> Tolerance in Tolerance(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Tolerance?]) -> [ResultMap?] in value.map { (value: Tolerance?) -> ResultMap? in value.flatMap { (value: Tolerance) -> ResultMap in value.resultMap } } }, forKey: "tolerances")
        }
      }

      public var readings: [Reading?]? {
        get {
          return (resultMap["readings"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Reading?] in value.map { (value: ResultMap?) -> Reading? in value.flatMap { (value: ResultMap) -> Reading in Reading(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Reading?]) -> [ResultMap?] in value.map { (value: Reading?) -> ResultMap? in value.flatMap { (value: Reading) -> ResultMap in value.resultMap } } }, forKey: "readings")
        }
      }

      public struct Tolerance: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Tolerance"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("limitAt", type: .nonNull(.scalar(Double.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, limitAt: Double) {
          self.init(unsafeResultMap: ["__typename": "Tolerance", "id": id, "limitAt": limitAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var limitAt: Double {
          get {
            return resultMap["limitAt"]! as! Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "limitAt")
          }
        }
      }

      public struct Reading: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Reading"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("value", type: .scalar(Double.self)),
            GraphQLField("recordedAt", type: .object(RecordedAt.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, value: Double? = nil, recordedAt: RecordedAt? = nil) {
          self.init(unsafeResultMap: ["__typename": "Reading", "id": id, "value": value, "recordedAt": recordedAt.flatMap { (value: RecordedAt) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var value: Double? {
          get {
            return resultMap["value"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "value")
          }
        }

        public var recordedAt: RecordedAt? {
          get {
            return (resultMap["recordedAt"] as? ResultMap).flatMap { RecordedAt(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "recordedAt")
          }
        }

        public struct RecordedAt: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Date"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("shortTimestamp", type: .scalar(String.self)),
              GraphQLField("fullTimestamp", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(shortTimestamp: String? = nil, fullTimestamp: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Date", "shortTimestamp": shortTimestamp, "fullTimestamp": fullTimestamp])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var shortTimestamp: String? {
            get {
              return resultMap["shortTimestamp"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "shortTimestamp")
            }
          }

          public var fullTimestamp: String? {
            get {
              return resultMap["fullTimestamp"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "fullTimestamp")
            }
          }
        }
      }
    }
  }
}
