//
//  ContentViewModel.swift
//  SwiftStudy00
//
//  Created by dgsw8th61 on 2023/09/18.
//

import Foundation

class ContentViewModel : ObservableObject {
    @Published var data : User?
    func fetchdata (){
        self.data = User(name: "이윤채", email: "leeyoonchae@gmail.com")
        
    }

    
}
