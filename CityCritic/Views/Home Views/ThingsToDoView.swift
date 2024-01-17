//
//  ThingsToDoView.swift
//  CityCritic
//
//  Created by Pedro Thomas on 1/17/24.
//

import SwiftUI

struct ThingsToDoView: View {
    var body: some View {
        VStack {
            HomeHeadersView(activity: "Things To Do")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(1...4, id: \.self) { _ in
                        ThingsToDoCell()
                            .padding(.bottom)
                    }
                }
            }
            .padding(.leading, 5)
        }
        .padding(.top)
    }
}

struct ThingsToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ThingsToDoView()
    }
}

struct HomeHeadersView: View {
    @State var activity: String
    
    var body: some View {
        HStack {
            Text(activity)
            Spacer()
            Text("See More")
        }
        .fontWeight(.semibold)
        .padding(.leading, 5)
        .padding(.trailing)
    }
}

struct ThingsToDoCell: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 5.0)
                    .foregroundColor(.green)
                    .frame(width: 125, height: 125)
                    .padding(5)
                
                Image("moma")
                    .resizable()
                    .frame(width: 110, height: 110)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            
                Text("MOMA")
                    .font(.system(size: 15))
                Text("9:00 - 6:00")
                    .font(.system(size: 13))

        }
        
    }
}
