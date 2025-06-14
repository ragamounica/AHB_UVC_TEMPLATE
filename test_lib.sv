class ahb_base_test extends uvm_test;
	ahb_env env;
	`uvm_component_utils(ahb_base_test)
	`NEW_COMP
	function void build_phase(uvm_phase phase);
		`uvm_info("AHB_UVC","Test:Build_phase",UVM_NONE)
		env = ahb_env::type_id::create("env",this);
	endfunction
	function void end_of_elaboration_phase(uvm_phase phase);
		`uvm_info("TB HIERARCHY",this.sprint(),UVM_NONE)
	endfunction
endclass
