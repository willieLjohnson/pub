import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Pub: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "Pub"
    var description = "Just your local neighborhood Pub"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

extension Theme where Site == Pub {
    static var pubTheme: Theme {
        Theme(htmlFactory: PubHTMLFactory(), resourcePaths: ["Resources/PubTheme/styles.css"])
    }
}

try Pub().publish(withTheme: .pubTheme)

