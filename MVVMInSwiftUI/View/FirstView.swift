//
//  FirstView.swift
//  MVVMInSwiftUI
//
//  Created by Knoxpo MacBook Pro on 12/12/20.
//


import SwiftUI

struct FirstView: View
{
    private let firsty: FirstModel
    init(firsty: FirstModel)
    {
        self.firsty = firsty
    }
   
    var body: some View
    {
        
        HStack{
            Image(systemName: "star")
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80)
            VStack(alignment: .leading,spacing: 15){
                Text(firsty.name)
                    .font(.system(size: 18))
                    .foregroundColor(Color.blue)
                Text("\(firsty.city) - \(firsty.street)")
                    .font(.system(size: 14))
                
        }
            
    }
    }
    
    
    
    
    
}
