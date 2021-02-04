import UIKit
import WebKit

class DetailViewController: BaseViewController, WKUIDelegate {
    
    var articleModel: ArticleModel!

    var url : String!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
      super.viewDidLoad()
      let myURL = URL(string:"https://abcnews.go.com/")
      let myRequest = URLRequest(url: myURL!)
      webView.load(myRequest)
   }
    @IBAction func backButton(_ sender: Any) { self.dismiss(animated: true, completion: nil)
    }
    
   override func loadView() {
      let webConfiguration = WKWebViewConfiguration()
      webView = WKWebView(frame: .zero, configuration: webConfiguration)
      webView.uiDelegate = self
      view = webView
    
        
   }
}
