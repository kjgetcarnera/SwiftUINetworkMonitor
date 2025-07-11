//
//  NetworkMonitor.swift
//  MVPDemoApp
//
//  Created by Kiran Jadhav on 20/06/25.
//

import Foundation
import Network

class NetworkMonitor: ObservableObject {
    static let shared = NetworkMonitor() // Singleton for global access
    
    private let monitor = NWPathMonitor()
    private let queue = DispatchQueue(label: "NetworkMonitor")
    
    @Published var isConnected: Bool = true
    
    private init() {
        monitor.pathUpdateHandler = { [weak self] path in
            DispatchQueue.main.async {
                self?.isConnected = path.status == .satisfied
            }
        }
        monitor.start(queue: queue)
    }
}
