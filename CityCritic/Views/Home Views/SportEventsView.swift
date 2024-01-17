//
//  SportEventsView.swift
//  CityCritic
//
//  Created by Pedro Thomas on 1/17/24.
//

import SwiftUI

struct SportEventsView: View {
    var body: some View {
        VStack {
            HomeHeadersView(activity: "Sports")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(1...4, id: \.self) { _ in
                        SportEventsCellView()
                    }
                }
            }
            .padding(.horizontal, 5)
        }
        .padding(.top)
    }
}

struct SportEventsView_Previews: PreviewProvider {
    static var previews: some View {
        SportEventsView()
    }
}

struct SportEventsCellView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: 120, height: 125)
            .foregroundColor(.purple.opacity(0.2))
            .overlay {
                VStack(alignment: .leading, spacing: 5) {
                    Image("stadium")
                        .resizable()
                        .scaledToFit()
                    
                    VStack(alignment: .leading) {
                        Text("Yankees Game")
                            .font(.system(size: 15))
                        Text("6:30")
                            .font(.system(size: 13))
                    }
                    .padding(.leading, 5)
                    .padding(.bottom, 5)
                }
            }
    }
}
