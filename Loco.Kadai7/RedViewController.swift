import UIKit

struct Calculator {
    func calculateAndDisplay(sing: (Int, Int) -> Int, firstTextField: UITextField, secondTextField: UITextField, calculateNumberLabel: UILabel) {
        let firstValue = Int(firstTextField.text!) ?? 0
        let secondValue = Int(secondTextField.text!) ?? 0

        calculateNumberLabel.text! = String(sing(firstValue, secondValue))
    }
}
class RedViewController: UIViewController {
    @IBOutlet weak private var firstTextField: UITextField!
    @IBOutlet weak private var secondTextField: UITextField!
    @IBOutlet weak private var calculateNumberLabel: UILabel!
    private let calculator = Calculator()

    @IBAction private func calculateButton(_ sender: Any) {
        calculator.calculateAndDisplay(sing: +, firstTextField: firstTextField, secondTextField: secondTextField, calculateNumberLabel: calculateNumberLabel)

        view.endEditing(true)
    }
}
