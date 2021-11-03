//
//  WebView.swift
//  H4X0R News
//
//  Created by Ferdous Mahmud Akash on 11/3/21.
//

import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    
    let webURL: String
    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: webURL)!))
    }
    
}
