//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Owner on 5/21/24.
//

import SwiftUI
import SwiftData

struct BarcodeScannerView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                    
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text("Not Yet Scanned")
                    .font(.largeTitle)
                    .foregroundStyle(.green)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Spacer()
            }
            .navigationTitle("Barcode Scanner")
        }

    }
}

#Preview {
    BarcodeScannerView()
        .modelContainer(for: Item.self, inMemory: true)
}
