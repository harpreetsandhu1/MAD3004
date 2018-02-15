//
//  main.swift
//  FINAL PROJECT
//
//  Created by MacStudent on 2018-02-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

let customer = Customer()
print("Please input 1 for login and 2 for register and 3 for update profile of customer")
let res = readLine()!
if res == "1" {
    customer.login()
} else if res == "2"{
    customer.register()
} else if res == "3"{
    customer.updateProfile()
}

let orderDetail = OrderDetail()
print("Please input 1 for order and 2 exit")
let resOrder = readLine()!
if resOrder == "1" {
    
    orderDetail.createOrder()
    
    
    orderDetail.calcPrice()
    
    
    let shippingInfo = ShippingInfo()
    shippingInfo.updateShippingInfo()
    
    
    let order = Order()
    order.placeOrder(customer:customer,orderDetail:orderDetail,shippingInfo:shippingInfo)
    
    
    let shopingCart = ShopingCart()
    shopingCart.addCartItem(order:order)
    shopingCart.viewCartDetails()
    
}
