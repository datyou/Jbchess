require 'socket'

host = "localhost"
port = 2000
path = "/"

sock = TCPSocket.open(host,port)

request =<<EOF
GET #{path} HTTP/1.0\r
Host: #{host}\r
\r
EOF

sock.puts(request)

response = ""
length = 0

while buf = sock.gets
    response << buf
    if response =~ /\r\n\r\n/

        if response =~ /content-length: (\d+)/i
            length = $1.to_i
        end
        break
    end
end

body = ""

while buf = sock.gets
    body << buf
    break if body.size >= length
end

puts body

sock.close
