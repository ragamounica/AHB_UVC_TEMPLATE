class ahb_ic_env extends uvm_env;
	ahb_magent ahb_magent_i;
	ahb_sagent ahb_sagent_i;
	`uvm_component_utils(ahb_env)
	function new(string name, uvm_component parent);
		super.new(name, parent);
        endfunction
	function void build_phase(uvm_phase phase);
		ahb_magnet_i = ahb_magent::type_id::create("ahb_magent_i",this);
		ahb_sagnet_i = ahb_sagent::type_id::create("ahb_sagent_i",this);
	endfunction
endclass





