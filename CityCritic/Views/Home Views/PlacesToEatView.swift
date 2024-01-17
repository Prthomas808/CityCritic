//
//  PlacesToEatView.swift
//  CityCritic
//
//  Created by Pedro Thomas on 1/17/24.
//

import SwiftUI

struct PlacesToEatView: View {
    var body: some View {
        VStack {
            HomeHeadersView(activity: "Places To Eat")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(1...6, id: \.self) { _ in
//                        RoundedRectangle(cornerRadius: 8)
//                            .frame(width: 125, height: 175)
                        PlacesToEatCellView()
                    }
                }
            }
            .padding(.horizontal, 5)
        }
    }
}

struct PlacesToEatView_Previews: PreviewProvider {
    static var previews: some View {
        PlacesToEatView()
    }
}

struct PlacesToEatCellView: View {
    var body: some View {
                VStack {
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 5.0)
                            .foregroundColor(.red)
                            .frame(width: 125, height: 125)
                            .padding(5)
                        
                        Image("tacos")
                            .resizable()
                            .frame(width: 110, height: 110)
                            .clipShape(Circle())
                    }
                    
                    Text("The Taco Spot")
                }
            }
}
