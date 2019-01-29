#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM never_0 */
	case 3: // STATE 1 - teste.pml.nvr:5 - [((((len(from_1_3)==0)||(len(from_2_1)==0))||(len(from_3_2)==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!((((q_len(now.from_1_3)==0)||(q_len(now.from_2_1)==0))||(q_len(now.from_3_2)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 13 - teste.pml.nvr:12 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 5: // STATE 1 - ./teste.pml:232 - [node_1.n = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.n);
		now.node_1.n = 4;
#ifdef VAR_RANGES
		logval("node_1.n", ((int)now.node_1.n));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - ./teste.pml:233 - [node_2.n = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.n);
		now.node_2.n = 4;
#ifdef VAR_RANGES
		logval("node_2.n", ((int)now.node_2.n));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - ./teste.pml:234 - [node_3.n = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.n);
		now.node_3.n = 4;
#ifdef VAR_RANGES
		logval("node_3.n", ((int)now.node_3.n));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - ./teste.pml:236 - [node_1.elected_node = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.elected_node);
		now.node_1.elected_node = 0;
#ifdef VAR_RANGES
		logval("node_1.elected_node", ((int)now.node_1.elected_node));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 5 - ./teste.pml:237 - [node_3.elected_node = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.elected_node);
		now.node_3.elected_node = 0;
#ifdef VAR_RANGES
		logval("node_3.elected_node", ((int)now.node_3.elected_node));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 6 - ./teste.pml:238 - [node_2.elected_node = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.elected_node);
		now.node_2.elected_node = 0;
#ifdef VAR_RANGES
		logval("node_2.elected_node", ((int)now.node_2.elected_node));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 7 - ./teste.pml:240 - [node_1.cost_table[2].array[0] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.cost_table[2].array[0]);
		now.node_1.cost_table[2].array[0] = 2;
#ifdef VAR_RANGES
		logval("node_1.cost_table[2].array[0]", ((int)now.node_1.cost_table[2].array[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 8 - ./teste.pml:241 - [node_1.cost_table[2].array[1] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][8] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.cost_table[2].array[1]);
		now.node_1.cost_table[2].array[1] = 0;
#ifdef VAR_RANGES
		logval("node_1.cost_table[2].array[1]", ((int)now.node_1.cost_table[2].array[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 9 - ./teste.pml:242 - [node_1.cost_table[2].array[2] = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[3][9] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.cost_table[2].array[2]);
		now.node_1.cost_table[2].array[2] = 3;
#ifdef VAR_RANGES
		logval("node_1.cost_table[2].array[2]", ((int)now.node_1.cost_table[2].array[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 10 - ./teste.pml:244 - [node_2.cost_table[3].array[0] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.cost_table[3].array[0]);
		now.node_2.cost_table[3].array[0] = 2;
#ifdef VAR_RANGES
		logval("node_2.cost_table[3].array[0]", ((int)now.node_2.cost_table[3].array[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 11 - ./teste.pml:245 - [node_2.cost_table[3].array[1] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][11] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.cost_table[3].array[1]);
		now.node_2.cost_table[3].array[1] = 0;
#ifdef VAR_RANGES
		logval("node_2.cost_table[3].array[1]", ((int)now.node_2.cost_table[3].array[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 12 - ./teste.pml:246 - [node_2.cost_table[3].array[2] = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[3][12] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.cost_table[3].array[2]);
		now.node_2.cost_table[3].array[2] = 3;
#ifdef VAR_RANGES
		logval("node_2.cost_table[3].array[2]", ((int)now.node_2.cost_table[3].array[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - ./teste.pml:248 - [node_3.cost_table[1].array[0] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[3][13] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.cost_table[1].array[0]);
		now.node_3.cost_table[1].array[0] = 2;
#ifdef VAR_RANGES
		logval("node_3.cost_table[1].array[0]", ((int)now.node_3.cost_table[1].array[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 14 - ./teste.pml:249 - [node_3.cost_table[1].array[1] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.cost_table[1].array[1]);
		now.node_3.cost_table[1].array[1] = 0;
#ifdef VAR_RANGES
		logval("node_3.cost_table[1].array[1]", ((int)now.node_3.cost_table[1].array[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 15 - ./teste.pml:250 - [node_3.cost_table[1].array[2] = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[3][15] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.cost_table[1].array[2]);
		now.node_3.cost_table[1].array[2] = 3;
#ifdef VAR_RANGES
		logval("node_3.cost_table[1].array[2]", ((int)now.node_3.cost_table[1].array[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 16 - ./teste.pml:252 - [node_1.cost_to_target = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.cost_to_target);
		now.node_1.cost_to_target = 1;
#ifdef VAR_RANGES
		logval("node_1.cost_to_target", ((int)now.node_1.cost_to_target));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 17 - ./teste.pml:253 - [node_2.cost_to_target = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][17] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.cost_to_target);
		now.node_2.cost_to_target = 1;
#ifdef VAR_RANGES
		logval("node_2.cost_to_target", ((int)now.node_2.cost_to_target));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 18 - ./teste.pml:254 - [node_3.cost_to_target = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][18] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.cost_to_target);
		now.node_3.cost_to_target = 1;
#ifdef VAR_RANGES
		logval("node_3.cost_to_target", ((int)now.node_3.cost_to_target));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 19 - ./teste.pml:256 - [node_1.caminho_atual.c[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][19] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[0]);
		now.node_1.caminho_atual.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[0]", ((int)now.node_1.caminho_atual.c[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 20 - ./teste.pml:257 - [node_1.caminho_atual.c[1] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][20] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[1]);
		now.node_1.caminho_atual.c[1] = 1;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[1]", ((int)now.node_1.caminho_atual.c[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 21 - ./teste.pml:258 - [node_1.caminho_atual.c[2] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][21] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[2]);
		now.node_1.caminho_atual.c[2] = 0;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[2]", ((int)now.node_1.caminho_atual.c[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 22 - ./teste.pml:259 - [node_1.caminho_atual.c[3] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][22] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[3]);
		now.node_1.caminho_atual.c[3] = 0;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[3]", ((int)now.node_1.caminho_atual.c[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 23 - ./teste.pml:261 - [node_3.caminho_atual.c[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][23] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[0]);
		now.node_3.caminho_atual.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[0]", ((int)now.node_3.caminho_atual.c[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 24 - ./teste.pml:262 - [node_3.caminho_atual.c[1] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][24] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[1]);
		now.node_3.caminho_atual.c[1] = 0;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[1]", ((int)now.node_3.caminho_atual.c[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 25 - ./teste.pml:263 - [node_3.caminho_atual.c[2] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][25] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[2]);
		now.node_3.caminho_atual.c[2] = 0;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[2]", ((int)now.node_3.caminho_atual.c[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 26 - ./teste.pml:264 - [node_3.caminho_atual.c[3] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][26] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[3]);
		now.node_3.caminho_atual.c[3] = 1;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[3]", ((int)now.node_3.caminho_atual.c[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 27 - ./teste.pml:266 - [node_2.caminho_atual.c[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][27] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[0]);
		now.node_2.caminho_atual.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[0]", ((int)now.node_2.caminho_atual.c[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 28 - ./teste.pml:267 - [node_2.caminho_atual.c[1] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][28] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[1]);
		now.node_2.caminho_atual.c[1] = 0;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[1]", ((int)now.node_2.caminho_atual.c[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 29 - ./teste.pml:268 - [node_2.caminho_atual.c[2] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][29] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[2]);
		now.node_2.caminho_atual.c[2] = 1;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[2]", ((int)now.node_2.caminho_atual.c[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 30 - ./teste.pml:269 - [node_2.caminho_atual.c[3] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][30] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[3]);
		now.node_2.caminho_atual.c[3] = 0;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[3]", ((int)now.node_2.caminho_atual.c[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 31 - ./teste.pml:271 - [node_1.caminho_atual.cost = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[3][31] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.cost);
		now.node_1.caminho_atual.cost = 255;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.cost", ((int)now.node_1.caminho_atual.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 32 - ./teste.pml:272 - [node_2.caminho_atual.cost = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[3][32] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.cost);
		now.node_2.caminho_atual.cost = 255;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.cost", ((int)now.node_2.caminho_atual.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 33 - ./teste.pml:273 - [node_3.caminho_atual.cost = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[3][33] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.cost);
		now.node_3.caminho_atual.cost = 255;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.cost", ((int)now.node_3.caminho_atual.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 34 - ./teste.pml:275 - [node_1.current_cost = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[3][34] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.current_cost);
		now.node_1.current_cost = 255;
#ifdef VAR_RANGES
		logval("node_1.current_cost", ((int)now.node_1.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 35 - ./teste.pml:276 - [node_2.current_cost = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[3][35] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.current_cost);
		now.node_2.current_cost = 255;
#ifdef VAR_RANGES
		logval("node_2.current_cost", ((int)now.node_2.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 36 - ./teste.pml:277 - [node_3.current_cost = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[3][36] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.current_cost);
		now.node_3.current_cost = 255;
#ifdef VAR_RANGES
		logval("node_3.current_cost", ((int)now.node_3.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 37 - ./teste.pml:279 - [t0_to_1!1] (0:0:0 - 1)
		IfNotBlocked
		reached[3][37] = 1;
		if (q_full(now.t0_to_1))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.t0_to_1);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.t0_to_1, 0, 1, 0, 0, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 42: // STATE 38 - ./teste.pml:280 - [t0_to_3!1] (0:0:0 - 1)
		IfNotBlocked
		reached[3][38] = 1;
		if (q_full(now.t0_to_3))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.t0_to_3);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.t0_to_3, 0, 1, 0, 0, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 43: // STATE 39 - ./teste.pml:281 - [t0_to_2!1] (0:0:0 - 1)
		IfNotBlocked
		reached[3][39] = 1;
		if (q_full(now.t0_to_2))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.t0_to_2);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.t0_to_2, 0, 1, 0, 0, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 44: // STATE 40 - ./teste.pml:283 - [(run node_1_process())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][40] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 41 - ./teste.pml:284 - [(run node_2_process())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][41] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 42 - ./teste.pml:285 - [(run node_3_process())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][42] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 43 - ./teste.pml:286 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][43] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC node_3_process */
	case 48: // STATE 1 - ./teste.pml:169 - [t0_to_3?custo_t0] (0:0:1 - 1)
		reached[2][1] = 1;
		if (q_len(now.t0_to_3) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->custo_t0);
		;
		((P2 *)this)->custo_t0 = qrecv(now.t0_to_3, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("node_3_process:custo_t0", ((int)((P2 *)this)->custo_t0));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.t0_to_3);
		sprintf(simtmp, "%d", ((int)((P2 *)this)->custo_t0)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 49: // STATE 2 - ./teste.pml:171 - [((custo_t0<node_3.current_cost))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((((int)((P2 *)this)->custo_t0)<((int)now.node_3.current_cost))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 3 - ./teste.pml:172 - [node_3.current_cost = custo_t0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.current_cost);
		now.node_3.current_cost = ((int)((P2 *)this)->custo_t0);
#ifdef VAR_RANGES
		logval("node_3.current_cost", ((int)now.node_3.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 4 - ./teste.pml:173 - [node_3.elected_node = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.elected_node);
		now.node_3.elected_node = 0;
#ifdef VAR_RANGES
		logval("node_3.elected_node", ((int)now.node_3.elected_node));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 5 - ./teste.pml:174 - [node_3.caminho_atual.c[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[0]);
		now.node_3.caminho_atual.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[0]", ((int)now.node_3.caminho_atual.c[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 6 - ./teste.pml:175 - [node_3.caminho_atual.c[1] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[1]);
		now.node_3.caminho_atual.c[1] = 0;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[1]", ((int)now.node_3.caminho_atual.c[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 7 - ./teste.pml:176 - [node_3.caminho_atual.c[2] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[2]);
		now.node_3.caminho_atual.c[2] = 0;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[2]", ((int)now.node_3.caminho_atual.c[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 8 - ./teste.pml:177 - [node_3.caminho_atual.c[3] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[3]);
		now.node_3.caminho_atual.c[3] = 1;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[3]", ((int)now.node_3.caminho_atual.c[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 9 - ./teste.pml:178 - [node_3.caminho_atual.cost = node_3.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.cost);
		now.node_3.caminho_atual.cost = ((int)now.node_3.cost_to_target);
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.cost", ((int)now.node_3.caminho_atual.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 10 - ./teste.pml:179 - [x.c[0] = 1] (0:14:4 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->x.c[0]);
		((P2 *)this)->x.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_3_process:x.c[0]", ((int)((P2 *)this)->x.c[0]));
#endif
		;
		/* merge: x.c[1] = 0(14, 11, 14) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)this)->x.c[1]);
		((P2 *)this)->x.c[1] = 0;
#ifdef VAR_RANGES
		logval("node_3_process:x.c[1]", ((int)((P2 *)this)->x.c[1]));
#endif
		;
		/* merge: x.c[2] = 0(14, 12, 14) */
		reached[2][12] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)this)->x.c[2]);
		((P2 *)this)->x.c[2] = 0;
#ifdef VAR_RANGES
		logval("node_3_process:x.c[2]", ((int)((P2 *)this)->x.c[2]));
#endif
		;
		/* merge: x.c[3] = 1(14, 13, 14) */
		reached[2][13] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P2 *)this)->x.c[3]);
		((P2 *)this)->x.c[3] = 1;
#ifdef VAR_RANGES
		logval("node_3_process:x.c[3]", ((int)((P2 *)this)->x.c[3]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 58: // STATE 14 - ./teste.pml:180 - [x.cost = node_3.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->x.cost);
		((P2 *)this)->x.cost = ((int)now.node_3.cost_to_target);
#ifdef VAR_RANGES
		logval("node_3_process:x.cost", ((int)((P2 *)this)->x.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 15 - ./teste.pml:181 - [from_3_2!x.cost,x.c[0],x.c[1],x.c[2],x.c[3]] (0:0:0 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		if (q_full(now.from_3_2))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.from_3_2);
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.cost)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[0])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[1])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[2])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[3])); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.from_3_2, 0, ((int)((P2 *)this)->x.cost), ((int)((P2 *)this)->x.c[0]), ((int)((P2 *)this)->x.c[1]), ((int)((P2 *)this)->x.c[2]), ((int)((P2 *)this)->x.c[3]), 5);
		_m = 2; goto P999; /* 0 */
	case 60: // STATE 18 - ./teste.pml:185 - [((len(from_1_3)>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (!((q_len(now.from_1_3)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 19 - ./teste.pml:186 - [from_1_3?x.cost,x.c[0],x.c[1],x.c[2],x.c[3]] (0:0:5 - 1)
		reached[2][19] = 1;
		if (q_len(now.from_1_3) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->x.cost);
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)this)->x.c[0]);
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)this)->x.c[1]);
		(trpt+1)->bup.ovals[3] = ((int)((P2 *)this)->x.c[2]);
		(trpt+1)->bup.ovals[4] = ((int)((P2 *)this)->x.c[3]);
		;
		((P2 *)this)->x.cost = qrecv(now.from_1_3, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("node_3_process:x.cost", ((int)((P2 *)this)->x.cost));
#endif
		;
		((P2 *)this)->x.c[0] = qrecv(now.from_1_3, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("node_3_process:x.c[0]", ((int)((P2 *)this)->x.c[0]));
#endif
		;
		((P2 *)this)->x.c[1] = qrecv(now.from_1_3, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("node_3_process:x.c[1]", ((int)((P2 *)this)->x.c[1]));
#endif
		;
		((P2 *)this)->x.c[2] = qrecv(now.from_1_3, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("node_3_process:x.c[2]", ((int)((P2 *)this)->x.c[2]));
#endif
		;
		((P2 *)this)->x.c[3] = qrecv(now.from_1_3, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("node_3_process:x.c[3]", ((int)((P2 *)this)->x.c[3]));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.from_1_3);
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.cost)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[0])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[1])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[2])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[3])); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 62: // STATE 20 - ./teste.pml:188 - [((x.cost<255))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][20] = 1;
		if (!((((int)((P2 *)this)->x.cost)<255)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 21 - ./teste.pml:190 - [((x.c[3]==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][21] = 1;
		if (!((((int)((P2 *)this)->x.c[3])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 22 - ./teste.pml:192 - [((node_3.cost_table[1].array[x.cost]<node_3.current_cost))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (!((((int)now.node_3.cost_table[1].array[ Index(((int)((P2 *)this)->x.cost), 4) ])<((int)now.node_3.current_cost))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 23 - ./teste.pml:193 - [node_3.current_cost = node_3.cost_table[1].array[x.cost]] (0:0:1 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.current_cost);
		now.node_3.current_cost = ((int)now.node_3.cost_table[1].array[ Index(((int)((P2 *)this)->x.cost), 4) ]);
#ifdef VAR_RANGES
		logval("node_3.current_cost", ((int)now.node_3.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 24 - ./teste.pml:194 - [node_3.elected_node = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.elected_node);
		now.node_3.elected_node = 1;
#ifdef VAR_RANGES
		logval("node_3.elected_node", ((int)now.node_3.elected_node));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 25 - ./teste.pml:195 - [node_3.caminho_atual.c[0] = x.c[0]] (0:0:1 - 1)
		IfNotBlocked
		reached[2][25] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[0]);
		now.node_3.caminho_atual.c[0] = ((int)((P2 *)this)->x.c[0]);
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[0]", ((int)now.node_3.caminho_atual.c[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 26 - ./teste.pml:195 - [node_3.caminho_atual.c[1] = x.c[1]] (0:0:1 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[1]);
		now.node_3.caminho_atual.c[1] = ((int)((P2 *)this)->x.c[1]);
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[1]", ((int)now.node_3.caminho_atual.c[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 27 - ./teste.pml:195 - [node_3.caminho_atual.c[2] = x.c[2]] (0:0:1 - 1)
		IfNotBlocked
		reached[2][27] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[2]);
		now.node_3.caminho_atual.c[2] = ((int)((P2 *)this)->x.c[2]);
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[2]", ((int)now.node_3.caminho_atual.c[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 28 - ./teste.pml:195 - [node_3.caminho_atual.c[3] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][28] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[3]);
		now.node_3.caminho_atual.c[3] = 1;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[3]", ((int)now.node_3.caminho_atual.c[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 29 - ./teste.pml:196 - [node_3.caminho_atual.cost = node_3.cost_table[1].array[x.cost]] (0:0:1 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.cost);
		now.node_3.caminho_atual.cost = ((int)now.node_3.cost_table[1].array[ Index(((int)((P2 *)this)->x.cost), 4) ]);
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.cost", ((int)now.node_3.caminho_atual.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 30 - ./teste.pml:197 - [x.c[3] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][30] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->x.c[3]);
		((P2 *)this)->x.c[3] = 1;
#ifdef VAR_RANGES
		logval("node_3_process:x.c[3]", ((int)((P2 *)this)->x.c[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 31 - ./teste.pml:198 - [x.cost = node_3.cost_table[1].array[x.cost]] (0:0:1 - 1)
		IfNotBlocked
		reached[2][31] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->x.cost);
		((P2 *)this)->x.cost = ((int)now.node_3.cost_table[1].array[ Index(((int)((P2 *)this)->x.cost), 4) ]);
#ifdef VAR_RANGES
		logval("node_3_process:x.cost", ((int)((P2 *)this)->x.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 32 - ./teste.pml:199 - [node_3.costs[1] = x.cost] (0:0:1 - 1)
		IfNotBlocked
		reached[2][32] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.costs[1]);
		now.node_3.costs[1] = ((int)((P2 *)this)->x.cost);
#ifdef VAR_RANGES
		logval("node_3.costs[1]", ((int)now.node_3.costs[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 33 - ./teste.pml:200 - [from_3_2!x.cost,x.c[0],x.c[1],x.c[2],x.c[3]] (0:0:0 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		if (q_full(now.from_3_2))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.from_3_2);
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.cost)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[0])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[1])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[2])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[3])); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.from_3_2, 0, ((int)((P2 *)this)->x.cost), ((int)((P2 *)this)->x.c[0]), ((int)((P2 *)this)->x.c[1]), ((int)((P2 *)this)->x.c[2]), ((int)((P2 *)this)->x.c[3]), 5);
		_m = 2; goto P999; /* 0 */
	case 76: // STATE 35 - ./teste.pml:203 - [((node_3.elected_node==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		if (!((((int)now.node_3.elected_node)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 36 - ./teste.pml:204 - [node_3.current_cost = node_3.cost_table[1].array[x.cost]] (0:0:1 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.current_cost);
		now.node_3.current_cost = ((int)now.node_3.cost_table[1].array[ Index(((int)((P2 *)this)->x.cost), 4) ]);
#ifdef VAR_RANGES
		logval("node_3.current_cost", ((int)now.node_3.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 37 - ./teste.pml:206 - [((node_3.cost_to_target<node_3.current_cost))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][37] = 1;
		if (!((((int)now.node_3.cost_to_target)<((int)now.node_3.current_cost))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 38 - ./teste.pml:207 - [node_3.current_cost = node_3.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[2][38] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.current_cost);
		now.node_3.current_cost = ((int)now.node_3.cost_to_target);
#ifdef VAR_RANGES
		logval("node_3.current_cost", ((int)now.node_3.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 39 - ./teste.pml:208 - [node_3.elected_node = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][39] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.elected_node);
		now.node_3.elected_node = 0;
#ifdef VAR_RANGES
		logval("node_3.elected_node", ((int)now.node_3.elected_node));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 40 - ./teste.pml:209 - [node_3.caminho_atual.c[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][40] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[0]);
		now.node_3.caminho_atual.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[0]", ((int)now.node_3.caminho_atual.c[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 41 - ./teste.pml:210 - [node_3.caminho_atual.c[1] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][41] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[1]);
		now.node_3.caminho_atual.c[1] = 0;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[1]", ((int)now.node_3.caminho_atual.c[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 42 - ./teste.pml:211 - [node_3.caminho_atual.c[2] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][42] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[2]);
		now.node_3.caminho_atual.c[2] = 0;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[2]", ((int)now.node_3.caminho_atual.c[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 43 - ./teste.pml:212 - [node_3.caminho_atual.c[3] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][43] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.c[3]);
		now.node_3.caminho_atual.c[3] = 1;
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.c[3]", ((int)now.node_3.caminho_atual.c[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 44 - ./teste.pml:213 - [node_3.caminho_atual.cost = node_3.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[2][44] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.caminho_atual.cost);
		now.node_3.caminho_atual.cost = ((int)now.node_3.cost_to_target);
#ifdef VAR_RANGES
		logval("node_3.caminho_atual.cost", ((int)now.node_3.caminho_atual.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 45 - ./teste.pml:214 - [x.c[0] = 1] (0:49:4 - 1)
		IfNotBlocked
		reached[2][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->x.c[0]);
		((P2 *)this)->x.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_3_process:x.c[0]", ((int)((P2 *)this)->x.c[0]));
#endif
		;
		/* merge: x.c[1] = 0(49, 46, 49) */
		reached[2][46] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)this)->x.c[1]);
		((P2 *)this)->x.c[1] = 0;
#ifdef VAR_RANGES
		logval("node_3_process:x.c[1]", ((int)((P2 *)this)->x.c[1]));
#endif
		;
		/* merge: x.c[2] = 0(49, 47, 49) */
		reached[2][47] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)this)->x.c[2]);
		((P2 *)this)->x.c[2] = 0;
#ifdef VAR_RANGES
		logval("node_3_process:x.c[2]", ((int)((P2 *)this)->x.c[2]));
#endif
		;
		/* merge: x.c[3] = 1(49, 48, 49) */
		reached[2][48] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P2 *)this)->x.c[3]);
		((P2 *)this)->x.c[3] = 1;
#ifdef VAR_RANGES
		logval("node_3_process:x.c[3]", ((int)((P2 *)this)->x.c[3]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 87: // STATE 49 - ./teste.pml:218 - [x.cost = node_3.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[2][49] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->x.cost);
		((P2 *)this)->x.cost = ((int)now.node_3.cost_to_target);
#ifdef VAR_RANGES
		logval("node_3_process:x.cost", ((int)((P2 *)this)->x.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 50 - ./teste.pml:219 - [from_3_2!x.cost,x.c[0],x.c[1],x.c[2],x.c[3]] (0:0:0 - 1)
		IfNotBlocked
		reached[2][50] = 1;
		if (q_full(now.from_3_2))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.from_3_2);
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.cost)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[0])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[1])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[2])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->x.c[3])); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.from_3_2, 0, ((int)((P2 *)this)->x.cost), ((int)((P2 *)this)->x.c[0]), ((int)((P2 *)this)->x.c[1]), ((int)((P2 *)this)->x.c[2]), ((int)((P2 *)this)->x.c[3]), 5);
		_m = 2; goto P999; /* 0 */
	case 89: // STATE 52 - ./teste.pml:220 - [node_3.costs[1] = x.cost] (0:0:1 - 1)
		IfNotBlocked
		reached[2][52] = 1;
		(trpt+1)->bup.oval = ((int)now.node_3.costs[1]);
		now.node_3.costs[1] = ((int)((P2 *)this)->x.cost);
#ifdef VAR_RANGES
		logval("node_3.costs[1]", ((int)now.node_3.costs[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 68 - ./teste.pml:228 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][68] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC node_2_process */
	case 91: // STATE 1 - ./teste.pml:104 - [t0_to_2?custo_t0] (0:0:1 - 1)
		reached[1][1] = 1;
		if (q_len(now.t0_to_2) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->custo_t0);
		;
		((P1 *)this)->custo_t0 = qrecv(now.t0_to_2, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("node_2_process:custo_t0", ((int)((P1 *)this)->custo_t0));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.t0_to_2);
		sprintf(simtmp, "%d", ((int)((P1 *)this)->custo_t0)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 92: // STATE 2 - ./teste.pml:106 - [((custo_t0<node_2.current_cost))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)((P1 *)this)->custo_t0)<((int)now.node_2.current_cost))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 3 - ./teste.pml:107 - [node_2.current_cost = custo_t0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.current_cost);
		now.node_2.current_cost = ((int)((P1 *)this)->custo_t0);
#ifdef VAR_RANGES
		logval("node_2.current_cost", ((int)now.node_2.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 4 - ./teste.pml:108 - [node_2.elected_node = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.elected_node);
		now.node_2.elected_node = 0;
#ifdef VAR_RANGES
		logval("node_2.elected_node", ((int)now.node_2.elected_node));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 5 - ./teste.pml:109 - [node_2.caminho_atual.c[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[0]);
		now.node_2.caminho_atual.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[0]", ((int)now.node_2.caminho_atual.c[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 6 - ./teste.pml:110 - [node_2.caminho_atual.c[1] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[1]);
		now.node_2.caminho_atual.c[1] = 0;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[1]", ((int)now.node_2.caminho_atual.c[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 7 - ./teste.pml:111 - [node_2.caminho_atual.c[2] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[2]);
		now.node_2.caminho_atual.c[2] = 1;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[2]", ((int)now.node_2.caminho_atual.c[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 8 - ./teste.pml:112 - [node_2.caminho_atual.c[3] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[3]);
		now.node_2.caminho_atual.c[3] = 0;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[3]", ((int)now.node_2.caminho_atual.c[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 9 - ./teste.pml:113 - [node_2.caminho_atual.cost = node_2.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.cost);
		now.node_2.caminho_atual.cost = ((int)now.node_2.cost_to_target);
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.cost", ((int)now.node_2.caminho_atual.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 10 - ./teste.pml:114 - [x.c[0] = 1] (0:14:4 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->x.c[0]);
		((P1 *)this)->x.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_2_process:x.c[0]", ((int)((P1 *)this)->x.c[0]));
#endif
		;
		/* merge: x.c[1] = 0(14, 11, 14) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->x.c[1]);
		((P1 *)this)->x.c[1] = 0;
#ifdef VAR_RANGES
		logval("node_2_process:x.c[1]", ((int)((P1 *)this)->x.c[1]));
#endif
		;
		/* merge: x.c[2] = 1(14, 12, 14) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)this)->x.c[2]);
		((P1 *)this)->x.c[2] = 1;
#ifdef VAR_RANGES
		logval("node_2_process:x.c[2]", ((int)((P1 *)this)->x.c[2]));
#endif
		;
		/* merge: x.c[3] = 0(14, 13, 14) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)this)->x.c[3]);
		((P1 *)this)->x.c[3] = 0;
#ifdef VAR_RANGES
		logval("node_2_process:x.c[3]", ((int)((P1 *)this)->x.c[3]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 101: // STATE 14 - ./teste.pml:115 - [x.cost = node_2.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->x.cost);
		((P1 *)this)->x.cost = ((int)now.node_2.cost_to_target);
#ifdef VAR_RANGES
		logval("node_2_process:x.cost", ((int)((P1 *)this)->x.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 15 - ./teste.pml:116 - [from_2_1!x.cost,x.c[0],x.c[1],x.c[2],x.c[3]] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (q_full(now.from_2_1))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.from_2_1);
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.cost)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[0])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[1])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[2])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[3])); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.from_2_1, 0, ((int)((P1 *)this)->x.cost), ((int)((P1 *)this)->x.c[0]), ((int)((P1 *)this)->x.c[1]), ((int)((P1 *)this)->x.c[2]), ((int)((P1 *)this)->x.c[3]), 5);
		_m = 2; goto P999; /* 0 */
	case 103: // STATE 18 - ./teste.pml:120 - [((len(from_3_2)>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!((q_len(now.from_3_2)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 19 - ./teste.pml:121 - [from_3_2?x.cost,x.c[0],x.c[1],x.c[2],x.c[3]] (0:0:5 - 1)
		reached[1][19] = 1;
		if (q_len(now.from_3_2) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->x.cost);
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->x.c[0]);
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)this)->x.c[1]);
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)this)->x.c[2]);
		(trpt+1)->bup.ovals[4] = ((int)((P1 *)this)->x.c[3]);
		;
		((P1 *)this)->x.cost = qrecv(now.from_3_2, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("node_2_process:x.cost", ((int)((P1 *)this)->x.cost));
#endif
		;
		((P1 *)this)->x.c[0] = qrecv(now.from_3_2, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("node_2_process:x.c[0]", ((int)((P1 *)this)->x.c[0]));
#endif
		;
		((P1 *)this)->x.c[1] = qrecv(now.from_3_2, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("node_2_process:x.c[1]", ((int)((P1 *)this)->x.c[1]));
#endif
		;
		((P1 *)this)->x.c[2] = qrecv(now.from_3_2, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("node_2_process:x.c[2]", ((int)((P1 *)this)->x.c[2]));
#endif
		;
		((P1 *)this)->x.c[3] = qrecv(now.from_3_2, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("node_2_process:x.c[3]", ((int)((P1 *)this)->x.c[3]));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.from_3_2);
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.cost)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[0])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[1])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[2])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[3])); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 105: // STATE 20 - ./teste.pml:123 - [((x.cost<255))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (!((((int)((P1 *)this)->x.cost)<255)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 21 - ./teste.pml:125 - [((x.c[2]==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (!((((int)((P1 *)this)->x.c[2])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 22 - ./teste.pml:127 - [((node_2.cost_table[3].array[x.cost]<node_2.current_cost))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (!((((int)now.node_2.cost_table[3].array[ Index(((int)((P1 *)this)->x.cost), 4) ])<((int)now.node_2.current_cost))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 23 - ./teste.pml:128 - [node_2.current_cost = node_2.cost_table[3].array[x.cost]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.current_cost);
		now.node_2.current_cost = ((int)now.node_2.cost_table[3].array[ Index(((int)((P1 *)this)->x.cost), 4) ]);
#ifdef VAR_RANGES
		logval("node_2.current_cost", ((int)now.node_2.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 24 - ./teste.pml:129 - [node_2.elected_node = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.elected_node);
		now.node_2.elected_node = 3;
#ifdef VAR_RANGES
		logval("node_2.elected_node", ((int)now.node_2.elected_node));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 25 - ./teste.pml:130 - [node_2.caminho_atual.c[0] = x.c[0]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[0]);
		now.node_2.caminho_atual.c[0] = ((int)((P1 *)this)->x.c[0]);
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[0]", ((int)now.node_2.caminho_atual.c[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 26 - ./teste.pml:130 - [node_2.caminho_atual.c[1] = x.c[1]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[1]);
		now.node_2.caminho_atual.c[1] = ((int)((P1 *)this)->x.c[1]);
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[1]", ((int)now.node_2.caminho_atual.c[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 27 - ./teste.pml:130 - [node_2.caminho_atual.c[2] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[2]);
		now.node_2.caminho_atual.c[2] = 1;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[2]", ((int)now.node_2.caminho_atual.c[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 28 - ./teste.pml:130 - [node_2.caminho_atual.c[3] = x.c[3]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[3]);
		now.node_2.caminho_atual.c[3] = ((int)((P1 *)this)->x.c[3]);
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[3]", ((int)now.node_2.caminho_atual.c[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 29 - ./teste.pml:131 - [node_2.caminho_atual.cost = node_2.cost_table[3].array[x.cost]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.cost);
		now.node_2.caminho_atual.cost = ((int)now.node_2.cost_table[3].array[ Index(((int)((P1 *)this)->x.cost), 4) ]);
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.cost", ((int)now.node_2.caminho_atual.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 30 - ./teste.pml:132 - [x.c[2] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->x.c[2]);
		((P1 *)this)->x.c[2] = 1;
#ifdef VAR_RANGES
		logval("node_2_process:x.c[2]", ((int)((P1 *)this)->x.c[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 31 - ./teste.pml:133 - [x.cost = node_2.cost_table[3].array[x.cost]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->x.cost);
		((P1 *)this)->x.cost = ((int)now.node_2.cost_table[3].array[ Index(((int)((P1 *)this)->x.cost), 4) ]);
#ifdef VAR_RANGES
		logval("node_2_process:x.cost", ((int)((P1 *)this)->x.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 32 - ./teste.pml:134 - [node_2.costs[3] = x.cost] (0:0:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.costs[3]);
		now.node_2.costs[3] = ((int)((P1 *)this)->x.cost);
#ifdef VAR_RANGES
		logval("node_2.costs[3]", ((int)now.node_2.costs[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 33 - ./teste.pml:135 - [from_2_1!x.cost,x.c[0],x.c[1],x.c[2],x.c[3]] (0:0:0 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (q_full(now.from_2_1))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.from_2_1);
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.cost)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[0])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[1])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[2])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[3])); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.from_2_1, 0, ((int)((P1 *)this)->x.cost), ((int)((P1 *)this)->x.c[0]), ((int)((P1 *)this)->x.c[1]), ((int)((P1 *)this)->x.c[2]), ((int)((P1 *)this)->x.c[3]), 5);
		_m = 2; goto P999; /* 0 */
	case 119: // STATE 35 - ./teste.pml:138 - [((node_2.elected_node==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		if (!((((int)now.node_2.elected_node)==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 36 - ./teste.pml:139 - [node_2.current_cost = node_2.cost_table[3].array[x.cost]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.current_cost);
		now.node_2.current_cost = ((int)now.node_2.cost_table[3].array[ Index(((int)((P1 *)this)->x.cost), 4) ]);
#ifdef VAR_RANGES
		logval("node_2.current_cost", ((int)now.node_2.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 37 - ./teste.pml:141 - [((node_2.cost_to_target<node_2.current_cost))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (!((((int)now.node_2.cost_to_target)<((int)now.node_2.current_cost))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 38 - ./teste.pml:142 - [node_2.current_cost = node_2.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.current_cost);
		now.node_2.current_cost = ((int)now.node_2.cost_to_target);
#ifdef VAR_RANGES
		logval("node_2.current_cost", ((int)now.node_2.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 39 - ./teste.pml:143 - [node_2.elected_node = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.elected_node);
		now.node_2.elected_node = 0;
#ifdef VAR_RANGES
		logval("node_2.elected_node", ((int)now.node_2.elected_node));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 40 - ./teste.pml:144 - [node_2.caminho_atual.c[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[0]);
		now.node_2.caminho_atual.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[0]", ((int)now.node_2.caminho_atual.c[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 41 - ./teste.pml:145 - [node_2.caminho_atual.c[1] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[1]);
		now.node_2.caminho_atual.c[1] = 0;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[1]", ((int)now.node_2.caminho_atual.c[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 42 - ./teste.pml:146 - [node_2.caminho_atual.c[2] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[2]);
		now.node_2.caminho_atual.c[2] = 1;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[2]", ((int)now.node_2.caminho_atual.c[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 43 - ./teste.pml:147 - [node_2.caminho_atual.c[3] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.c[3]);
		now.node_2.caminho_atual.c[3] = 0;
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.c[3]", ((int)now.node_2.caminho_atual.c[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 44 - ./teste.pml:148 - [node_2.caminho_atual.cost = node_2.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.caminho_atual.cost);
		now.node_2.caminho_atual.cost = ((int)now.node_2.cost_to_target);
#ifdef VAR_RANGES
		logval("node_2.caminho_atual.cost", ((int)now.node_2.caminho_atual.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 45 - ./teste.pml:149 - [x.c[0] = 1] (0:49:4 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->x.c[0]);
		((P1 *)this)->x.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_2_process:x.c[0]", ((int)((P1 *)this)->x.c[0]));
#endif
		;
		/* merge: x.c[1] = 0(49, 46, 49) */
		reached[1][46] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->x.c[1]);
		((P1 *)this)->x.c[1] = 0;
#ifdef VAR_RANGES
		logval("node_2_process:x.c[1]", ((int)((P1 *)this)->x.c[1]));
#endif
		;
		/* merge: x.c[2] = 1(49, 47, 49) */
		reached[1][47] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)this)->x.c[2]);
		((P1 *)this)->x.c[2] = 1;
#ifdef VAR_RANGES
		logval("node_2_process:x.c[2]", ((int)((P1 *)this)->x.c[2]));
#endif
		;
		/* merge: x.c[3] = 0(49, 48, 49) */
		reached[1][48] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)this)->x.c[3]);
		((P1 *)this)->x.c[3] = 0;
#ifdef VAR_RANGES
		logval("node_2_process:x.c[3]", ((int)((P1 *)this)->x.c[3]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 130: // STATE 49 - ./teste.pml:153 - [x.cost = node_2.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->x.cost);
		((P1 *)this)->x.cost = ((int)now.node_2.cost_to_target);
#ifdef VAR_RANGES
		logval("node_2_process:x.cost", ((int)((P1 *)this)->x.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 50 - ./teste.pml:154 - [from_2_1!x.cost,x.c[0],x.c[1],x.c[2],x.c[3]] (0:0:0 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		if (q_full(now.from_2_1))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.from_2_1);
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.cost)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[0])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[1])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[2])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x.c[3])); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.from_2_1, 0, ((int)((P1 *)this)->x.cost), ((int)((P1 *)this)->x.c[0]), ((int)((P1 *)this)->x.c[1]), ((int)((P1 *)this)->x.c[2]), ((int)((P1 *)this)->x.c[3]), 5);
		_m = 2; goto P999; /* 0 */
	case 132: // STATE 52 - ./teste.pml:155 - [node_2.costs[3] = x.cost] (0:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		(trpt+1)->bup.oval = ((int)now.node_2.costs[3]);
		now.node_2.costs[3] = ((int)((P1 *)this)->x.cost);
#ifdef VAR_RANGES
		logval("node_2.costs[3]", ((int)now.node_2.costs[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 68 - ./teste.pml:163 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC node_1_process */
	case 134: // STATE 1 - ./teste.pml:39 - [t0_to_1?custo_t0] (0:0:1 - 1)
		reached[0][1] = 1;
		if (q_len(now.t0_to_1) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->custo_t0);
		;
		((P0 *)this)->custo_t0 = qrecv(now.t0_to_1, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("node_1_process:custo_t0", ((int)((P0 *)this)->custo_t0));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.t0_to_1);
		sprintf(simtmp, "%d", ((int)((P0 *)this)->custo_t0)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 135: // STATE 2 - ./teste.pml:41 - [((custo_t0<node_1.current_cost))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)((P0 *)this)->custo_t0)<((int)now.node_1.current_cost))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 3 - ./teste.pml:42 - [node_1.current_cost = custo_t0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.current_cost);
		now.node_1.current_cost = ((int)((P0 *)this)->custo_t0);
#ifdef VAR_RANGES
		logval("node_1.current_cost", ((int)now.node_1.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 4 - ./teste.pml:43 - [node_1.elected_node = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.elected_node);
		now.node_1.elected_node = 0;
#ifdef VAR_RANGES
		logval("node_1.elected_node", ((int)now.node_1.elected_node));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 5 - ./teste.pml:44 - [node_1.caminho_atual.c[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[0]);
		now.node_1.caminho_atual.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[0]", ((int)now.node_1.caminho_atual.c[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 6 - ./teste.pml:45 - [node_1.caminho_atual.c[1] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[1]);
		now.node_1.caminho_atual.c[1] = 1;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[1]", ((int)now.node_1.caminho_atual.c[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 7 - ./teste.pml:46 - [node_1.caminho_atual.c[2] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[2]);
		now.node_1.caminho_atual.c[2] = 0;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[2]", ((int)now.node_1.caminho_atual.c[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 8 - ./teste.pml:47 - [node_1.caminho_atual.c[3] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[3]);
		now.node_1.caminho_atual.c[3] = 0;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[3]", ((int)now.node_1.caminho_atual.c[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 9 - ./teste.pml:48 - [node_1.caminho_atual.cost = node_1.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.cost);
		now.node_1.caminho_atual.cost = ((int)now.node_1.cost_to_target);
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.cost", ((int)now.node_1.caminho_atual.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 10 - ./teste.pml:49 - [x.c[0] = 1] (0:14:4 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)this)->x.c[0]);
		((P0 *)this)->x.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_1_process:x.c[0]", ((int)((P0 *)this)->x.c[0]));
#endif
		;
		/* merge: x.c[1] = 1(14, 11, 14) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->x.c[1]);
		((P0 *)this)->x.c[1] = 1;
#ifdef VAR_RANGES
		logval("node_1_process:x.c[1]", ((int)((P0 *)this)->x.c[1]));
#endif
		;
		/* merge: x.c[2] = 0(14, 12, 14) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)this)->x.c[2]);
		((P0 *)this)->x.c[2] = 0;
#ifdef VAR_RANGES
		logval("node_1_process:x.c[2]", ((int)((P0 *)this)->x.c[2]));
#endif
		;
		/* merge: x.c[3] = 0(14, 13, 14) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)this)->x.c[3]);
		((P0 *)this)->x.c[3] = 0;
#ifdef VAR_RANGES
		logval("node_1_process:x.c[3]", ((int)((P0 *)this)->x.c[3]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 144: // STATE 14 - ./teste.pml:50 - [x.cost = node_1.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->x.cost);
		((P0 *)this)->x.cost = ((int)now.node_1.cost_to_target);
#ifdef VAR_RANGES
		logval("node_1_process:x.cost", ((int)((P0 *)this)->x.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 15 - ./teste.pml:51 - [from_1_3!x.cost,x.c[0],x.c[1],x.c[2],x.c[3]] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (q_full(now.from_1_3))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.from_1_3);
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.cost)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[0])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[1])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[2])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[3])); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.from_1_3, 0, ((int)((P0 *)this)->x.cost), ((int)((P0 *)this)->x.c[0]), ((int)((P0 *)this)->x.c[1]), ((int)((P0 *)this)->x.c[2]), ((int)((P0 *)this)->x.c[3]), 5);
		_m = 2; goto P999; /* 0 */
	case 146: // STATE 18 - ./teste.pml:55 - [((len(from_2_1)>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!((q_len(now.from_2_1)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 19 - ./teste.pml:56 - [from_2_1?x.cost,x.c[0],x.c[1],x.c[2],x.c[3]] (0:0:5 - 1)
		reached[0][19] = 1;
		if (q_len(now.from_2_1) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)this)->x.cost);
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->x.c[0]);
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)this)->x.c[1]);
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)this)->x.c[2]);
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)this)->x.c[3]);
		;
		((P0 *)this)->x.cost = qrecv(now.from_2_1, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("node_1_process:x.cost", ((int)((P0 *)this)->x.cost));
#endif
		;
		((P0 *)this)->x.c[0] = qrecv(now.from_2_1, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("node_1_process:x.c[0]", ((int)((P0 *)this)->x.c[0]));
#endif
		;
		((P0 *)this)->x.c[1] = qrecv(now.from_2_1, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("node_1_process:x.c[1]", ((int)((P0 *)this)->x.c[1]));
#endif
		;
		((P0 *)this)->x.c[2] = qrecv(now.from_2_1, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("node_1_process:x.c[2]", ((int)((P0 *)this)->x.c[2]));
#endif
		;
		((P0 *)this)->x.c[3] = qrecv(now.from_2_1, XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("node_1_process:x.c[3]", ((int)((P0 *)this)->x.c[3]));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.from_2_1);
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.cost)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[0])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[1])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[2])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[3])); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 148: // STATE 20 - ./teste.pml:58 - [((x.cost<255))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!((((int)((P0 *)this)->x.cost)<255)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 21 - ./teste.pml:60 - [((x.c[1]==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (!((((int)((P0 *)this)->x.c[1])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 22 - ./teste.pml:62 - [((node_1.cost_table[2].array[x.cost]<node_1.current_cost))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		if (!((((int)now.node_1.cost_table[2].array[ Index(((int)((P0 *)this)->x.cost), 4) ])<((int)now.node_1.current_cost))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 23 - ./teste.pml:63 - [node_1.current_cost = node_1.cost_table[2].array[x.cost]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.current_cost);
		now.node_1.current_cost = ((int)now.node_1.cost_table[2].array[ Index(((int)((P0 *)this)->x.cost), 4) ]);
#ifdef VAR_RANGES
		logval("node_1.current_cost", ((int)now.node_1.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 24 - ./teste.pml:64 - [node_1.elected_node = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.elected_node);
		now.node_1.elected_node = 2;
#ifdef VAR_RANGES
		logval("node_1.elected_node", ((int)now.node_1.elected_node));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 25 - ./teste.pml:65 - [node_1.caminho_atual.c[0] = x.c[0]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[0]);
		now.node_1.caminho_atual.c[0] = ((int)((P0 *)this)->x.c[0]);
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[0]", ((int)now.node_1.caminho_atual.c[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 26 - ./teste.pml:65 - [node_1.caminho_atual.c[1] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[1]);
		now.node_1.caminho_atual.c[1] = 1;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[1]", ((int)now.node_1.caminho_atual.c[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 27 - ./teste.pml:65 - [node_1.caminho_atual.c[2] = x.c[2]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[2]);
		now.node_1.caminho_atual.c[2] = ((int)((P0 *)this)->x.c[2]);
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[2]", ((int)now.node_1.caminho_atual.c[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 28 - ./teste.pml:65 - [node_1.caminho_atual.c[3] = x.c[3]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[3]);
		now.node_1.caminho_atual.c[3] = ((int)((P0 *)this)->x.c[3]);
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[3]", ((int)now.node_1.caminho_atual.c[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 29 - ./teste.pml:66 - [node_1.caminho_atual.cost = node_1.cost_table[2].array[x.cost]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.cost);
		now.node_1.caminho_atual.cost = ((int)now.node_1.cost_table[2].array[ Index(((int)((P0 *)this)->x.cost), 4) ]);
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.cost", ((int)now.node_1.caminho_atual.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 30 - ./teste.pml:67 - [x.c[1] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->x.c[1]);
		((P0 *)this)->x.c[1] = 1;
#ifdef VAR_RANGES
		logval("node_1_process:x.c[1]", ((int)((P0 *)this)->x.c[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 31 - ./teste.pml:68 - [x.cost = node_1.cost_table[2].array[x.cost]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->x.cost);
		((P0 *)this)->x.cost = ((int)now.node_1.cost_table[2].array[ Index(((int)((P0 *)this)->x.cost), 4) ]);
#ifdef VAR_RANGES
		logval("node_1_process:x.cost", ((int)((P0 *)this)->x.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 32 - ./teste.pml:69 - [node_1.costs[2] = x.cost] (0:0:1 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.costs[2]);
		now.node_1.costs[2] = ((int)((P0 *)this)->x.cost);
#ifdef VAR_RANGES
		logval("node_1.costs[2]", ((int)now.node_1.costs[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 33 - ./teste.pml:70 - [from_1_3!x.cost,x.c[0],x.c[1],x.c[2],x.c[3]] (0:0:0 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (q_full(now.from_1_3))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.from_1_3);
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.cost)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[0])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[1])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[2])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[3])); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.from_1_3, 0, ((int)((P0 *)this)->x.cost), ((int)((P0 *)this)->x.c[0]), ((int)((P0 *)this)->x.c[1]), ((int)((P0 *)this)->x.c[2]), ((int)((P0 *)this)->x.c[3]), 5);
		_m = 2; goto P999; /* 0 */
	case 162: // STATE 35 - ./teste.pml:73 - [((node_1.elected_node==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (!((((int)now.node_1.elected_node)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 36 - ./teste.pml:74 - [node_1.current_cost = node_1.cost_table[2].array[x.cost]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.current_cost);
		now.node_1.current_cost = ((int)now.node_1.cost_table[2].array[ Index(((int)((P0 *)this)->x.cost), 4) ]);
#ifdef VAR_RANGES
		logval("node_1.current_cost", ((int)now.node_1.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 37 - ./teste.pml:76 - [((node_1.cost_to_target<node_1.current_cost))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((((int)now.node_1.cost_to_target)<((int)now.node_1.current_cost))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 38 - ./teste.pml:77 - [node_1.current_cost = node_1.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.current_cost);
		now.node_1.current_cost = ((int)now.node_1.cost_to_target);
#ifdef VAR_RANGES
		logval("node_1.current_cost", ((int)now.node_1.current_cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 39 - ./teste.pml:78 - [node_1.elected_node = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.elected_node);
		now.node_1.elected_node = 0;
#ifdef VAR_RANGES
		logval("node_1.elected_node", ((int)now.node_1.elected_node));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 40 - ./teste.pml:79 - [node_1.caminho_atual.c[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[0]);
		now.node_1.caminho_atual.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[0]", ((int)now.node_1.caminho_atual.c[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 41 - ./teste.pml:80 - [node_1.caminho_atual.c[1] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[1]);
		now.node_1.caminho_atual.c[1] = 1;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[1]", ((int)now.node_1.caminho_atual.c[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 42 - ./teste.pml:81 - [node_1.caminho_atual.c[2] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[2]);
		now.node_1.caminho_atual.c[2] = 0;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[2]", ((int)now.node_1.caminho_atual.c[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 43 - ./teste.pml:82 - [node_1.caminho_atual.c[3] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.c[3]);
		now.node_1.caminho_atual.c[3] = 0;
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.c[3]", ((int)now.node_1.caminho_atual.c[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 44 - ./teste.pml:83 - [node_1.caminho_atual.cost = node_1.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.caminho_atual.cost);
		now.node_1.caminho_atual.cost = ((int)now.node_1.cost_to_target);
#ifdef VAR_RANGES
		logval("node_1.caminho_atual.cost", ((int)now.node_1.caminho_atual.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 45 - ./teste.pml:84 - [x.c[0] = 1] (0:49:4 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)this)->x.c[0]);
		((P0 *)this)->x.c[0] = 1;
#ifdef VAR_RANGES
		logval("node_1_process:x.c[0]", ((int)((P0 *)this)->x.c[0]));
#endif
		;
		/* merge: x.c[1] = 1(49, 46, 49) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->x.c[1]);
		((P0 *)this)->x.c[1] = 1;
#ifdef VAR_RANGES
		logval("node_1_process:x.c[1]", ((int)((P0 *)this)->x.c[1]));
#endif
		;
		/* merge: x.c[2] = 0(49, 47, 49) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)this)->x.c[2]);
		((P0 *)this)->x.c[2] = 0;
#ifdef VAR_RANGES
		logval("node_1_process:x.c[2]", ((int)((P0 *)this)->x.c[2]));
#endif
		;
		/* merge: x.c[3] = 0(49, 48, 49) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)this)->x.c[3]);
		((P0 *)this)->x.c[3] = 0;
#ifdef VAR_RANGES
		logval("node_1_process:x.c[3]", ((int)((P0 *)this)->x.c[3]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 173: // STATE 49 - ./teste.pml:88 - [x.cost = node_1.cost_to_target] (0:0:1 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->x.cost);
		((P0 *)this)->x.cost = ((int)now.node_1.cost_to_target);
#ifdef VAR_RANGES
		logval("node_1_process:x.cost", ((int)((P0 *)this)->x.cost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 50 - ./teste.pml:89 - [from_1_3!x.cost,x.c[0],x.c[1],x.c[2],x.c[3]] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (q_full(now.from_1_3))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.from_1_3);
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.cost)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[0])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[1])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[2])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->x.c[3])); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.from_1_3, 0, ((int)((P0 *)this)->x.cost), ((int)((P0 *)this)->x.c[0]), ((int)((P0 *)this)->x.c[1]), ((int)((P0 *)this)->x.c[2]), ((int)((P0 *)this)->x.c[3]), 5);
		_m = 2; goto P999; /* 0 */
	case 175: // STATE 52 - ./teste.pml:90 - [node_1.costs[2] = x.cost] (0:0:1 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		(trpt+1)->bup.oval = ((int)now.node_1.costs[2]);
		now.node_1.costs[2] = ((int)((P0 *)this)->x.cost);
#ifdef VAR_RANGES
		logval("node_1.costs[2]", ((int)now.node_1.costs[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 68 - ./teste.pml:98 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

