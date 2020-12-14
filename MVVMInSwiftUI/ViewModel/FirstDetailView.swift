//
//  FirstView.swift
//  MVVMInSwiftUI
//
//  Created by Knoxpo MacBook Pro on 12/12/20.
//

import SwiftUI

struct FirstDetailView: View

{
   @ObservedObject var viewModel = FistViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.firstentries, id: \.self) {
                FirstView(firsty: $0)
            }.navigationBarTitle("Firstydata")
                .onAppear {
                    self.viewModel.fetchDat()
            }
        }
    
    
    
    }
    
    
    
}
