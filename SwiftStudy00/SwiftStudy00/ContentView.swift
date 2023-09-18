//
//  ContentView.swift
//  SwiftStudy00
//
//  Created by dgsw8th61 on 2023/09/18.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    
    
    var body: some View {
        
        VStack {
            
            if let data = viewModel.data {
                Text("\(data.name) 님 환영합니다 ! ")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .padding(10)
                
                Text("email : \(data.email)")
                    .foregroundColor(.black)
                    .font(.system(size: 15))
                
            }
        }
        .onAppear(perform: viewModel.fetchdata)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
