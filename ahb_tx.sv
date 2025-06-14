class ahb_tx extends uvm_sequence_item;
	rand bit [`ADDR_WIDTH-1:0] addr;
	rand bit [`WIDTH-1:0] data;
	rand bit wr_rd;
	`uvm_object_utils_begin(ahb_tx)//1st level of factory registration
		`uvm_field_int(addr, UVM_ALL_ON|UVM_NOPACK)//2nd level of factory registration - register fields
		`uvm_field_int(data, UVM_ALL_ON|UVM_NOPACK)
		`uvm_field_int(wr_rd, UVM_ALL_ON|UVM_NOPACK)
	`uvm_object_utils_end
	`NEW_OBJ
endclass
