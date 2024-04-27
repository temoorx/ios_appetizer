//
//  LoadingView.swift
//  Appetizers
//
//  Created by Mac on 27/04/2024.
//

import SwiftUI

//struct ActivityIndicator : UIViewRepresentable{
//    
//    func makeUIView(context: Context) -> UIActivityIndicatorView {
//        
//        let activityIndicatorView = UIActivityIndicatorView(style: .large)
//        activityIndicatorView.color = UIColor.primaryColor
//        activityIndicatorView.startAnimating()
//        return activityIndicatorView
//        
//    }
//    
//    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
//    }
//}

struct LoadingView : View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
                
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .primaryColor))
                .scaleEffect(2.0, anchor: .center)
        }
    }
}

