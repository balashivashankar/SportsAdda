//
//  LogInViewController.swift
//  SportsAdda
//
//  Created by Bala Shiva on 09/03/20.
//  Copyright © 2020 BalaShivaShankar. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    //MARK: Properties
    var emailTextField:UITextField!
    var logInButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        CreateUI()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - UI Creation
    func CreateUI()
    {
        view.backgroundColor = .green
        //TODO: EMAIL TextField Properties
        emailTextField = UITextField()
        emailTextField.frame = CGRect(x: 10, y: 260, width: 300, height: 40)
        emailTextField.backgroundColor = UIColor.white
        emailTextField.placeholder = "Enter Your Registered Mail"
        emailTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        emailTextField.adjustsFontSizeToFitWidth = true
        emailTextField.textAlignment = .left
        emailTextField.delegate = self
        view.addSubview(emailTextField)
        
        //TODO: Login Button Properties
        logInButton = UIButton(type: UIButton.ButtonType.system)
        logInButton.frame = CGRect(x: 10, y: 310, width: 100, height: 45)
        logInButton.setTitle("LOGIN", for: UIControl.State.normal)
        logInButton.layer.cornerRadius = 10
        logInButton.backgroundColor = UIColor.orange
        logInButton.addTarget(self, action: #selector(handleLogIn), for: UIControl.Event.touchUpInside)
        view.addSubview(logInButton)
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func handleLogIn()
    {
        if (emailTextField.text == ToStoreData.instanceOfToStoreData.registerredEmail)
        {
            let loginController = ActivityTableViewController()
            let navigationController = UINavigationController(rootViewController: loginController)
            navigationController.modalPresentationStyle = .fullScreen
            self.present(navigationController, animated: true, completion: nil)
        }
        else
        {
            self.view.makeToast("Enter Valid Email", duration: 3.0, position: .top)
        }
    }

}
extension LogInViewController: UITextFieldDelegate{
    //MARK : TextFieldDeligates
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
    {
        textField.backgroundColor = UIColor.white
        var result:Bool = false
        if(textField == emailTextField && isValidEmail(emailStr: "\(emailTextField.text ?? "")") == true)
        {
            result = true
            
        }
        else
        {
           //Toast method for invalid Email
           self.view.makeToast("Enter Valid Email", duration: 3.0, position: .top)
           result = false
        }
        
        
        return result
    }
    
   
    func isValidEmail(emailStr:String) -> Bool
    {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: emailTextField.text)
    }
    

}
