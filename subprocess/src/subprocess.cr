stdout = IO::Memory.new
process = Process.new("sleep", ["100"], output: stdout)
status = process.wait
output = stdout.to_s

pp output