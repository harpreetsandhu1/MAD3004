//
//  User.swift
//  FINAL PROJECT
//
//  Created by MacStudent on 2018-02-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class User
{
    private var ID: String
    private var pwd: String
    private var loginStatus: String
    
    init() {
        self.ID = ""
        self.pwd = ""
        self.loginStatus = "No connected"
    }
    
    public var userID : String{
        get {
            return ID
        }
        set(newValue) {
            ID = newValue
        }
    }
    
    public var password: String{
        get {
            return pwd
        }
        set(newValue) {
            pwd = newValue
        }
    }
    
    
    public func verifyLogin() ->Bool{
        if userID == "111" && password == "PHA123"{
            loginStatus = "connected"
            return true
        }
      else
        {
        return false
    }
}
}

extension User: IDisplay {
    func displayData() -> String {
        let allData = "UserID " + self.ID + " Password " + self.pwd
        
        return allData
    }
}
