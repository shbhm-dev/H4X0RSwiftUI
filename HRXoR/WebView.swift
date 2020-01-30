//
//  WebView.swift
//  HRXoR
//
//  Created by STARKS on 1/31/20.
//  Copyright © 2020 STARKS. All rights reserved.
//
// WEB VIEW FOR SWIFT UI
import Foundation
import SwiftUI
import WebKit

struct WebView : UIViewRepresentable{
    let urlString : String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let saveString = urlString {
            if let url = URL(string: saveString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
            
            
        }
        
    }
}
