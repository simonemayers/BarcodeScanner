//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Owner on 5/21/24.
//

import SwiftUI
import SwiftData

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxHeight: 300)
                
                Spacer().frame(height: 60)
                    
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text(viewModel.statusText)
                    .font(.largeTitle)
                    .foregroundStyle(viewModel.statusTextColor)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()

                
                Spacer()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem){
                alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            }
        }

    }
}

#Preview {
    BarcodeScannerView()
}
