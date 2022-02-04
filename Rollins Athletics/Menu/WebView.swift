//
//  WebView.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/30/22.
//
import SwiftUI
import WebKit
 
// WebView is used to display the Video Center for Rollins
// and the Live Stats offered for rollins
// It loads in an external website
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
