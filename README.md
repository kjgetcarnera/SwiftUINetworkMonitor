# 📡 SwiftUI NetworkMonitor

A simple and reusable Swift class that detects **real-time internet connectivity** using `NWPathMonitor`. Built with Swift 5+ and SwiftUI.

---

## 🔌 Features

- ✅ Singleton pattern for global access  
- ✅ Publishes `isConnected` status  
- ✅ Works with SwiftUI's `@Published` / `@ObservedObject`  
- ✅ Lightweight and easy to integrate

---

## 📦 Usage

```swift
import SwiftUI

struct ContentView: View {
    @StateObject private var monitor = NetworkMonitor.shared

    var body: some View {
        VStack {
            Text(monitor.isConnected ? "Online ✅" : "Offline ❌")
                .foregroundColor(monitor.isConnected ? .green : .red)
        }
    }
}




## 📁 File Structure

SwiftUINetworkMonitor/
├── Sources/
│   └── SwiftUINetworkMonitor/
│       └── NetworkMonitor.swift
├── Package.swift
├── README.md
└── .gitignore



✅ Requirements

iOS 14+
Swift 5+
SwiftUI


🤝 Contribution
Feel free to open an issue, fork the repo, or submit a PR.


🚀 Author
Made with ❤️ by Kiran Jadhav
