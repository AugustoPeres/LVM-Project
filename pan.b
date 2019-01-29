	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM never_0 */
;
		;
		
	case 4: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 5: // STATE 1
		;
		now.node_1.n = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 2
		;
		now.node_2.n = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 3
		;
		now.node_3.n = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 4
		;
		now.node_1.elected_node = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 5
		;
		now.node_3.elected_node = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 6
		;
		now.node_2.elected_node = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 7
		;
		now.node_1.cost_table[2].array[0] = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 8
		;
		now.node_1.cost_table[2].array[1] = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 9
		;
		now.node_1.cost_table[2].array[2] = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 10
		;
		now.node_2.cost_table[3].array[0] = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 11
		;
		now.node_2.cost_table[3].array[1] = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 12
		;
		now.node_2.cost_table[3].array[2] = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 13
		;
		now.node_3.cost_table[1].array[0] = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 14
		;
		now.node_3.cost_table[1].array[1] = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 15
		;
		now.node_3.cost_table[1].array[2] = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 16
		;
		now.node_1.cost_to_target = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 17
		;
		now.node_2.cost_to_target = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 18
		;
		now.node_3.cost_to_target = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 19
		;
		now.node_1.caminho_atual.c[0] = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 20
		;
		now.node_1.caminho_atual.c[1] = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 21
		;
		now.node_1.caminho_atual.c[2] = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 22
		;
		now.node_1.caminho_atual.c[3] = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 23
		;
		now.node_3.caminho_atual.c[0] = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 24
		;
		now.node_3.caminho_atual.c[1] = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 25
		;
		now.node_3.caminho_atual.c[2] = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 26
		;
		now.node_3.caminho_atual.c[3] = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 27
		;
		now.node_2.caminho_atual.c[0] = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 28
		;
		now.node_2.caminho_atual.c[1] = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 29
		;
		now.node_2.caminho_atual.c[2] = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 30
		;
		now.node_2.caminho_atual.c[3] = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 31
		;
		now.node_1.caminho_atual.cost = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 32
		;
		now.node_2.caminho_atual.cost = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 33
		;
		now.node_3.caminho_atual.cost = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 34
		;
		now.node_1.current_cost = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 35
		;
		now.node_2.current_cost = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 36
		;
		now.node_3.current_cost = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 37
		;
		_m = unsend(now.t0_to_1);
		;
		goto R999;

	case 42: // STATE 38
		;
		_m = unsend(now.t0_to_3);
		;
		goto R999;

	case 43: // STATE 39
		;
		_m = unsend(now.t0_to_2);
		;
		goto R999;

	case 44: // STATE 40
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 45: // STATE 41
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 46: // STATE 42
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 47: // STATE 43
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC node_3_process */

	case 48: // STATE 1
		;
		XX = 1;
		unrecv(now.t0_to_3, XX-1, 0, ((int)((P2 *)this)->custo_t0), 1);
		((P2 *)this)->custo_t0 = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 50: // STATE 3
		;
		now.node_3.current_cost = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 4
		;
		now.node_3.elected_node = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 5
		;
		now.node_3.caminho_atual.c[0] = trpt->bup.oval;
		;
		goto R999;

	case 53: // STATE 6
		;
		now.node_3.caminho_atual.c[1] = trpt->bup.oval;
		;
		goto R999;

	case 54: // STATE 7
		;
		now.node_3.caminho_atual.c[2] = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 8
		;
		now.node_3.caminho_atual.c[3] = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 9
		;
		now.node_3.caminho_atual.cost = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 13
		;
		((P2 *)this)->x.c[3] = trpt->bup.ovals[3];
		((P2 *)this)->x.c[2] = trpt->bup.ovals[2];
		((P2 *)this)->x.c[1] = trpt->bup.ovals[1];
		((P2 *)this)->x.c[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 58: // STATE 14
		;
		((P2 *)this)->x.cost = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 15
		;
		_m = unsend(now.from_3_2);
		;
		goto R999;
;
		;
		
	case 61: // STATE 19
		;
		XX = 1;
		unrecv(now.from_1_3, XX-1, 0, ((int)((P2 *)this)->x.cost), 1);
		unrecv(now.from_1_3, XX-1, 1, ((int)((P2 *)this)->x.c[0]), 0);
		unrecv(now.from_1_3, XX-1, 2, ((int)((P2 *)this)->x.c[1]), 0);
		unrecv(now.from_1_3, XX-1, 3, ((int)((P2 *)this)->x.c[2]), 0);
		unrecv(now.from_1_3, XX-1, 4, ((int)((P2 *)this)->x.c[3]), 0);
		((P2 *)this)->x.cost = trpt->bup.ovals[0];
		((P2 *)this)->x.c[0] = trpt->bup.ovals[1];
		((P2 *)this)->x.c[1] = trpt->bup.ovals[2];
		((P2 *)this)->x.c[2] = trpt->bup.ovals[3];
		((P2 *)this)->x.c[3] = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 65: // STATE 23
		;
		now.node_3.current_cost = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 24
		;
		now.node_3.elected_node = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 25
		;
		now.node_3.caminho_atual.c[0] = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 26
		;
		now.node_3.caminho_atual.c[1] = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 27
		;
		now.node_3.caminho_atual.c[2] = trpt->bup.oval;
		;
		goto R999;

	case 70: // STATE 28
		;
		now.node_3.caminho_atual.c[3] = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 29
		;
		now.node_3.caminho_atual.cost = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 30
		;
		((P2 *)this)->x.c[3] = trpt->bup.oval;
		;
		goto R999;

	case 73: // STATE 31
		;
		((P2 *)this)->x.cost = trpt->bup.oval;
		;
		goto R999;

	case 74: // STATE 32
		;
		now.node_3.costs[1] = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 33
		;
		_m = unsend(now.from_3_2);
		;
		goto R999;
;
		;
		
	case 77: // STATE 36
		;
		now.node_3.current_cost = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 79: // STATE 38
		;
		now.node_3.current_cost = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 39
		;
		now.node_3.elected_node = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 40
		;
		now.node_3.caminho_atual.c[0] = trpt->bup.oval;
		;
		goto R999;

	case 82: // STATE 41
		;
		now.node_3.caminho_atual.c[1] = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 42
		;
		now.node_3.caminho_atual.c[2] = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 43
		;
		now.node_3.caminho_atual.c[3] = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 44
		;
		now.node_3.caminho_atual.cost = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 48
		;
		((P2 *)this)->x.c[3] = trpt->bup.ovals[3];
		((P2 *)this)->x.c[2] = trpt->bup.ovals[2];
		((P2 *)this)->x.c[1] = trpt->bup.ovals[1];
		((P2 *)this)->x.c[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 87: // STATE 49
		;
		((P2 *)this)->x.cost = trpt->bup.oval;
		;
		goto R999;

	case 88: // STATE 50
		;
		_m = unsend(now.from_3_2);
		;
		goto R999;

	case 89: // STATE 52
		;
		now.node_3.costs[1] = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 68
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC node_2_process */

	case 91: // STATE 1
		;
		XX = 1;
		unrecv(now.t0_to_2, XX-1, 0, ((int)((P1 *)this)->custo_t0), 1);
		((P1 *)this)->custo_t0 = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 93: // STATE 3
		;
		now.node_2.current_cost = trpt->bup.oval;
		;
		goto R999;

	case 94: // STATE 4
		;
		now.node_2.elected_node = trpt->bup.oval;
		;
		goto R999;

	case 95: // STATE 5
		;
		now.node_2.caminho_atual.c[0] = trpt->bup.oval;
		;
		goto R999;

	case 96: // STATE 6
		;
		now.node_2.caminho_atual.c[1] = trpt->bup.oval;
		;
		goto R999;

	case 97: // STATE 7
		;
		now.node_2.caminho_atual.c[2] = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 8
		;
		now.node_2.caminho_atual.c[3] = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 9
		;
		now.node_2.caminho_atual.cost = trpt->bup.oval;
		;
		goto R999;

	case 100: // STATE 13
		;
		((P1 *)this)->x.c[3] = trpt->bup.ovals[3];
		((P1 *)this)->x.c[2] = trpt->bup.ovals[2];
		((P1 *)this)->x.c[1] = trpt->bup.ovals[1];
		((P1 *)this)->x.c[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 101: // STATE 14
		;
		((P1 *)this)->x.cost = trpt->bup.oval;
		;
		goto R999;

	case 102: // STATE 15
		;
		_m = unsend(now.from_2_1);
		;
		goto R999;
;
		;
		
	case 104: // STATE 19
		;
		XX = 1;
		unrecv(now.from_3_2, XX-1, 0, ((int)((P1 *)this)->x.cost), 1);
		unrecv(now.from_3_2, XX-1, 1, ((int)((P1 *)this)->x.c[0]), 0);
		unrecv(now.from_3_2, XX-1, 2, ((int)((P1 *)this)->x.c[1]), 0);
		unrecv(now.from_3_2, XX-1, 3, ((int)((P1 *)this)->x.c[2]), 0);
		unrecv(now.from_3_2, XX-1, 4, ((int)((P1 *)this)->x.c[3]), 0);
		((P1 *)this)->x.cost = trpt->bup.ovals[0];
		((P1 *)this)->x.c[0] = trpt->bup.ovals[1];
		((P1 *)this)->x.c[1] = trpt->bup.ovals[2];
		((P1 *)this)->x.c[2] = trpt->bup.ovals[3];
		((P1 *)this)->x.c[3] = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 108: // STATE 23
		;
		now.node_2.current_cost = trpt->bup.oval;
		;
		goto R999;

	case 109: // STATE 24
		;
		now.node_2.elected_node = trpt->bup.oval;
		;
		goto R999;

	case 110: // STATE 25
		;
		now.node_2.caminho_atual.c[0] = trpt->bup.oval;
		;
		goto R999;

	case 111: // STATE 26
		;
		now.node_2.caminho_atual.c[1] = trpt->bup.oval;
		;
		goto R999;

	case 112: // STATE 27
		;
		now.node_2.caminho_atual.c[2] = trpt->bup.oval;
		;
		goto R999;

	case 113: // STATE 28
		;
		now.node_2.caminho_atual.c[3] = trpt->bup.oval;
		;
		goto R999;

	case 114: // STATE 29
		;
		now.node_2.caminho_atual.cost = trpt->bup.oval;
		;
		goto R999;

	case 115: // STATE 30
		;
		((P1 *)this)->x.c[2] = trpt->bup.oval;
		;
		goto R999;

	case 116: // STATE 31
		;
		((P1 *)this)->x.cost = trpt->bup.oval;
		;
		goto R999;

	case 117: // STATE 32
		;
		now.node_2.costs[3] = trpt->bup.oval;
		;
		goto R999;

	case 118: // STATE 33
		;
		_m = unsend(now.from_2_1);
		;
		goto R999;
;
		;
		
	case 120: // STATE 36
		;
		now.node_2.current_cost = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 122: // STATE 38
		;
		now.node_2.current_cost = trpt->bup.oval;
		;
		goto R999;

	case 123: // STATE 39
		;
		now.node_2.elected_node = trpt->bup.oval;
		;
		goto R999;

	case 124: // STATE 40
		;
		now.node_2.caminho_atual.c[0] = trpt->bup.oval;
		;
		goto R999;

	case 125: // STATE 41
		;
		now.node_2.caminho_atual.c[1] = trpt->bup.oval;
		;
		goto R999;

	case 126: // STATE 42
		;
		now.node_2.caminho_atual.c[2] = trpt->bup.oval;
		;
		goto R999;

	case 127: // STATE 43
		;
		now.node_2.caminho_atual.c[3] = trpt->bup.oval;
		;
		goto R999;

	case 128: // STATE 44
		;
		now.node_2.caminho_atual.cost = trpt->bup.oval;
		;
		goto R999;

	case 129: // STATE 48
		;
		((P1 *)this)->x.c[3] = trpt->bup.ovals[3];
		((P1 *)this)->x.c[2] = trpt->bup.ovals[2];
		((P1 *)this)->x.c[1] = trpt->bup.ovals[1];
		((P1 *)this)->x.c[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 130: // STATE 49
		;
		((P1 *)this)->x.cost = trpt->bup.oval;
		;
		goto R999;

	case 131: // STATE 50
		;
		_m = unsend(now.from_2_1);
		;
		goto R999;

	case 132: // STATE 52
		;
		now.node_2.costs[3] = trpt->bup.oval;
		;
		goto R999;

	case 133: // STATE 68
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC node_1_process */

	case 134: // STATE 1
		;
		XX = 1;
		unrecv(now.t0_to_1, XX-1, 0, ((int)((P0 *)this)->custo_t0), 1);
		((P0 *)this)->custo_t0 = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 136: // STATE 3
		;
		now.node_1.current_cost = trpt->bup.oval;
		;
		goto R999;

	case 137: // STATE 4
		;
		now.node_1.elected_node = trpt->bup.oval;
		;
		goto R999;

	case 138: // STATE 5
		;
		now.node_1.caminho_atual.c[0] = trpt->bup.oval;
		;
		goto R999;

	case 139: // STATE 6
		;
		now.node_1.caminho_atual.c[1] = trpt->bup.oval;
		;
		goto R999;

	case 140: // STATE 7
		;
		now.node_1.caminho_atual.c[2] = trpt->bup.oval;
		;
		goto R999;

	case 141: // STATE 8
		;
		now.node_1.caminho_atual.c[3] = trpt->bup.oval;
		;
		goto R999;

	case 142: // STATE 9
		;
		now.node_1.caminho_atual.cost = trpt->bup.oval;
		;
		goto R999;

	case 143: // STATE 13
		;
		((P0 *)this)->x.c[3] = trpt->bup.ovals[3];
		((P0 *)this)->x.c[2] = trpt->bup.ovals[2];
		((P0 *)this)->x.c[1] = trpt->bup.ovals[1];
		((P0 *)this)->x.c[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 144: // STATE 14
		;
		((P0 *)this)->x.cost = trpt->bup.oval;
		;
		goto R999;

	case 145: // STATE 15
		;
		_m = unsend(now.from_1_3);
		;
		goto R999;
;
		;
		
	case 147: // STATE 19
		;
		XX = 1;
		unrecv(now.from_2_1, XX-1, 0, ((int)((P0 *)this)->x.cost), 1);
		unrecv(now.from_2_1, XX-1, 1, ((int)((P0 *)this)->x.c[0]), 0);
		unrecv(now.from_2_1, XX-1, 2, ((int)((P0 *)this)->x.c[1]), 0);
		unrecv(now.from_2_1, XX-1, 3, ((int)((P0 *)this)->x.c[2]), 0);
		unrecv(now.from_2_1, XX-1, 4, ((int)((P0 *)this)->x.c[3]), 0);
		((P0 *)this)->x.cost = trpt->bup.ovals[0];
		((P0 *)this)->x.c[0] = trpt->bup.ovals[1];
		((P0 *)this)->x.c[1] = trpt->bup.ovals[2];
		((P0 *)this)->x.c[2] = trpt->bup.ovals[3];
		((P0 *)this)->x.c[3] = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 151: // STATE 23
		;
		now.node_1.current_cost = trpt->bup.oval;
		;
		goto R999;

	case 152: // STATE 24
		;
		now.node_1.elected_node = trpt->bup.oval;
		;
		goto R999;

	case 153: // STATE 25
		;
		now.node_1.caminho_atual.c[0] = trpt->bup.oval;
		;
		goto R999;

	case 154: // STATE 26
		;
		now.node_1.caminho_atual.c[1] = trpt->bup.oval;
		;
		goto R999;

	case 155: // STATE 27
		;
		now.node_1.caminho_atual.c[2] = trpt->bup.oval;
		;
		goto R999;

	case 156: // STATE 28
		;
		now.node_1.caminho_atual.c[3] = trpt->bup.oval;
		;
		goto R999;

	case 157: // STATE 29
		;
		now.node_1.caminho_atual.cost = trpt->bup.oval;
		;
		goto R999;

	case 158: // STATE 30
		;
		((P0 *)this)->x.c[1] = trpt->bup.oval;
		;
		goto R999;

	case 159: // STATE 31
		;
		((P0 *)this)->x.cost = trpt->bup.oval;
		;
		goto R999;

	case 160: // STATE 32
		;
		now.node_1.costs[2] = trpt->bup.oval;
		;
		goto R999;

	case 161: // STATE 33
		;
		_m = unsend(now.from_1_3);
		;
		goto R999;
;
		;
		
	case 163: // STATE 36
		;
		now.node_1.current_cost = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 165: // STATE 38
		;
		now.node_1.current_cost = trpt->bup.oval;
		;
		goto R999;

	case 166: // STATE 39
		;
		now.node_1.elected_node = trpt->bup.oval;
		;
		goto R999;

	case 167: // STATE 40
		;
		now.node_1.caminho_atual.c[0] = trpt->bup.oval;
		;
		goto R999;

	case 168: // STATE 41
		;
		now.node_1.caminho_atual.c[1] = trpt->bup.oval;
		;
		goto R999;

	case 169: // STATE 42
		;
		now.node_1.caminho_atual.c[2] = trpt->bup.oval;
		;
		goto R999;

	case 170: // STATE 43
		;
		now.node_1.caminho_atual.c[3] = trpt->bup.oval;
		;
		goto R999;

	case 171: // STATE 44
		;
		now.node_1.caminho_atual.cost = trpt->bup.oval;
		;
		goto R999;

	case 172: // STATE 48
		;
		((P0 *)this)->x.c[3] = trpt->bup.ovals[3];
		((P0 *)this)->x.c[2] = trpt->bup.ovals[2];
		((P0 *)this)->x.c[1] = trpt->bup.ovals[1];
		((P0 *)this)->x.c[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 173: // STATE 49
		;
		((P0 *)this)->x.cost = trpt->bup.oval;
		;
		goto R999;

	case 174: // STATE 50
		;
		_m = unsend(now.from_1_3);
		;
		goto R999;

	case 175: // STATE 52
		;
		now.node_1.costs[2] = trpt->bup.oval;
		;
		goto R999;

	case 176: // STATE 68
		;
		p_restor(II);
		;
		;
		goto R999;
	}

