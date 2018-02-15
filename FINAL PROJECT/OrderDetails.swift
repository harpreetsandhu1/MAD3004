//
//  OrderDetails.swift
//  FINAL PROJECT
//
//  Created by MacStudent on 2018-02-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class OrderDetail
{
    private var ID: Int
    private var pID: Int
    private var pName: String
    private var qnt: Int
    private var uCost: Int
    private var sTotal: Int
    
    init() {
        self.ID = 0
        self.pID = 0
        self.pName = ""
        self.qnt = 0
        self.uCost = 0
        self.sTotal = 0
    }
    
    public var orderID: Int{
        get {
            return ID
        }
        set(newValue) {
            ID = newValue
        }
    }
    
    public var productID: Int{
        get {
            return pID
        }
        set(newValue) {
            pID = newValue
        }
    }
    
    public var productName: String{
        get {
            return pName
        }
        set(newValue) {
            pName = newValue
        }
    }
    
    public var quantity: Int{
        get {
            return qnt
        }
        set(newValue) {
            qnt = newValue
        }
    }
    
    public var unitCost: Int{
        get {
            return uCost
        }
        set(newValue) {
            uCost = newValue
        }
    }
    
    public var subTotal: Int{
        get {
            return sTotal
        }
        set(newValue) {
            sTotal = newValue
        }
    }
    
    public func createOrder(){
        print("Order ID")
        orderID = Int(readLine()!)!
        
        print("Product ID")
        productID = Int(readLine()!)!
        
        print("Product Name")
        productName = readLine()!
        
        print("Quantity")
        quantity = Int(readLine()!)!
        
        print("Unit Cost")
        unitCost = Int(readLine()!)!
    }
    
    public func calcPrice(){
        subTotal = unitCost * quantity
    }
}

extension OrderDetail: IDisplay {
    func displayData() -> String {
        let allData = "Order ID " + String(self.orderID) + " productID " + String(self.productID) + " productName " + self.productName + " quantity " + String(self.quantity) + " unitCost " + String(self.unitCost) + " subTotal " + String(self.subTotal)
        return allData
    }
}
