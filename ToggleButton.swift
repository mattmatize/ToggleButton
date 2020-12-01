//
//  ContentView.swift
//  Toggle Button
//
//  Created by Eli Rousso on 7/15/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = true
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1))
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.3)))
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white, lineWidth: 8))
                .rotationEffect(.degrees(show ? 0 : 180))
                .position(x: UIScreen.main.bounds.size.width / 2, y: show ? 400 : 200)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.2)), radius: 10, x: 0, y: 20)
                .animation(.spring(response: 0.55, dampingFraction: 0.55, blendDuration: 0))
            VStack {
                Spacer()
                Button(action: {
                    print("I like turtles")
                    self.show.toggle()
                }) {
                    Text("Toggle")
                        .frame(maxWidth: .infinity)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 16)
                        .background(Color(#colorLiteral(red: 0.01568627451, green: 0.5764705882, blue: 0.9647058824, alpha: 1)))
                        .foregroundColor(.white)
                        .cornerRadius(64)
                }
            }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 32)
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
