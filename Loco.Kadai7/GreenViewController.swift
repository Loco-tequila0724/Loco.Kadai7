import UIKit

class GreenViewController: UIViewController {
    @IBOutlet weak private var firstTextField: UITextField!
    @IBOutlet weak private var secondTextField: UITextField!
    @IBOutlet weak private var calculateNumberLabel: UILabel!
    private weak var delegate: CalculateProtocol?
    private let redController = RedViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = redController
    }

    @IBAction private func calculateButton(_ sender: Any) {
        self.delegate?.calculateAndDisplay(sing: (-), firstTextField: firstTextField, secondTextField: secondTextField, calculateNumberLabel: calculateNumberLabel)

        view.endEditing(true)
    }
}
