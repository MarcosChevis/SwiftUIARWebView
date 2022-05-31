//
//  SwiftUIARView.swift
//  SwiftUIARView
//
//  Created by Sarang Borude on 4/10/20.
//  Copyright © 2020 Sarang Borude. All rights reserved.
//

import SwiftUI
import WebKit

struct SwiftUIARCardView: View {
    @State private var textToShow = "Hello AR"
    var body: some View {
        ZStack {
            
//            WKWebView()
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(textToShow)
                    .foregroundColor(.white)
                    .bold().font(.title)
                Button(action: {
                    self.textToShow = "Button Tapped!"
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .frame(width: 150, height: 50)
                        Text("Tap Me")
                    }
                }
            }
        }
    }
}

struct SwiftUIARCardView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIARCardView()
    }
}


import WebKit
 
struct WebView: UIViewRepresentable {
 
    var url: URL
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
