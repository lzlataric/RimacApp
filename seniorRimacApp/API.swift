// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

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

public enum Role: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case driver
  case systemAdmin
  case generalAdmin
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "DRIVER": self = .driver
      case "SYSTEM_ADMIN": self = .systemAdmin
      case "GENERAL_ADMIN": self = .generalAdmin
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .driver: return "DRIVER"
      case .systemAdmin: return "SYSTEM_ADMIN"
      case .generalAdmin: return "GENERAL_ADMIN"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Role, rhs: Role) -> Bool {
    switch (lhs, rhs) {
      case (.driver, .driver): return true
      case (.systemAdmin, .systemAdmin): return true
      case (.generalAdmin, .generalAdmin): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Role] {
    return [
      .driver,
      .systemAdmin,
      .generalAdmin,
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
        modelNumber
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
          GraphQLField("modelNumber", type: .nonNull(.scalar(String.self))),
          GraphQLField("firmwareVersion", type: .scalar(String.self)),
          GraphQLField("status", type: .nonNull(.scalar(VehicleStatus.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String, modelName: String, modelNumber: String, firmwareVersion: String? = nil, status: VehicleStatus) {
        self.init(unsafeResultMap: ["__typename": "Vehicle", "id": id, "name": name, "modelName": modelName, "modelNumber": modelNumber, "firmwareVersion": firmwareVersion, "status": status])
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

      public var modelNumber: String {
        get {
          return resultMap["modelNumber"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "modelNumber")
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
          GraphQLField("role", type: .nonNull(.scalar(Role.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, username: String, role: Role) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "username": username, "role": role])
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
      readings(sensorId: $sensorID, driveId: $driveId) {
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
        GraphQLField("readings", arguments: ["sensorId": GraphQLVariable("sensorID"), "driveId": GraphQLVariable("driveId")], type: .list(.object(Reading.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(readings: [Reading?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "readings": readings.flatMap { (value: [Reading?]) -> [ResultMap?] in value.map { (value: Reading?) -> ResultMap? in value.flatMap { (value: Reading) -> ResultMap in value.resultMap } } }])
    }

    public var readings: [Reading?]? {
      get {
        return (resultMap["readings"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Reading?] in value.map { (value: ResultMap?) -> Reading? in value.flatMap { (value: ResultMap) -> Reading in Reading(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Reading?]) -> [ResultMap?] in value.map { (value: Reading?) -> ResultMap? in value.flatMap { (value: Reading) -> ResultMap in value.resultMap } } }, forKey: "readings")
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
