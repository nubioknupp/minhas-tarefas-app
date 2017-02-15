//
//  ViewController.swift
//  MinhasTarefas
//
//  Created by Nubio Knupp on 13/02/17.
//  Copyright © 2017 Nubio Knupp. All rights reserved.
//

import UIKit

class AdicionarViewController: UIViewController {

    
    @IBOutlet weak var tarefaTextView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func AdicionarTarefaAction(_ sender: Any) {
        if let tarefa = tarefaTextView.text {
            
            let tarefaUserDefaults = TarefaUserDefaults();
            tarefaUserDefaults.SalvarTarefa(tarefa: tarefa);
            tarefaTextView.text = "";
            
            _ = navigationController?.popToRootViewController(animated: true);
        }
            //_ = navigationController?.popViewController(animated: true)
    }
}

