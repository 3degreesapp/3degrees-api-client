//
// LoginForm.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class LoginForm: JSONEncodable {
    public var facebook: LoginFormFacebook?
    public var email: LoginFormEmail?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["facebook"] = self.facebook?.encodeToJSON()
        nillableDictionary["email"] = self.email?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
