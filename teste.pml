/*********************
Promela code generated automatically
Augusto Peres - 81821
Luis Fonseca - 83636
***********************/

typedef caminho{
    byte cost;
    bit c[4];
};
typedef tabela{
    byte array[4];
};
typedef node{
    byte elected_node;
    byte n;
    tabela cost_table[n];
    byte cost_to_target;
    byte current_cost;
    caminho caminho_atual;
    byte costs[4];

};
chan from_1_3 = [4] of { caminho };
chan t0_to_1 = [4] of { byte };
chan t0_to_3 = [4] of { byte };
chan t0_to_2 = [4] of { byte };
chan from_2_1 = [4] of { caminho };
chan from_3_2 = [4] of { caminho };

node node_1;
node node_2;
node node_3;

proctype node_1_process(){
    caminho x;
    byte custo_t0;
    do
    :: t0_to_1 ? custo_t0;
    if
        :: custo_t0 < node_1.current_cost ->
        node_1.current_cost = custo_t0;
        node_1.elected_node = 0;
        node_1.caminho_atual.c[0] = 1;
        node_1.caminho_atual.c[1] = 1;
        node_1.caminho_atual.c[2] = 0;
        node_1.caminho_atual.c[3] = 0;
        node_1.caminho_atual.cost = node_1.cost_to_target;
        x.c[0] = 1;        x.c[1] = 1;        x.c[2] = 0;        x.c[3] = 0;
        x.cost = node_1.cost_to_target;
        from_1_3 ! x;
    fi

    ::if
        ::len(from_2_1) > 0 ->
        from_2_1 ? x;
        if
            ::(x.cost < 255) ->
            if
                :: x.c[1] == 0 ->
                if
                    ::node_1.cost_table[2].array[x.cost] < node_1.current_cost -> 
                    node_1.current_cost = node_1.cost_table[2].array[x.cost];
                    node_1.elected_node = 2;
                    node_1.caminho_atual.c[0] = x.c[0];                    node_1.caminho_atual.c[1] = 1;                    node_1.caminho_atual.c[2] = x.c[2];                    node_1.caminho_atual.c[3] = x.c[3];
                    node_1.caminho_atual.cost = node_1.cost_table[2].array[x.cost];
                    x.c[1] = 1;
                    x.cost = node_1.cost_table[2].array[x.cost];
                    node_1.costs[2] = x.cost;
                    from_1_3 ! x;
                    :: else ->
                    ::if
                        ::node_1.elected_node == 2 ->
                        node_1.current_cost = node_1.cost_table[2].array[x.cost];
                        if
                        ::node_1.cost_to_target < node_1.current_cost->
                        node_1.current_cost = node_1.cost_to_target;
                        node_1.elected_node = 0;
                        node_1.caminho_atual.c[0] = 1;
                        node_1.caminho_atual.c[1] = 1;
                        node_1.caminho_atual.c[2] = 0;
                        node_1.caminho_atual.c[3] = 0;
                        node_1.caminho_atual.cost = node_1.cost_to_target;
                        x.c[0] = 1;
                        x.c[1] = 1;
                        x.c[2] = 0;
                        x.c[3] = 0;
                        x.cost = node_1.cost_to_target;
                        from_1_3 ! x;
                        ::else -> node_1.costs[2] = x.cost;
                        fi
                    fi
                fi
            fi
        fi
    fi
    od
};

proctype node_2_process(){
    caminho x;
    byte custo_t0;
    do
    :: t0_to_2 ? custo_t0;
    if
        :: custo_t0 < node_2.current_cost ->
        node_2.current_cost = custo_t0;
        node_2.elected_node = 0;
        node_2.caminho_atual.c[0] = 1;
        node_2.caminho_atual.c[1] = 0;
        node_2.caminho_atual.c[2] = 1;
        node_2.caminho_atual.c[3] = 0;
        node_2.caminho_atual.cost = node_2.cost_to_target;
        x.c[0] = 1;        x.c[1] = 0;        x.c[2] = 1;        x.c[3] = 0;
        x.cost = node_2.cost_to_target;
        from_2_1 ! x;
    fi

    ::if
        ::len(from_3_2) > 0 ->
        from_3_2 ? x;
        if
            ::(x.cost < 255) ->
            if
                :: x.c[2] == 0 ->
                if
                    ::node_2.cost_table[3].array[x.cost] < node_2.current_cost -> 
                    node_2.current_cost = node_2.cost_table[3].array[x.cost];
                    node_2.elected_node = 3;
                    node_2.caminho_atual.c[0] = x.c[0];                    node_2.caminho_atual.c[1] = x.c[1];                    node_2.caminho_atual.c[2] = 1;                    node_2.caminho_atual.c[3] = x.c[3];
                    node_2.caminho_atual.cost = node_2.cost_table[3].array[x.cost];
                    x.c[2] = 1;
                    x.cost = node_2.cost_table[3].array[x.cost];
                    node_2.costs[3] = x.cost;
                    from_2_1 ! x;
                    :: else ->
                    ::if
                        ::node_2.elected_node == 3 ->
                        node_2.current_cost = node_2.cost_table[3].array[x.cost];
                        if
                        ::node_2.cost_to_target < node_2.current_cost->
                        node_2.current_cost = node_2.cost_to_target;
                        node_2.elected_node = 0;
                        node_2.caminho_atual.c[0] = 1;
                        node_2.caminho_atual.c[1] = 0;
                        node_2.caminho_atual.c[2] = 1;
                        node_2.caminho_atual.c[3] = 0;
                        node_2.caminho_atual.cost = node_2.cost_to_target;
                        x.c[0] = 1;
                        x.c[1] = 0;
                        x.c[2] = 1;
                        x.c[3] = 0;
                        x.cost = node_2.cost_to_target;
                        from_2_1 ! x;
                        ::else -> node_2.costs[3] = x.cost;
                        fi
                    fi
                fi
            fi
        fi
    fi
    od
};

proctype node_3_process(){
    caminho x;
    byte custo_t0;
    do
    :: t0_to_3 ? custo_t0;
    if
        :: custo_t0 < node_3.current_cost ->
        node_3.current_cost = custo_t0;
        node_3.elected_node = 0;
        node_3.caminho_atual.c[0] = 1;
        node_3.caminho_atual.c[1] = 0;
        node_3.caminho_atual.c[2] = 0;
        node_3.caminho_atual.c[3] = 1;
        node_3.caminho_atual.cost = node_3.cost_to_target;
        x.c[0] = 1;        x.c[1] = 0;        x.c[2] = 0;        x.c[3] = 1;
        x.cost = node_3.cost_to_target;
        from_3_2 ! x;
    fi

    ::if
        ::len(from_1_3) > 0 ->
        from_1_3 ? x;
        if
            ::(x.cost < 255) ->
            if
                :: x.c[3] == 0 ->
                if
                    ::node_3.cost_table[1].array[x.cost] < node_3.current_cost -> 
                    node_3.current_cost = node_3.cost_table[1].array[x.cost];
                    node_3.elected_node = 1;
                    node_3.caminho_atual.c[0] = x.c[0];                    node_3.caminho_atual.c[1] = x.c[1];                    node_3.caminho_atual.c[2] = x.c[2];                    node_3.caminho_atual.c[3] = 1;
                    node_3.caminho_atual.cost = node_3.cost_table[1].array[x.cost];
                    x.c[3] = 1;
                    x.cost = node_3.cost_table[1].array[x.cost];
                    node_3.costs[1] = x.cost;
                    from_3_2 ! x;
                    :: else ->
                    ::if
                        ::node_3.elected_node == 1 ->
                        node_3.current_cost = node_3.cost_table[1].array[x.cost];
                        if
                        ::node_3.cost_to_target < node_3.current_cost->
                        node_3.current_cost = node_3.cost_to_target;
                        node_3.elected_node = 0;
                        node_3.caminho_atual.c[0] = 1;
                        node_3.caminho_atual.c[1] = 0;
                        node_3.caminho_atual.c[2] = 0;
                        node_3.caminho_atual.c[3] = 1;
                        node_3.caminho_atual.cost = node_3.cost_to_target;
                        x.c[0] = 1;
                        x.c[1] = 0;
                        x.c[2] = 0;
                        x.c[3] = 1;
                        x.cost = node_3.cost_to_target;
                        from_3_2 ! x;
                        ::else -> node_3.costs[1] = x.cost;
                        fi
                    fi
                fi
            fi
        fi
    fi
    od
};


init{
    node_1.n = 4;
    node_2.n = 4;
    node_3.n = 4;

    node_1.elected_node = 0;
    node_3.elected_node = 0;
    node_2.elected_node = 0;

    node_1.cost_table[2].array[0] = 2;
    node_1.cost_table[2].array[1] = 0;
    node_1.cost_table[2].array[2] = 3;

    node_2.cost_table[3].array[0] = 2;
    node_2.cost_table[3].array[1] = 0;
    node_2.cost_table[3].array[2] = 3;

    node_3.cost_table[1].array[0] = 2;
    node_3.cost_table[1].array[1] = 0;
    node_3.cost_table[1].array[2] = 3;

    node_1.cost_to_target = 1;
    node_2.cost_to_target = 1;
    node_3.cost_to_target = 1;

    node_1.caminho_atual.c[0] = 1;
    node_1.caminho_atual.c[1] = 1;
    node_1.caminho_atual.c[2] = 0;
    node_1.caminho_atual.c[3] = 0;

    node_3.caminho_atual.c[0] = 1;
    node_3.caminho_atual.c[1] = 0;
    node_3.caminho_atual.c[2] = 0;
    node_3.caminho_atual.c[3] = 1;

    node_2.caminho_atual.c[0] = 1;
    node_2.caminho_atual.c[1] = 0;
    node_2.caminho_atual.c[2] = 1;
    node_2.caminho_atual.c[3] = 0;

    node_1.caminho_atual.cost = 255;
    node_2.caminho_atual.cost = 255;
    node_3.caminho_atual.cost = 255;

    node_1.current_cost = 255;
    node_2.current_cost = 255;
    node_3.current_cost = 255;
    /* if necessary change costs here */
    t0_to_1 ! 1;
    t0_to_3 ! 1;
    t0_to_2 ! 1;

    run node_1_process();
    run node_2_process();
    run node_3_process();
};