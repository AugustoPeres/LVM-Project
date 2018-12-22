import networkx as nx
import matplotlib.pyplot as plt
import os
import numpy as np


"""
RUNNING THE PROMELA CODE IN THE TERMINAL
spin -a -f '[]<>(len(from_1_3) > 0 || len(from_2_1) > 0 || len(from_3_2) > 0)' nome_do_ficheiro.pml
gcc pan.c -o pan
./pan -a -f -mN
onde n corresponde a um numero inteiro
"""


class promela_generator():
    def __init__(self):
        self.G = nx.DiGraph()
        self.tables = {}

    def add_edge(self, from_node, to_node):
        self.G.add_edge(from_node, to_node)

    def draw_graph(self):
        pos = nx.spring_layout(self.G)
        nx.draw_networkx(self.G, pos = pos)
        edge_labels = self.G.get_edge_data(self.G, 'weights')
        nx.draw_networkx_edge_labels(self.G, pos = pos, edge_labels = edge_labels)
        plt.show()

    def ask_cost_tables(self):
        for node in self.G.nodes():
            if node != 0:
                for n in self.G.neighbors(node):
                    if n != 0:
                        a = input("Cost for node " + str(node) + ' when taking node ' + str(n) + ': ')
                        b = [int(x) for x in a.split()]
                        self.tables['from_' + str(node) + '_to_' + str(n)] = b

    def generate_promela_code(self, file_name):
        size_tabela = 4
        size_of_g = len(list(self.G.nodes()))
        file = open(os.path.join(os.getcwd(), file_name + '.pml'), 'w')
        file.write("/*********************\nPromela code generated automatically\nAugusto Peres - 81821\nLuis Fonseca - 83636\n***********************/\n")
        file.write("\n")
        file.write("typedef caminho{\n")
        file.write("    byte cost;\n")
        file.write("    bit c[" + str(size_of_g) + "];")
        file.write("\n};")
        file.write("\n")

        file.write("typedef tabela{\n")
        file.write("    byte array[" + str(size_tabela) + "];")
        file.write("\n};")
        file.write("\n")

        """
        NOTA: cada no vai ter diversas tabelas 
        de custo mas so acedemos as dos seus vizinhos

        NOTA: Definimos um cost to target infinito quando o no 
        nao consegue atingir o target
        """
        file.write("typedef node{\n")
        file.write("    byte elected_node;\n    byte n;\n    tabela cost_table[n];")
        file.write("\n    byte cost_to_target;\n    byte current_cost;\n    caminho caminho_atual;\n    byte costs[" + str(size_of_g) + "];\n")
        file.write("\n};")

        file.write("\n")
        """criar os canais"""
        for node in self.G.nodes():
            for n in self.G.predecessors(node):
                if node == 0:
                    file.write("chan t0_to_" + str(n) + " = [" + str(size_of_g) + "] of { byte };\n")
                if node != 0:
                    file.write("chan from_" + str(node) + "_" + str(n) + " = [" + str(size_of_g) + "] of { caminho };\n")
        
        file.write("\n")
        """initialize all nodes as global variables"""
        for node in self.G.nodes():
            if node != 0:
                file.write("node node_" + str(node) + ";\n")
        
        file.write("\n")
        """creating all proctypes"""
        for node in self.G.nodes():
            if node != 0:
                file.write("proctype node_" + str(node) + "_process(){\n")
                file.write("    caminho x;\n")
                if node in self.G.predecessors(0):
                    file.write("    byte custo_t0;\n")
                file.write("    do\n")
                if node in self.G.predecessors(0):
                    file.write("    :: t0_to_" + str(node) + " ? custo_t0;\n")
                    file.write("    if\n")
                    file.write("        :: custo_t0 < node_" + str(node) + ".current_cost ->\n")
                    file.write("        node_" + str(node) + ".current_cost = custo_t0;\n")
                    file.write("        node_" + str(node) + ".elected_node = 0;\n")
                    for i in range(size_of_g):
                        if i == 0 or i == node:
                            file.write("        node_" + str(node) + ".caminho_atual.c[" + str(i) + "] = 1;\n")
                        else:
                            file.write("        node_" + str(node) + ".caminho_atual.c[" + str(i) + "] = 0;\n")
                    file.write("        node_" + str(node) + ".caminho_atual.cost = node_" + str(node) + ".cost_to_target;\n")
                    for i in range(size_of_g):
                        if i == 0 or i == node:
                            file.write("        x.c[" + str(i) + "] = 1;")
                        else:
                            file.write("        x.c[" + str(i) + "] = 0;")
                    file.write("\n")
                    file.write("        x.cost = node_" + str(node) + ".cost_to_target;\n")    
                    for n in self.G.predecessors(node):
                        file.write("        from_" + str(node) + "_" + str(n) + " ! x;\n")
                    file.write("    fi\n\n")

                """Now we write for when the node receives from its neighbors"""
                for n in self.G.neighbors(node):
                    if n != 0:
                        file.write("    ::if\n")
                        file.write("        ::len(from_" + str(n) + "_" + str(node) + ") > 0 ->\n")
                        file.write("        from_" + str(n) + "_" + str(node) + " ? x;\n")
                        file.write("        if\n")
                        file.write("            ::(x.cost < 255) ->\n")
                        # new line here
                        file.write("            if\n")
                        #new line here
                        file.write("                :: x.c[" + str(node) + "] == 0 ->\n")
                        file.write("                if\n")
                        file.write("                    ::node_" + str(node) + ".cost_table[" + str(n) + "].array[x.cost] < node_" + str(node) + ".current_cost -> \n")
                        file.write("                    node_" + str(node) + ".current_cost = node_"  + str(node) + ".cost_table[" + str(n) + "].array[x.cost];\n")
                        file.write("                    node_" + str(node) + ".elected_node = " + str(n) + ";\n")
                        for i in range(size_of_g):
                            if i == node:
                                file.write("                    node_" + str(node) + ".caminho_atual.c[" + str(i) + "] = 1;")
                            else:
                                file.write("                    node_" + str(node) + ".caminho_atual.c[" + str(i) + "] = x.c[" + str(i) + "];")
                        file.write("\n")
                        file.write("                    node_" + str(node) + ".caminho_atual.cost = node_" + str(node) + ".cost_table[" + str(n) + "].array[x.cost];\n" )
                        file.write("                    x.c[" + str(node) + "] = 1;\n")
                        file.write("                    x.cost = node_" + str(node) + ".cost_table[" + str(n) + "].array[x.cost];\n")
                        file.write("                    node_" + str(node) + ".costs[" + str(n) + "] = x.cost;\n")
                        for npred in self.G.predecessors(node):
                            file.write("                    from_" + str(node) + "_" + str(npred) + " ! x;\n")
                        file.write("                    :: else ->\n")
                        file.write("                    ::if\n")
                        file.write("                        ::node_" + str(node) + ".elected_node == " + str(n) + " ->\n")
                        file.write("                        node_" + str(node) + ".current_cost = node_" + str(node) + ".cost_table[" + str(n) + "].array[x.cost];\n")
                        file.write("                        if\n")
                        for succ in self.G.neighbors(node):
                            if succ == 0:
                                file.write("                        ::node_" + str(node) + ".cost_to_target < node_" + str(node) + ".current_cost->\n")
                                file.write("                        node_" + str(node) + ".current_cost = node_" + str(node) + ".cost_to_target;\n")
                                file.write("                        node_" + str(node) + ".elected_node = 0;\n")
                                for i in range(size_of_g):
                                    if i == node or i == 0:
                                        file.write("                        node_" + str(node) + ".caminho_atual.c[" + str(i) +"] = 1;\n")
                                    else:
                                        file.write("                        node_" + str(node) + ".caminho_atual.c[" + str(i) +"] = 0;\n")
                                file.write("                        node_" + str(node) + ".caminho_atual.cost = node_" + str(node) + ".cost_to_target;\n")
                                for i in range(size_of_g):
                                    if i == node or i == 0:
                                        file.write("                        x.c[" + str(i) +"] = 1;\n")
                                    else:
                                        file.write("                        x.c[" + str(i) +"] = 0;\n")
                                file.write("                        x.cost = node_" + str(node) + ".cost_to_target;\n")
                                for npred in self.G.predecessors(node):
                                    file.write("                        from_" + str(node) + "_" + str(npred) + " ! x;\n")
                            if succ != 0 and succ != n:
                                file.write("                        ::node_" + str(node) + ".cost_table[" + str(succ) + "].array[node_" + str(succ) + ".current_cost]" + " < node_" + str(node) + ".cost_table[" + str(succ) + "].array[node_" + str(succ) + ".current_cost] && node_" + str(succ) + ".caminho_atual.c[" + str(node) + "] == 0 ->\n")
                                file.write("                        node_" + str(node) + ".current_cost = " + "node_" + str(node) + ".cost_table[" + str(succ) + "].array[node_" + str(succ) + ".current_cost];\n")
                                file.write("                        node_" + str(node) + ".elected_node = " + str(succ) + ";\n")
                                for i in range(size_of_g):
                                    if i != node:
                                        file.write("                        node_" + str(node) + ".caminho_atual.c[" + str(i) + "] = x.c[" + str(i) + "];\n")
                                    else:
                                        file.write("                        node_" + str(node) + ".caminho_atual.c[" + str(i) + "] = 1;\n")
                                file.write("                        x.c[" + str(node) + "] = 1;\n")
                                file.write("                        node_" + str(node) + ".caminho_atual.cost = " + "node_" + str(node) + ".cost_table[" + str(succ) + "].array[node_" + str(succ) + ".current_cost];\n")
                                file.write("                        x.cost = " + "node_" + str(node) + ".cost_table[" + str(succ) + "].array[node_" + str(succ) + ".current_cost];\n")
                                for npred in self.G.predecessors(node):
                                    file.write("                        from_" + str(node) + "_" + str(npred) + " ! x;\n")
                        #new_line
                        file.write("                        ::else -> node_" + str(node) + ".costs[" + str(n) + "] = x.cost;\n")
                        file.write("                        fi\n")
                        file.write("                    fi\n")
                        file.write("                fi\n")
                        file.write("            fi\n")
                        file.write("        fi\n")
                        file.write("    fi\n")
                file.write("    od\n")
                file.write("};\n\n")

        file.write("\n")
        """Now we need to create the init process"""
        file.write("init{\n")
        for node in self.G.nodes():
            if node != 0:
                file.write("    node_" + str(node) + ".n = " + str(size_of_g) + ";\n")

        file.write("\n")    
        for node in self.G.predecessors(0):
            file.write("    node_" + str(node) + ".elected_node = 0;\n")
        
        file.write("\n")
        for node in self.G.nodes():
            if node != 0:
                for n in self.G.neighbors(node):
                    if n != 0:
                        for i, number in zip(range(len(self.tables['from_' + str(node) + '_to_' + str(n)])),self.tables['from_' + str(node) + '_to_' + str(n)]):
                            file.write('    node_' + str(node) + '.cost_table[' + str(n) + '].array[' + str(i) + '] = ' + str(number) + ';\n')
                file.write("\n")
        
        for node in self.G.nodes():
            if node != 0:
                if node in self.G.predecessors(0):
                    file.write("    node_" + str(node) + ".cost_to_target = 1;\n")
                else:
                    file.write("    node_" + str(node) + ".cost_to_target = 255;\n")
        
        file.write('\n')
        for node in self.G.predecessors(0):
            for i in range(size_of_g):
                if i == node or i == 0:
                    file.write("    node_" + str(node) + ".caminho_atual.c[" + str(i) + "] = 1;\n")
                else:
                    file.write("    node_" + str(node) + ".caminho_atual.c[" + str(i) + "] = 0;\n")
            file.write("\n")
        
        for node in self.G.nodes():
            if node != 0:
                file.write("    node_" + str(node) + ".caminho_atual.cost = 255;\n")
        
        file.write('\n')
        for node in self.G.nodes():
            if node != 0:
                file.write("    node_" + str(node) + ".current_cost = 255;\n")

        file.write("    /* if necessary change costs here */\n")
        for node in self.G.predecessors(0):
            file.write("    t0_to_" + str(node) + " ! 1;\n")
        file.write("\n")

        for node in self.G.nodes():
            if node != 0:
                file.write("    run node_" + str(node) + "_process();\n")
        file.write("};")
            

                        

if __name__ == "__main__":
    b = 1
    gen = promela_generator()
    while b != 0:
        b = int(input('0-Exit and generate promela code\n1-Add edge\n2-See Graph\n\n'))
        if b == 1:
            from_node = int(input('from: '))
            to_node = int(input('to: '))
            gen.add_edge(from_node, to_node)
        if b == 2:
            gen.draw_graph()
    gen.ask_cost_tables()
    file_name = input('enter file name without extension: ')
    gen.generate_promela_code(file_name)