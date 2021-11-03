//
//  ContentView.swift
//  H4X0R News
//
//  Created by Ferdous Mahmud Akash on 11/3/21.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    
    var body: some View {
        //NavigationView {
        VStack {
            List{
                    sentMessageView(message: "Hello...")
                    receivedMessageView(message: "hi :)")
                    receivedMessageView(message: "Hello Programmers Nothing to do after codit sisuation and there are more then one programmer work form home and make more money for their home office and make more coffee")
                    sentMessageView(message: "Don't warray I will take care everything about you and you can call me just friend and You and me")
                    receivedMessageView(message: "Ohh!")
                    sentMessageView(message: "Thank You 😍")
                    receivedMessageView(message: "Money for their home office and make more coffee")
                    sentMessageView(message: "I will take care everything about you and you can call me just friend and You and me")
                    receivedMessageView(message: "Ohh!")
                    sentMessageView(message: "Thank You 😍")
                    
            }
            HStack {
                Spacer()
                TextField("Username", text: $username)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.blue)
                            .frame(height: 30, alignment: .center)
                    )
                    .padding(.leading, 15)
                Image(systemName: "text.bubble.fill")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.purple)
                    .padding(.trailing, 30)
            }
        }
            
            //.navigationBarTitle("H4X0R NEWS")
        //}
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
            .preferredColorScheme(.light)
    }
}

// Sent Message
struct sentMessageView: View {
    let message: String

    var body: some View {
        HStack {
            Spacer()
            Text(message)
                .fontWeight(.medium)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(20)
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(.blue)
        }
    }
}

// Received Message
struct receivedMessageView: View {
    let message: String

    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(.purple)
            Text(message)
                .fontWeight(.medium)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(20)
        }
    }
}
