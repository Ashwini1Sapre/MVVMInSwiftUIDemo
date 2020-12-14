//
//  FistViewModel.swift
//  MVVMInSwiftUI
//
//  Created by Knoxpo MacBook Pro on 12/12/20.
//


import Combine
import SwiftUI


class FistViewModel: ObservableObject
{
    
    private let url = "https://api.openbrewerydb.org/breweries"
    

    private var task: AnyCancellable?
    @Published var firstentries: [FirstModel] = []
    
    func fetchDat() {
        task = URLSession.shared.dataTaskPublisher(for:URL(string: url)!)
        
            .map { $0.data}
            .decode(type: [FirstModel].self,decoder: JSONDecoder())
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \FistViewModel.firstentries, on: self)
        
        
        
    }
    
    
    
}
