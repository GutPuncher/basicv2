package com.sixtyfour.extensions.x16.commands;

import java.util.List;
import java.util.Locale;

import com.sixtyfour.Logger;
import com.sixtyfour.cbmnative.Util;
import com.sixtyfour.config.CompilerConfig;
import com.sixtyfour.elements.commands.AbstractCommand;
import com.sixtyfour.parser.cbmnative.CodeContainer;
import com.sixtyfour.system.BasicProgramCounter;
import com.sixtyfour.system.Machine;

/**
 * @author Foerster-H
 *
 */
public class Mon extends AbstractCommand {

	public Mon() {
		super("MON");
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.sixtyfour.elements.commands.AbstractCommand#parse(com.sixtyfour.
	 * config.CompilerConfig, java.lang.String, int, int, int, boolean,
	 * com.sixtyfour.system.Machine)
	 */
	@Override
	public String parse(CompilerConfig config, String linePart, int lineCnt, int lineNumber, int linePos,
			boolean lastPos, Machine machine) {
		super.parse(config, linePart, lineCnt, lineNumber, linePos, lastPos, machine);

		// Because someone decided that it's a good idea to have a "monitor" alias for
		// "mon", which it isn't...but well...
		boolean isMonitor = linePart.toLowerCase(Locale.ENGLISH).startsWith("monitor");

		if ((linePart.trim().length() > 3 && !isMonitor) || linePart.trim().length() > 7) {
			syntaxError(this);
		}
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.sixtyfour.elements.commands.AbstractCommand#execute(com.sixtyfour.
	 * config.CompilerConfig, com.sixtyfour.system.Machine)
	 */
	@Override
	public BasicProgramCounter execute(CompilerConfig config, Machine machine) {
		Logger.log("Call to MON ignored by local runtime!");
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.sixtyfour.elements.commands.AbstractCommand#evalToCode(com.sixtyfour.
	 * config.CompilerConfig, com.sixtyfour.system.Machine)
	 */
	@Override
	public List<CodeContainer> evalToCode(CompilerConfig config, Machine machine) {
		return Util.createSingleCommand("JMP START_MON");
	}

}
