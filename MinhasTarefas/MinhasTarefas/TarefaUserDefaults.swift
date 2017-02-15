//
//  TarefaUserDefaults.swift
//  MinhasTarefas
//
//  Created by Nubio Knupp on 14/02/17.
//  Copyright © 2017 Nubio Knupp. All rights reserved.
//

import Foundation

class TarefaUserDefaults{

    private let minhasTarefasChave = "MinhasTarefas";
    
    func SalvarTarefa(tarefa : String) {
        var tarefas = ListaTarefas();
        tarefas.append(tarefa);
        UserDefaults.standard.set(tarefas, forKey: minhasTarefasChave);
    }
    
    func ListaTarefas() -> [String] {
        let tarefas = UserDefaults.standard.object(forKey: minhasTarefasChave);
        
        if(tarefas != nil) {
            return tarefas as! [String]
        }
        
        return [];
    }
    
    func DeletarTarefa(index : Int) {
        var tarefas = ListaTarefas();
        
        tarefas.remove(at: index);
        
        UserDefaults.standard.set(tarefas, forKey: minhasTarefasChave);
    }

}
