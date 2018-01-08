package com.sixtyfour.cbmnative.mos6502.generators;

import java.util.List;
import java.util.Map;

import com.sixtyfour.Logger;
import com.sixtyfour.elements.Type;

public class Eq extends GeneratorBase {

	private static int CNT = 0;

	@Override
	public String getMnemonic() {
		return "EQ";
	}

	@Override
	public void generateCode(String line, List<String> nCode, List<String> subCode, Map<String, String> name2label) {
		Operands ops = new Operands(line, name2label);
		Logger.log(line + " -- " + ops.getTarget() + "  |||  " + ops.getSource());

		Operand source = ops.getSource();
		Operand target = ops.getTarget();

		if (!source.isIndexed() && !target.isIndexed()) {
			if (source.getType() != Type.REAL || target.getType() != Type.REAL) {
				throw new RuntimeException("Invalid comparison: " + line);
			}
			noIndexRealSource(nCode, source, target);

		} else {
			throw new RuntimeException("Invalid indexing mode: " + line);
		}

		nCode.add("EQ_SKIP" + CNT + ":");
		nCode.add("; Real in (A/Y) to FAC");
		nCode.add("JSR $BBA2"); // Real in (A/Y) to FAC
		if (target.isRegister()) {
			nCode.add("LDX #<" + target.getRegisterName());
			nCode.add("LDY #>" + target.getRegisterName());
		} else {
			nCode.add("LDX #<" + target.getAddress());
			nCode.add("LDY #>" + target.getAddress());
		}
		nCode.add("; FAC to (X/Y)");
		nCode.add("JSR $BBD7"); // FAC to (X/Y)
		CNT++;
	}

	private void noIndexRealSource(List<String> nCode, Operand source, Operand target) {
		// Source is REAL
		if (source.isRegister()) {
			nCode.add("LDA #<" + source.getRegisterName());
			nCode.add("LDY #>" + source.getRegisterName());
		} else {
			nCode.add("LDA #<" + source.getAddress());
			nCode.add("LDY #>" + source.getAddress());
		}
		nCode.add("; Real in (A/Y) to FAC");
		nCode.add("JSR $BBA2"); // Real in (A/Y) to FAC

		if (target.isRegister()) {
			nCode.add("LDA #<" + target.getRegisterName());
			nCode.add("LDY #>" + target.getRegisterName());
		} else {
			nCode.add("LDA #<" + target.getAddress());
			nCode.add("LDY #>" + target.getAddress());
		}
		nCode.add("; CMPFAC with (A/Y)");
		nCode.add("JSR $BC5B"); // CMPFAC with (A/Y)
		
		nCode.add("BEQ EQ_EQ"+CNT);
		nCode.add("LDA #<REAL_CONST_ZERO");
		nCode.add("LDY #>REAL_CONST_ZERO");
		nCode.add("JMP EQ_SKIP" + CNT);
		nCode.add("EQ_EQ"+CNT+":");
		nCode.add("LDA #<REAL_CONST_MINUS_ONE");
		nCode.add("LDY #>REAL_CONST_MINUS_ONE");
	}
}
