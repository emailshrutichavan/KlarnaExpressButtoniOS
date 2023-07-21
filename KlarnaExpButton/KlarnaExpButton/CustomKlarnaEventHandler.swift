//
//  KlarnaEventHandler.swift
//  KlarnaExpressCheckout
//
//  Created by Shruti on 20/02/23.
//

import Foundation
import KlarnaMobileSDK

//@main
class CustomKlarnaEventHandler: KlarnaEventHandler {
    
    init(){
        print("Parent Class")
      }
    
    func klarnaComponent(_ klarnaComponent: KlarnaComponent, dispatchedEvent event: KlarnaProductEvent) {
        print("event called");
    }
    
    func klarnaComponent(_ klarnaComponent: KlarnaComponent, encounteredError error: KlarnaError) {
        print("event called with error");
    }
     
}

