//
//  UserI.swift
//  Abkao
//
//  Created by Abhishek Singla on 11/06/17.
//  Copyright © 2017 Abkao. All rights reserved.
//

import UIKit

class UserI: NSObject {

    
    //setter and getters
    public var email: String?
    public var firstName: String?
    public var lastName: String?
    public var password: String?
    public var accountName: String?
    public var accountNo: String?
    public var address: String?
    public var city: String?
    public var state: String?
    public var zip: String?
    public var country: String?
    public var telephone: String?
    public var username: String?
    public var userID: String?


    
    
    override init()
    {
        self.email = ""
        self.firstName = ""
        self.lastName = ""
        self.password = ""
        self.accountName = ""
        self.accountNo = ""
        self.address = ""
        self.city = ""
        self.state = ""
        self.zip = ""
        self.country = ""
        self.telephone = ""
        self.username = ""
        self.userID = ""
    }
    
    func resetData()
    {
        self.email = ""
        self.firstName = ""
        self.lastName = ""
        self.password = ""
        self.accountName = ""
        self.accountNo = ""
        self.address = ""
        self.city = ""
        self.state = ""
        self.zip = ""
        self.country = ""
        self.telephone = ""
        self.username = ""
        self.userID = ""
    }
    
    public func setUserInfo(userObj : [String : AnyObject])
    {
        self.email =  (userObj["country_code"] as? String ?? "")
        self.firstName =  (riderObj["country_code"] as? String ?? "")
        self.lastName = (riderObj["country_code"] as? String ?? "")
        self.password = (riderObj["country_code"] as? String ?? "")
        self.accountName = (riderObj["country_code"] as? String ?? "")
        self.accountNo = (riderObj["country_code"] as? String ?? "")
        self.address = (riderObj["country_code"] as? String ?? "")
        self.city = (riderObj["country_code"] as? String ?? "")
        self.state = (riderObj["country_code"] as? String ?? "")
        self.zip = (riderObj["country_code"] as? String ?? "")
        self.country = (riderObj["country_code"] as? String ?? "")
        self.telephone = (riderObj["country_code"] as? String ?? "")
        self.username = (riderObj["country_code"] as? String ?? "")
        self.userID = (riderObj["country_code"] as? String ?? "")

    }
    
}
