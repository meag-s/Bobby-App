//
//  ContentView.swift
//  Bobby App
//
//  Created by Meagan Sim on 2/8/25.
//

//
//  ContentView.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            StickMan()
                .stroke(lineWidth: 4)
                .foregroundColor(.black)
            
            // Add more EmojiViews to decorate your Bobby
            EmojiView(symbol: "🩴", size: 50, x: -40,  y: 95)
            EmojiView(symbol: "🩴", size: 50, x: 40,  y: 95)
            EmojiView(symbol: "🩳", size: 60, x: 0,  y: 20)
            EmojiView(symbol: "👕", size: 100, x: 0,  y: -52)
            EmojiView(symbol: "👀", size: 30, x: 0,  y: -140)
            EmojiView(symbol: "🫦", size: 30, x: 0,  y: -120)
        }
        .frame(width: 200, height: 320)
    }
}

/// Reusable emoji decorator
struct EmojiView: View {
    let symbol: String
    let size: CGFloat
    let x: CGFloat
    let y: CGFloat
    var body: some View {
        Text(symbol)
            .font(.system(size: size))
            .offset(x: x, y: y)
    }
}


#Preview {
    ContentView()
}
