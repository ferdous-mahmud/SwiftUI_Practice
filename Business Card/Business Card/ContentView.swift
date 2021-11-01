//
//  ContentView.swift
//  Business Card
//
//  Created by Ferdous Mahmud Akash on 11/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(UIColor(red: 0.18, green: 0.53, blue: 0.65, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("AngelaYu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Angela Yu")
                    .font(Font.custom("Pacifico-Regular", size: 50))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Text("iOS developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 60, alignment: .center)
                    .padding()
                    .foregroundColor(.white)
                    .overlay(
                        HStack {
                            Image(systemName: "phone.fill")
                                .foregroundColor(.green)
                            Text("+880 191 188 556")
                                .font(Font.custom("Pacifico-Regular", size: 30))
                        }
                    )
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
    }
}
