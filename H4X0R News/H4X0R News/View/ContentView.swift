//
//  ContentView.swift
//  H4X0R News
//
//  Created by Ferdous Mahmud Akash on 11/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts){ post in
                HStack {
                    NavigationLink(destination: DetailsView(url: post.url)) {
                        Text(String(post.points))
                            .foregroundColor(.red)
                            .frame(width: 50, height: 20, alignment: .center)
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
            .preferredColorScheme(.light)
    }
}




