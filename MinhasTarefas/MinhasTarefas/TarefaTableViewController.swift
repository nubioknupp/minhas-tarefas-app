//
//  TarefaTableViewController.swift
//  MinhasTarefas
//
//  Created by Nubio Knupp on 14/02/17.
//  Copyright © 2017 Nubio Knupp. All rights reserved.
//

import UIKit

class TarefaTableViewController: UITableViewController {
    var tarefas: [String] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ListaTarefas();
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        ListaTarefas();
        tableView.reloadData();
        
    }
    
    func ListaTarefas() {
        let tarefaUserDefaults = TarefaUserDefaults();
        tarefas = tarefaUserDefaults.ListaTarefas();
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefas.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaTarefaId", for: indexPath);
        
        celula.textLabel?.text = tarefas[indexPath.row];
        
        return celula;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
