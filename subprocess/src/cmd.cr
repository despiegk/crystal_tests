
# command = '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"'

# command = "brew install mc"

# output = `echo "Hello world"`
# pp output
# system "mc"

# stdout = IO::Memory.new
# stdout2 = IO::Memory.new
# stderr = IO::Memory.new
# s = Process.new("mc",shell: true, output: Process::ORIGINAL_STDOUT, input: Process::ORIGINAL_STDIN, error: Process::ORIGINAL_STDOUT)
# require "log"

out1,in1 = IO.pipe
out2,in2 = IO.pipe

s = Process.new("find /",shell: true, output: in1, error: in2)


spawn do
    loop do
        pp out1.gets
        # if out1.peek
        #     pp out1.gets
        # end
        # if out2.peek
        #     pp out2.gets
        # end
        sleep 0.1
    end
  end

spawn do
    loop do
        pp "t"
        sleep 0.1
    end
end  

sleep 20.second
# s = Process.new("find /",shell: true, output: stdout2, error: stdout2)


# org = Process::ORIGINAL_STDOUT
# io = IO::Memory.new "hello \nworld"

# stdout.each_line do |line|
#     puts line
#   end

# while true
#     # stdout.pos 0
#     a = stdout.read_at(0, 100)
#     # pp stdout.pos
#     pp a
#     # pp stdout.to_s
#     sleep 0.1
#   end

# status = s.wait
# pp s

# puts stdout.to_s
# puts stderr.to_s

# reader, writer = IO.pipe
# Process.run "cat xx.txt|cut -f 1-6|sort -k 1,1", shell: true, output: writer do |process|
#   until process.terminated?
#     line = reader.gets
#     puts line
#   end
# end

# `mc`

# io = MemoryIO.new
# Process.run(command, shell: true, output: io)
# Process.run(command, shell: true)
# output = io.to_s



# require "watchbird/dsl"

# watch "./**/*.cr" do |ev|
#   # ev.status is WatchBird::EventType.
#   # can be Modify, Create and Delete.
#   puts ev.status
#   # ev.name is changed target's fullpath. It is an absolute path.
#   puts ev.name
#   # ev.dir? returns true when changed target is a directory
#   puts ev.dir?
# end