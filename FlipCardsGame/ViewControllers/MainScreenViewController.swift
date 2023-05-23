import UIKit
import SnapKit

class MainScreenViewController: UIViewController {
    
    private lazy var nameOfGameLabel: UILabel = {
        let label = UILabel()
        label.text = "Flip Cards"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 36, weight: .bold)
        label.textColor = .white
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
    
    private lazy var gamePrizeButton: UIButton = {
        let button = UIButton()
        var config = UIButton.Configuration.filled()
        
        config.buttonSize = .large
        config.cornerStyle = .medium
        config.image = UIImage(systemName: "gift")
        config.imagePadding = 5
        config.imagePlacement = .trailing
        config.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(scale: .medium)
        
        button.configuration = config
        
        button.layer.cornerRadius = button.frame.size.width / 2
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)

        
        return button
    }()
    
    private lazy var gameRulesButton: UIButton = {
        let button = UIButton()
        var config = UIButton.Configuration.filled()
        
        config.buttonSize = .large
        config.cornerStyle = .medium
        config.image = UIImage(systemName: "questionmark")
        config.imagePadding = 5
        config.imagePlacement = .trailing
        config.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(scale: .medium)
        
        button.configuration = config
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 0xFC, green: 0xA6, blue: 0x68)
        makeContstraints()
    }
    
    private func makeContstraints() {
        
        view.addSubview(nameOfGameLabel)
        view.addSubview(startButton)
        view.addSubview(gameRulesButton)
        view.addSubview(gamePrizeButton)
        
        nameOfGameLabel.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
        }
        
        startButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        gamePrizeButton.snp.makeConstraints { make in
            make.trailing.bottom.equalToSuperview()
        }
        
        gameRulesButton.snp.makeConstraints { make in
            make.leading.bottom.equalToSuperview()
        }
        
    }
    
}
