//
//  CategoriesView.swift
//  CityCritic
//
//  Created by Pedro Thomas on 1/17/24.
//

import SwiftUI

struct CategoriesView: View {
    let categories: [Categories] = [
        Categories(categoryName: "Shopping", categoryImage: "bag", color: .orange),
        Categories(categoryName: "Food", categoryImage: "fork.knife", color: .red),
        Categories(categoryName: "Concerts", categoryImage: "music.mic", color: .blue),
        Categories(categoryName: "Sports", categoryImage: "baseball.fill", color: .pink),
        Categories(categoryName: "Museums", categoryImage: "paintpalette", color: .purple),
        
    ]
    
    var body: some View {
        HStack {
            ForEach(categories) { cateogry in
                VStack(spacing: 5) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 65, height: 65)
                            .foregroundColor(cateogry.color)
                        
                        Image(systemName: cateogry.categoryImage)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                    }
                    Text(cateogry.categoryName)
                        .font(.system(size: 14))
                        .fontWeight(.light)
                }
            }
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
