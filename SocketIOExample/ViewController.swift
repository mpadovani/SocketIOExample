//
//  ViewController.swift
//  SocketIOExample
//
//  Created by Mateus Padovani on 01/08/17.
//  Copyright © 2017 Mateus Padovani. All rights reserved.
//

import UIKit
import SocketIO

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SocketIOManager.sharedInstance.socket.on("test597f948fda999f6b7d924ddb") { dataArray, ack in
            print(dataArray)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

