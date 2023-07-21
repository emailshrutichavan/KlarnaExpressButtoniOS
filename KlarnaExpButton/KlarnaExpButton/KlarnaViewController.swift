//
//  KlarnaViewController.swift
//  KlarnaExpButton
//
//  Created by Shruti on 21/02/23.
//

import UIKit
import KlarnaMobileSDK

class KlarnaViewController: UIViewController, KlarnaEventHandler {
    func klarnaComponent(_ klarnaComponent: KlarnaComponent, dispatchedEvent event: KlarnaProductEvent) {
        print("klarnaComponent called with");
        print(event.action);
        
        if(event.action == "user-tapped-button"){
            print("Klarna Button clicked!!!");
        }
        
        if(event.action == "user-authenticated"){
            print("Klarna user authenticated!!!");
            print(event.params);
        }
    }
    
    func klarnaComponent(_ klarnaComponent: KlarnaComponent, encounteredError error: KlarnaError) {
        print("klarnaComponent called with error");
        if error.name == KlarnaExpressButtonErrorName.KlarnaExpressButtonErrorInvalidParams {
                 // The parameters set for Klarna Express Button are invalid
              }
        if error.name == KlarnaExpressButtonErrorName.KlarnaExpressButtonErrorRender {
             // Rendering the Klarna Express Button has failed
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load");
        let customButton : KlarnaExpressButton;
        customButton = KlarnaExpressButton(clientId: "sample_client_id", returnUrl: URL(string: "app://")!, eventHandler: self);
        
        customButton.environment = .playground;
        customButton.translatesAutoresizingMaskIntoConstraints = true;
     
        print(customButton);
        print(view.frame);
        customButton.frame = CGRect(x: 100, y: 100, width: 100.0, height: 100.0);
        print(view.frame);
        view.addSubview(customButton);
        view.backgroundColor = UIColor.white;
        // Do any additional setup after loading the view.
    }

}
