//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Mac on 21/04/2024.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()

    
    var body: some View {
        
        ZStack{
            NavigationStack{
                List(viewModel.appetizers){
                    appetizer in AppetizerListCell(appetizer: appetizer).onTapGesture {
                        viewModel.selectedAppetizer = appetizer
                        viewModel.isShowingDetail = true
                    }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(viewModel.isShowingDetail)
            }
            
            .onAppear{
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20: 0)
            if viewModel.isShowingDetail{
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!, isShowingDetail: $viewModel.isShowingDetail)
            }
            
            if viewModel.isLoading{
                LoadingView()
            }
            
            
        }.alert(item: $viewModel.alertItem) {alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            
        }
    }

}


#Preview {
    AppetizerListView()
}
