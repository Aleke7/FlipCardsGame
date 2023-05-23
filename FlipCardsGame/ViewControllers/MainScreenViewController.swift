import UIKit

class MainScreenViewController: UIViewController {
    
    private lazy var nameOfGameLabel: UILabel = {
        let label = UILabel()
        label.text = "Flip Cards"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 36, weight: .bold)
        label.textColor = .systemOrange
        return label
    }()
    
    private lazy var startButton: UIButton = {
        let button = UIButton()
        var config = UIButton.Configuration.filled()
        
        config.buttonSize = .large
        config.cornerStyle = .medium
        config.image = UIImage(systemName: "chevron.right")
        config.imagePadding = 5
        config.imagePlacement = .trailing
        config.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(scale: .medium)
        
        button.setTitle("Start", for: .normal)
        button.configuration = config
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
}
