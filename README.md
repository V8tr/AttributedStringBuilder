## Article related to this project

- [Function Builders in Swift and SwiftUI](https://www.vadimbulavin.com/swift-function-builders-swiftui-view-builder/).

---

# AttributedStringBuilder

A sample project showing how to implement custom Swift function builder using `NSAttributedString` as an example.

Usage:

```swift
class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.attributedText = NSAttributedString {
            NSAttributedString {
                "Folder "
                UIImage(systemName: "folder")!
            }
            
            "\n"
            
            NSAttributedString {
                "Document "
                UIImage(systemName: "doc")!.withRenderingMode(.alwaysTemplate)
            }
            .withAttributes([
                .font: UIFont.systemFont(ofSize: 32),
                .foregroundColor: UIColor.red
            ])
        }
    }
}
````

Result:

<p align="center">
  <img src="https://github.com/V8tr/AttributedStringBuilder/blob/master/demo.png" width="40%" alt="Swift function builders, SwiftUI ViewBuilder"/>
</p>
