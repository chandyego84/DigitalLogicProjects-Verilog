/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_138(char*, char *);
IKI_DLLESPEC extern void execute_139(char*, char *);
IKI_DLLESPEC extern void execute_282(char*, char *);
IKI_DLLESPEC extern void execute_283(char*, char *);
IKI_DLLESPEC extern void execute_280(char*, char *);
IKI_DLLESPEC extern void execute_281(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_5(char*, char *);
IKI_DLLESPEC extern void execute_6(char*, char *);
IKI_DLLESPEC extern void execute_7(char*, char *);
IKI_DLLESPEC extern void execute_145(char*, char *);
IKI_DLLESPEC extern void execute_146(char*, char *);
IKI_DLLESPEC extern void execute_147(char*, char *);
IKI_DLLESPEC extern void execute_148(char*, char *);
IKI_DLLESPEC extern void execute_141(char*, char *);
IKI_DLLESPEC extern void execute_142(char*, char *);
IKI_DLLESPEC extern void execute_143(char*, char *);
IKI_DLLESPEC extern void execute_144(char*, char *);
IKI_DLLESPEC extern void execute_284(char*, char *);
IKI_DLLESPEC extern void execute_285(char*, char *);
IKI_DLLESPEC extern void execute_286(char*, char *);
IKI_DLLESPEC extern void execute_287(char*, char *);
IKI_DLLESPEC extern void execute_288(char*, char *);
IKI_DLLESPEC extern void execute_289(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_12(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_18(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_24(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_30(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_90(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_96(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_102(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_114(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_126(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_132(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_162(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_168(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[52] = {(funcp)execute_138, (funcp)execute_139, (funcp)execute_282, (funcp)execute_283, (funcp)execute_280, (funcp)execute_281, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_145, (funcp)execute_146, (funcp)execute_147, (funcp)execute_148, (funcp)execute_141, (funcp)execute_142, (funcp)execute_143, (funcp)execute_144, (funcp)execute_284, (funcp)execute_285, (funcp)execute_286, (funcp)execute_287, (funcp)execute_288, (funcp)execute_289, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_12, (funcp)transaction_18, (funcp)transaction_24, (funcp)transaction_30, (funcp)transaction_36, (funcp)transaction_42, (funcp)transaction_48, (funcp)transaction_54, (funcp)transaction_60, (funcp)transaction_66, (funcp)transaction_72, (funcp)transaction_78, (funcp)transaction_84, (funcp)transaction_90, (funcp)transaction_96, (funcp)transaction_102, (funcp)transaction_108, (funcp)transaction_114, (funcp)transaction_120, (funcp)transaction_126, (funcp)transaction_132, (funcp)transaction_138, (funcp)transaction_144, (funcp)transaction_150, (funcp)transaction_156, (funcp)transaction_162, (funcp)transaction_168};
const int NumRelocateId= 52;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/clkdiv_asyncTb_behav/xsim.reloc",  (void **)funcTab, 52);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/clkdiv_asyncTb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/clkdiv_asyncTb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/clkdiv_asyncTb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/clkdiv_asyncTb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/clkdiv_asyncTb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
