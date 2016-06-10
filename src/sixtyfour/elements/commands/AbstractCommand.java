package sixtyfour.elements.commands;

import java.util.Locale;

import sixtyfour.Memory;
import sixtyfour.elements.ProgramCounter;
import sixtyfour.elements.Term;
import sixtyfour.elements.Type;


public abstract class AbstractCommand
  implements Command
{
  protected String name;
  protected Term term;
  protected int lineCnt = 0;
  protected int linePos = 0;
  protected int lineNumber = 0;


  @SuppressWarnings("unused")
  private AbstractCommand()
  {
    //
  }


  public AbstractCommand(String name)
  {
    this.name = name.toUpperCase(Locale.ENGLISH);
  }


  public Command clone(String linePart)
  {
    try
    {
      AbstractCommand clone = this.getClass().newInstance();
      clone.name = name;
      return clone;
    }
    catch (Exception e)
    {
      throw new RuntimeException("Unable to instantiate command: " + name);
    }

  }


  @Override
  public String getName()
  {
    return name;
  }


  @Override
  public Term getTerm()
  {
    return term;
  }


  @Override
  public void setTerm(Term term)
  {
    this.term = term;
  }


  @Override
  public boolean isCommand(String command)
  {
    return command.trim().toUpperCase(Locale.ENGLISH).startsWith(name);
  }


  @Override
  public String toString()
  {
    return this.name + " @ " + lineNumber;
  }


  @Override
  public Type getType()
  {
    // TODO Auto-generated method stub
    return null;
  }


  @Override
  public Object eval(Memory memory)
  {
    // TODO Auto-generated method stub
    return null;
  }


  @Override
  public String parse(String linePart, int lineCnt, int lineNumber, int linePos, Memory memory)
  {
    this.lineCnt = lineCnt;
    this.linePos = linePos;
    this.lineNumber = lineNumber;
    return null;
  }


  @Override
  public ProgramCounter execute(Memory memory)
  {
    return null;
    // TODO Auto-generated method stub
  }

}
