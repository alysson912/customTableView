//
//  ViewController.swift
//  PrimeiroProjetoTabBar
//
//  Created by ALYSSON MENEZES on 10/11/22.
//

import UIKit

class Tela01ViewController: UIViewController {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var editatFotoButton: UIButton!
    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBOutlet weak var adicionarButton: UIButton!
    @IBOutlet weak var homeTableView: UITableView!
    
    var listaDePessoas : [Pessoa] = []
        //Pessoa(nome: "Carro1", image: UIImage(named: "car1") ?? UIImage())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
    }
    
    @IBAction func tappedEditaFotoButton(_ sender: Any) {
       
    }
    
    @IBAction func tappedAdicionaButton(_ sender: Any) {
        print("botao apertado")
        listaDePessoas.append(Pessoa(nome: nomeTextField.text ?? "", image: UIImage(named: "car1") ?? UIImage()))
        homeTableView.reloadData()
    }
    
    
    func setupTableView() {
        
        nomeTextField.delegate = self
        homeTableView.delegate = self
        homeTableView.dataSource = self
        // registrar tableViewCell
        homeTableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
        
    }
 
    
    
}
extension Tela01ViewController : UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    }
    
}

extension Tela01ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listaDePessoas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        
        cell?.setupCell(listaDePessoas[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
}
    
// protocolo para acessar galeria 
extension Tela01ViewController : UIPickerViewDelegate {
    
}
