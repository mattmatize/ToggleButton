//
//  ToggleButtonText.swift
//  ToggleButton
//
//  Created by Mateus Da Silva on 12/1/20.
//

import SwiftUI

struct ToggleButtonText: View {
    
    @State var showing = true

    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1))
            VStack {
                VStack {

                    Image(systemName: "sun.min").font(.system(size:120))
                        .opacity(0.7)
                    
                    Text("Make Me Move")
                        .font(.title2).fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 64)
                }
                
                
            }.frame(width: 240, height: 240)
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .background(Color(#colorLiteral(red: 0.968627451, green: 0.7803921569, blue: 0.3450980392, alpha: 1)))
            .cornerRadius(24)
            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white, lineWidth: 8))
            .rotationEffect(.degrees(showing ? 0 : 180))
            .position(x: UIScreen.main.bounds.size.width / 2, y: showing ? 400 : 200)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.2)), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 20)
            .animation(.spring(response: 0.55, dampingFraction: 0.55, blendDuration: 0))
            
            //
            
            VStack {
                Spacer()
                Button(action: {
                    print("Button clicked.")
                    self.showing.toggle()
                }) {
                    Text("Toggle")
                        .frame(maxWidth: .infinity)
                        .padding(.all, 16)
                        .background(Color(#colorLiteral(red: 0.01568627451, green: 0.5764705882, blue: 0.9647058824, alpha: 1)))
                        .foregroundColor(.white)
                        .cornerRadius(64)
                }
            }.padding(.all, 32)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ToggleButtonText_Previews: PreviewProvider {
    static var previews: some View {
        ToggleButtonText()
    }
}
