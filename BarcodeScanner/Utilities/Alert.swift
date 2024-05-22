//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Owner on 5/22/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalud Device Input", message: "Something is wrong with the camera. We are unable to capture the input.", dismissButton: .default(Text("Ok")))
    
    static let invalidScannedInput = AlertItem(title: "Invalud Sacn Type", message: "The value scanned is not valid. This app scans EAN-8 and EAN-13.", dismissButton: .default(Text("Ok")))
}


