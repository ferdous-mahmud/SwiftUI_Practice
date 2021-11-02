//
//  InfoView.swift
//  Business Card
//
//  Created by Ferdous Mahmud Akash on 11/2/21.
//

import SwiftUI

struct InfoView: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 60, alignment: .center)
            .padding()
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                        .font(.system(size: 30))
                    Text(text)
                        .font(Font.custom("Pacifico-Regular", size: 30))
                }
            )
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "phone.fill", text: "Hello")
            .previewLayout(.sizeThatFits)
    }
}
