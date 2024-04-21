//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Mac on 21/04/2024.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView{
            List(MockData.appetizers){
                appetizer in AppetizerListCell(appetizer: appetizer)
            }
                .navigationTitle("🍟 Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
