//
//  SocketIOManager.swift
//  SocketIOExample
//
//  Created by Mateus Padovani on 01/08/17.
//  Copyright © 2017 Mateus Padovani. All rights reserved.
//

import SocketIO
import Foundation

class SocketIOManager: NSObject {
    static let sharedInstance = SocketIOManager()
    var socket = SocketIOClient(socketURL: URL(string: "http://192.168.15.88:3000")!, config: [.log(false), .forcePolling(true)])
    
    override init() {
        super.init()
        
        socket.on("test") { dataArray, ack in
            print(dataArray)
        }
    }
    
    func establishConnection() {
        socket.connect()
    }
    
    func closeConnection() {
        socket.disconnect()
    }
}
