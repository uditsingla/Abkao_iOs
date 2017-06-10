//
//  AuthManager.swift
//  Relay
//
//  Created by Sourcefuse on 17/01/17.
//  Copyright © 2017 iOS. All rights reserved.
//

import UIKit
import CoreData

class AuthManager: NSObject {
    
    // keep it as string as in core data
    var access_Token:String?

    func authenticateUser(phoneNumber: String,countryCode : String, handler : @escaping (Bool , NSString) -> Void) {
        
       // let url:String = "oauth/token?grant_type=password&email=\(params.userName)&password=\(params.password)"
        BaseWebAccessLayer.requestURLWithDictionaryResponse(requestType: .post, strURL: "identity_provider/users/send_otp", headers: false, params: ["phone" : countryCode + phoneNumber], success: { (jsonDict,statusCode) in
            // success code
            print(jsonDict)
            
            let stringDesc = jsonDict.object(forKey: "message") as! NSString
            
            if statusCode == 200
            {
                handler(true,stringDesc)
            
            }
            else{
                
                handler(false,stringDesc)
                
            }
            
        },failure:
        
            { (error,statusCode) in
                // success code
                
                handler(false,error.localizedDescription as NSString)

        })
        

    }
    
    
    func verifyUser(OTP: NSString , handler : @escaping (Bool , NSString) -> Void)
    {
        
        BaseWebAccessLayer.requestURLWithDictionaryResponse(requestType: .post, strURL: "identity_provider/users/verify_otp", headers: false, params: ["otp" : OTP], success: { (jsonDict,statusCode) in
            // success code
            print(jsonDict)
            
            let stringDesc = jsonDict.object(forKey: "message") as! NSString
            
            if statusCode == 200
            {
                handler(true,stringDesc)
                
            }
            else{
                
                handler(false,stringDesc)
                
            }
            
        },failure:
            
            { (error,statusCode) in
                // success code
                
                handler(false,error.localizedDescription as NSString)
                
        })
    
        
    }

    func userSignUp(dictDriverInfo: NSDictionary) -> Bool {
        
        return true;
    }
    
    func logout()  {
        
        BaseWebAccessLayer.requestURLWithDictionaryResponse(requestType: .post, strURL: "logout", headers: false, params: ["otp" : ""], success: { (jsonDict,statusCode) in
            // success code
            print(jsonDict)
            
            let stringDesc = jsonDict.object(forKey: "description") as! NSString
            
            if statusCode == 200
            {
             //   handler(true,stringDesc)
                
            }
            else{
                
               // handler(false,stringDesc)
                
            }
            
        },failure:
            
            { (error,statusCode) in
                // success code
                
             //   handler(false,error.localizedDescription as NSString)
                
        })
        

        
    }

    
    
    
}
