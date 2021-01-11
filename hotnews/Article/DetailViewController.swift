import UIKit
import WebKit

class DetailViewController: BaseViewController, WKUIDelegate {
    
    var url : String!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
      super.viewDidLoad()
      let myURL = URL(string:"https://www.apple.com")
      let myRequest = URLRequest(url: myURL!)
      webView.load(myRequest)
   }
   override func loadView() {
      let webConfiguration = WKWebViewConfiguration()
      webView = WKWebView(frame: .zero, configuration: webConfiguration)
      webView.uiDelegate = self
      view = webView
    
        
   }
}
