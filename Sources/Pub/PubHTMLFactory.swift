//
//  File.swift
//  
//
//  Created by Willie Liwa Johnson on 9/18/22.
//

import Publish
import Plot

struct PubHTMLFactory<Site: Website>: HTMLFactory {
    func makeIndexHTML(for index: Publish.Index, context: Publish.PublishingContext<Site>) throws -> Plot.HTML {
        HTML(.text("Index"))
    }
    
    func makeSectionHTML(for section: Publish.Section<Site>, context: Publish.PublishingContext<Site>) throws -> Plot.HTML {
        try makePostsHTML(for: section, context: context)
    }
    
    func makeItemHTML(for item: Publish.Item<Site>, context: Publish.PublishingContext<Site>) throws -> Plot.HTML {
        HTML(.text("Item"))
    }
    
    func makePageHTML(for page: Publish.Page, context: Publish.PublishingContext<Site>) throws -> Plot.HTML {
        HTML(.text("Page"))
    }
    
    func makeTagListHTML(for page: Publish.TagListPage, context: Publish.PublishingContext<Site>) throws -> Plot.HTML? {
        HTML(.text("TagList"))
    }
    
    func makeTagDetailsHTML(for page: Publish.TagDetailsPage, context: Publish.PublishingContext<Site>) throws -> Plot.HTML? {
        HTML(.text("TagDetails"))
    }
}
