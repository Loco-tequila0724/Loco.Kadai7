import UIKit

class GreenViewController: UIViewController {
    @IBOutlet weak private var firstTextField: UITextField!
    @IBOutlet weak private var secondTextField: UITextField!
    @IBOutlet weak private var calculateNumberLabel: UILabel!
    private let calculator = Calculator()

    @IBAction private func calculateButton(_ sender: Any) {
        calculator.calculateAndDisplay(sing: -, firstTextField: firstTextField, secondTextField: secondTextField, calculateNumberLabel: calculateNumberLabel)
        view.endEditing(true)
    }
}
