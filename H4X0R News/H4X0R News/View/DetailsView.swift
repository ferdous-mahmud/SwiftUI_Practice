//
//  DetailsView.swift
//  H4X0R News
//
//  Created by Ferdous Mahmud Akash on 11/3/21.
//

import SwiftUI

struct DetailsView: View {
    var url: String?
    
    var body: some View {
        WebView(webURL: url!)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "https://www.google.com")
    }
}


