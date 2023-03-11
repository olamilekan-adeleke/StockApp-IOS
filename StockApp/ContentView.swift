//
//  ContentView.swift
//  StockApp
//
//  Created by Enigma Kod on 11/03/2023.
//

import CoreData
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ... 50, id: \.self) { number in
                    Text("\(number)")
                }
            }
            .navigationTitle("My Stocks")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    EditButton()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
