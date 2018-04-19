/// Generated by the Protocol Buffers 3.5.1 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 4.0.0
/// Source file "Person.proto"
/// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public struct PersonRoot {
    public static let `default` = PersonRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
        extensionRegistry = ExtensionRegistry()
        registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
}

final public class Person : GeneratedMessage {
    public typealias BuilderType = Person.Builder

    public static func == (lhs: Person, rhs: Person) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasId == rhs.hasId) && (!lhs.hasId || lhs.id == rhs.id)
        fieldCheck = fieldCheck && (lhs.hasName == rhs.hasName) && (!lhs.hasName || lhs.name == rhs.name)
        fieldCheck = fieldCheck && (lhs.hasEmail == rhs.hasEmail) && (!lhs.hasEmail || lhs.email == rhs.email)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }

    public fileprivate(set) var id:Int32! = nil
    public fileprivate(set) var hasId:Bool = false

    public fileprivate(set) var name:String! = nil
    public fileprivate(set) var hasName:Bool = false

    public fileprivate(set) var email:String! = nil
    public fileprivate(set) var hasEmail:Bool = false

    required public init() {
        super.init()
    }
    override public func isInitialized() throws {
        if !hasId {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message \(Person.self): field \"id\" mark required")
        }
        if !hasName {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message \(Person.self): field \"name\" mark required")
        }
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasId {
            try codedOutputStream.writeInt32(fieldNumber: 1, value:id)
        }
        if hasName {
            try codedOutputStream.writeString(fieldNumber: 2, value:name)
        }
        if hasEmail {
            try codedOutputStream.writeString(fieldNumber: 3, value:email)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if hasId {
            serialize_size += id.computeInt32Size(fieldNumber: 1)
        }
        if hasName {
            serialize_size += name.computeStringSize(fieldNumber: 2)
        }
        if hasEmail {
            serialize_size += email.computeStringSize(fieldNumber: 3)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> Person.Builder {
        return Person.classBuilder() as! Person.Builder
    }
    public func getBuilder() -> Person.Builder {
        return classBuilder() as! Person.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return Person.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return Person.Builder()
    }
    public func toBuilder() throws -> Person.Builder {
        return try Person.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:Person) throws -> Person.Builder {
        return try Person.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        try isInitialized()
        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasId {
            jsonMap["id"] = Int(id)
        }
        if hasName {
            jsonMap["name"] = name
        }
        if hasEmail {
            jsonMap["email"] = email
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Person {
        return try Person.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> Person {
        return try Person.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if hasId {
            output += "\(indent) id: \(id) \n"
        }
        if hasName {
            output += "\(indent) name: \(name) \n"
        }
        if hasEmail {
            output += "\(indent) email: \(email) \n"
        }
        output += unknownFields.getDescription(indent: indent)
        return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasId {
                hashCode = (hashCode &* 31) &+ id.hashValue
            }
            if hasName {
                hashCode = (hashCode &* 31) &+ name.hashValue
            }
            if hasEmail {
                hashCode = (hashCode &* 31) &+ email.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Person"
    }
    override public func className() -> String {
        return "Person"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
        fileprivate var builderResult:Person = Person()
        public func getMessage() -> Person {
            return builderResult
        }

        required override public init () {
            super.init()
        }
        public var id:Int32 {
            get {
                return builderResult.id
            }
            set (value) {
                builderResult.hasId = true
                builderResult.id = value
            }
        }
        public var hasId:Bool {
            get {
                return builderResult.hasId
            }
        }
        @discardableResult
        public func setId(_ value:Int32) -> Person.Builder {
            self.id = value
            return self
        }
        @discardableResult
        public func clearId() -> Person.Builder{
            builderResult.hasId = false
            builderResult.id = nil
            return self
        }
        public var name:String {
            get {
                return builderResult.name
            }
            set (value) {
                builderResult.hasName = true
                builderResult.name = value
            }
        }
        public var hasName:Bool {
            get {
                return builderResult.hasName
            }
        }
        @discardableResult
        public func setName(_ value:String) -> Person.Builder {
            self.name = value
            return self
        }
        @discardableResult
        public func clearName() -> Person.Builder{
            builderResult.hasName = false
            builderResult.name = nil
            return self
        }
        public var email:String {
            get {
                return builderResult.email
            }
            set (value) {
                builderResult.hasEmail = true
                builderResult.email = value
            }
        }
        public var hasEmail:Bool {
            get {
                return builderResult.hasEmail
            }
        }
        @discardableResult
        public func setEmail(_ value:String) -> Person.Builder {
            self.email = value
            return self
        }
        @discardableResult
        public func clearEmail() -> Person.Builder{
            builderResult.hasEmail = false
            builderResult.email = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> Person.Builder {
            builderResult = Person()
            return self
        }
        override public func clone() throws -> Person.Builder {
            return try Person.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> Person {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> Person {
            let returnMe:Person = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:Person) throws -> Person.Builder {
            if other == Person() {
                return self
            }
            if other.hasId {
                id = other.id
            }
            if other.hasName {
                name = other.name
            }
            if other.hasEmail {
                email = other.email
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Person.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Person.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 8:
                    id = try codedInputStream.readInt32()

                case 18:
                    name = try codedInputStream.readString()

                case 26:
                    email = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Person.Builder {
            let resultDecodedBuilder = Person.Builder()
            if let jsonValueId = jsonMap["id"] as? Int {
                resultDecodedBuilder.id = Int32(jsonValueId)
            } else if let jsonValueId = jsonMap["id"] as? String {
                resultDecodedBuilder.id = Int32(jsonValueId)!
            }
            if let jsonValueName = jsonMap["name"] as? String {
                resultDecodedBuilder.name = jsonValueName
            }
            if let jsonValueEmail = jsonMap["email"] as? String {
                resultDecodedBuilder.email = jsonValueEmail
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> Person.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try Person.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension Person: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Person> {
        var mergedArray = Array<Person>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> Person? {
        return try Person.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> Person {
        return try Person.Builder().mergeFrom(data: data, extensionRegistry:PersonRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Person {
        return try Person.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> Person {
        return try Person.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Person {
        return try Person.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> Person {
        return try Person.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Person {
        return try Person.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "id": return self.id
        case "name": return self.name
        case "email": return self.email
        default: return nil
        }
    }
}
extension Person.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = Person
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "id": return self.id
            case "name": return self.name
            case "email": return self.email
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "id":
                guard let newSubscriptValue = newSubscriptValue as? Int32 else {
                    return
                }
                self.id = newSubscriptValue
            case "name":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.name = newSubscriptValue
            case "email":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.email = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)