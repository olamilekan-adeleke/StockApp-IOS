//
//  ContentView.swift
//  StockApp
//
//  Created by Enigma Kod on 11/03/2023.
//

import CoreData
import SwiftUI

struct ContentView: View {
    @ObservedObject private var model = ContentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ... 50, id: \.self) { _ in
                    HStack {
                        VStack(alignment: .leading) {
                            Text("S&P 500").bold()
                            Text("S&P 500")
                                .font(.subheadline)
                        }

                        Spacer()

                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 100, height: 50)

                        VStack(alignment: .trailing) {
                            Text("3,349.61")
                                .bold()
                            Text("+0.53")
                        }
                    }
                }
            }
            .listStyle(.plain)
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
