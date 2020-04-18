# subprocess

need example which does following

- execute a couple sub processes (e.g. a long running python prog, or some time in bash then an echo)
- capture the output in fiber
- continue the main process
- keep on checking if process dies or finishes
- have a timeout there so we know when not done in time




```crystal
stdout = IO::Memory.new
process = Process.new("echo", ["Hello world"], output: stdout)
status = process.wait
output = stdout.to_s
```