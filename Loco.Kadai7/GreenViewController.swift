import UIKit

class GreenViewController: UIViewController {
    @IBOutlet weak private var firstTextField: UITextField!
    @IBOutlet weak private var secondTextField: UITextField!
    @IBOutlet weak private var calculateNumberLabel: UILabel!

    @IBAction private func calculateButton(_ sender: Any) {
        Calculator().calculateAndDisplay(sing: -, firstTextField: firstTextField, secondTextField: secondTextField, calculateNumberLabel: calculateNumberLabel)

        view.endEditing(true)
    }
}
