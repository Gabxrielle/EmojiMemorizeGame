//
//  ContentView.swift
//  Memorize
//
//  Created by Gabrielle Rodrigues on 9/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
            
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
   @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
            
        }.onTapGesture {
            isFaceUp.toggle()
        }
            
        }
    }

    #Preview {
        ContentView()
        
    }

