# Stack Machine Interpretation

# Write a method that implements a miniature stack-and-register-based 
# programming language that has the following commands:

# n Place a value n in the "register"
# PUSH Push the register value on to the stack
# ADD Add value on stack to the register value
# SUB Subtract value on stack from the register value
# MULT Multiply value on stack by the register value
# DIV Divide value on stack into the register value
# MOD Divide value on stack into the register value and leave remainder
# POP Remove item from stack and place in register
# PRINT print the register value
# ADD, SUB, MULT, DIV, and MOD all remove the topmost item from the stack,
#  perform the operation, and leave the result in the register.

# All operations are integer operations 
# (which is only important with DIV and MOD).

# Programs will be supplied to your language method via a string
#  passed in as an argument. Your program may assume that all programs
#   are correct programs; that is, they won't do anything like try to pop a
#    non-existent value from the stack, and they won't contain unknown tokens.

# You should initialize the register to 0.

# Examples:

# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)

def minilang(string)
  commands = string.split
  register = [0]
  stack = []

  commands.map! do |cmd|
    cmd.to_i.to_s == cmd ? cmd.to_i : cmd
  end

  commands.each do |cmd|
    if cmd.is_a?(Numeric)
      register << cmd
    else
      case cmd
      when 'PUSH'  then stack << register.last
      when 'ADD'   then register[-1] += stack.pop
      when 'SUB'   then register[-1] -= stack.pop
      when 'MULT'  then register[-1] *= stack.pop
      when 'DIV'   then register[-1] /= stack.pop
      when 'MOD'   then register[-1] %= stack.pop
      when 'POP'   then register << stack.pop
      when 'PRINT' then p register.last
      end
    end
  end
end

minilang('PRINT')
# # 0

minilang('5 PUSH 3 MULT PRINT')
# # 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

minilang('5 PUSH POP PRINT')
# # 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

minilang('-3 PUSH 5 SUB PRINT')
# # 8

minilang('6 PUSH')
# # (nothing printed; no PRINT commands)
