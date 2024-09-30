//
//  ContentView.swift
//  DungeonDice
//
//  Created by Aimee Hong on 9/27/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var resultMessage = ""
    
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                titleView
                
                Spacer()
                
                resultMessageView
                
                Spacer()
                
                ButtonLayout(resultMessage: $resultMessage)
                
            }
            .padding()
        }
    }
}

extension ContentView {
    private var titleView: some View {
        Text("Dungeon Dice")
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundStyle(.red)
    }
    
    private var resultMessageView: some View {
        Text(resultMessage)
            .font(.largeTitle)
            .fontWeight(.medium)
            .frame(height: 150)
            .multilineTextAlignment(.center)
    }
    
}

#Preview {
    ContentView()
}
