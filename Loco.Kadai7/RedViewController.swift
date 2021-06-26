import UIKit

// デリゲートを使うためプロトコル準備。
protocol CalculateProtocol: AnyObject {
    func calculateAndDisplay(sing: (Int, Int) -> Int, firstTextField: UITextField, secondTextField: UITextField, calculateNumberLabel: UILabel)
}
// 計算式
extension CalculateProtocol {
// 引数で、算術記号を決めれるようにした。
    func calculateAndDisplay(sing: (Int, Int) -> Int, firstTextField: UITextField, secondTextField: UITextField, calculateNumberLabel: UILabel) {
        let firstValue = Int(firstTextField.text!) ?? 0
        let secondValue = Int(secondTextField.text!) ?? 0

        calculateNumberLabel.text! = String(sing(firstValue, secondValue))
    }
}
class RedViewController: UIViewController, CalculateProtocol {
    @IBOutlet weak private var firstTextField: UITextField!
    @IBOutlet weak private var secondTextField: UITextField!
    @IBOutlet weak private var calculateNumberLabel: UILabel!

    @IBAction private func calculateButton(_ sender: Any) {
        calculateAndDisplay(sing: (+), firstTextField: firstTextField, secondTextField: secondTextField, calculateNumberLabel: calculateNumberLabel)

        view.endEditing(true)
    }
}
