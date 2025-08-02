//
//  ContentView.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//
//  Stickman refracted to StickmanView
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            StickMan()
                .stroke(lineWidth: 4)
                .foregroundColor(.black)

            // Add more EmojiViews to decorate your Bobby
            EmojiView(symbol: "👀", size: 20, x: 0,  y: -180)
            EmojiView(symbol: "🫦", size: 20, x: 0,  y: -150)
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
