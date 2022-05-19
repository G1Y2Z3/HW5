VERILOG = iverilog
TARGET = lfsr.vcd
TEMP = temp.vvp
$(TARGET) : $(TEMP)
	vvp $(TEMP)
$(TEMP): lfsr_tb.v lfsr.v
	$(VERILOG) -o $(TEMP) lfsr_tb.v lfsr.v
clean:
	-del $(TARGET)
	-del $(TEMP)