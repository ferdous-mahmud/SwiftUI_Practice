//
//  ContentView.swift
//  I Am Rich
//
//  Created by Ferdous Mahmud Akash on 10/31/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("I am Rich")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                .font(.title)
                
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 350, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
    }
}
