//
//  Row.swift
//  Reader
//
//  Created by 陈长炜 on 2021/3/27.
//

import SwiftUI

struct Row: View {
    var article: Article
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(article.title)
                .font(.title3)
                .bold()
                .padding(.bottom, 3)
            Text(article.body)
                .lineLimit(3)
            
        }
        .padding(.vertical)
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row(article: Article(id: 1, title: "标题2", body: "正文3"))
    }
}
