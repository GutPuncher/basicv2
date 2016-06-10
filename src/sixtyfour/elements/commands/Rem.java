package sixtyfour.elements.commands;

import sixtyfour.Memory;
import sixtyfour.elements.ProgramCounter;

public class Rem extends AbstractCommand {

	public final static String REM_MARKER = "###";

	public Rem() {
		super("REM");
	}

	@Override
	public String parse(String linePart, int lineCnt, int lineNumber, int linePos, Memory memory) {
		super.parse(linePart, lineCnt, lineNumber, linePos, memory);
		return REM_MARKER;
	}

	@Override
	public ProgramCounter execute(Memory memory) {
		return null;
	}
}
