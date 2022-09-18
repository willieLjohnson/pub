//
//  File.swift
//  
//
//  Created by Willie Liwa Johnson on 9/18/22.
//

import Publish
import Plot

extension PubHTMLFactory {
    func makePostsHTML(for section: Section<Site>, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .head(for: context.index, on: context.site),
            .body(.text("All Posts"))
        )
    }
}
