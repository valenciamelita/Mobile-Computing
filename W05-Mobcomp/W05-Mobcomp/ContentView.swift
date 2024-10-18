//
//  ContentView.swift
//  W05-Mobcomp
//
//  Created by student on 18/10/24.
//

import SwiftUI

struct ContentView: View {
    let flagsArray: [String] = [
        "🏳️", "🏴‍☠️", "🇦🇫", "🇦🇱", "🇩🇿", "🇦🇸", "🇦🇩", "🇧🇧", "🇧🇪", "🇧🇫",
        "🇧🇮", "🇰🇭", "🇨🇦", "🇨🇱", "🇨🇳", "🇭🇷", "🇨🇾", "🇪🇪", "🇫🇮", "🇫🇷"
    ]

    func randomFlags() {
           if let flag = flagsArray.randomElement() {
               nowFlag = flag
           }
       }
    
    @State private var nowFlag = "🏳️"
    
    var body: some View {
        NavigationStack{
            Form {
                Section{
                    Text(nowFlag)
                        .font(.system(size: 100))
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Button("Go!") { randomFlags()}
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity)
                        .padding()
                }
            } .navigationTitle("Random Flag")
        }
    }
}

#Preview {
    ContentView()
}
