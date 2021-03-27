//
//  Row.swift
//  Reader
//
//  Created by 陈长炜 on 2021/3/27.
//

import SwiftUI

struct Row: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("人")
                .font(.title3)
                .bold()
                .padding(.bottom, 3)
            Text("应用想要做的是显示博客文章列表，用户点击后可以查看全文。此处首先将目光聚焦到文章列表上，文章列表应包含标题和文字纵向排列，因此放置在 VStack 中。文章列表中包含多篇文章，每篇文章不需在列表处显示全文，仅需预览即可。因此使用修改器 .lineLimit(3) 将文本限制为 3 行，结果如下")
                .lineLimit(3)
            
        }
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row()
    }
}
