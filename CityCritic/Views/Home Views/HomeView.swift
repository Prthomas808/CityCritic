//
//  HomeView.swift
//  CityCritic
//
//  Created by Pedro Thomas on 1/17/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [.green.opacity(0.5), .mint.opacity(0.3)]), startPoint: .topLeading, endPoint: .topTrailing).ignoresSafeArea()
                
                Color.white
                    .offset(y: 400)
                
                ScrollView {
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: UIScreen.main.bounds.width - 30, height: 45)
                        .foregroundColor(.white.opacity(0.5))
                        .overlay {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                Text("Explore")
                                Spacer()
                            }
                            .foregroundColor(.gray)
                            .padding(.leading)
                        }
                        .padding(.bottom)
                    
                    CategoriesView()
                    
                    VStack {
                        ThingsToDoView()
                        PlacesToEatView()
                        SportEventsView()
                    }
                    .background(.white)
                    .cornerRadius(15)
                    .padding(.top, 50)
                }
                .navigationTitle("Explore")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
