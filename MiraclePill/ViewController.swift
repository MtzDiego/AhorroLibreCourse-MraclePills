import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate,UITextFieldDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var lblcountry: UILabel!
    @IBOutlet weak var textcountry: UITextField!
    @IBOutlet weak var lblzip: UILabel!
    @IBOutlet weak var textzip: UITextField!
    @IBOutlet weak var textname: UITextField!
    @IBOutlet weak var lbladdress: UILabel!
    @IBOutlet weak var textaddress: UITextField!
    @IBOutlet weak var textcity: UITextField!
    @IBOutlet weak var view2: UIView!
    //cean
    let states = ["Alaska","Arkansas", "Alabama","California","Maine","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        textname.delegate = self
        textcity.delegate = self
        textaddress.delegate = self
        textcountry.delegate = self
        textzip.delegate = self
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        lblcountry.isHidden = true
        textcountry.isHidden = true
        lblzip.isHidden = true
        textzip.isHidden = true
        lbladdress.isHidden = true
        textaddress.isHidden = true
    
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        lblcountry.isHidden = false
        textcountry.isHidden = false
        lblzip.isHidden = false
        textzip.isHidden = false
        lbladdress.isHidden=false
        textaddress.isHidden=false
    }
    @IBAction func btnsecondview(_ sender: Any) {
        if(textname.text == ""||textzip.text==""||textcountry.text==""||textcity.text==""||textaddress.text == ""||statePickerBtn.currentTitle == "Choose Your State"){
            let alert = UIAlertController(title: "Alert", message:"empty fields",preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title:"ok", style: UIAlertActionStyle.default,handler:nil))
            
            self.present(alert,animated: true,completion: nil)
        }else{
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "push", sender: self)
            }
        }
    }

}


