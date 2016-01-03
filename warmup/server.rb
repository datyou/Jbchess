require 'socket'

port = 2000
server = TCPServer.open(port)

socks = [server]

while true
    ns = select(socks)
    next if ns == nil
    for s in ns[0]
        if s == server
            conn = s.accept
            socks << conn
            puts "acceptd #{conn}"
            puts "wainting #{socks}"
        else
            if s.eof?
                s.close
                socks.delete(s)
                puts "connection done #{s}"
            else
                requetst = ""
                while buf = s.gets
                requetst << buf
                next unless requetst =~ /\r\n\r\n/
                body =<<EOF
<html><body>Hello World</body></html>
EOF

                response = <<EOF
HTTP/1.0 200 OK\r
Conntent-Type: text/html\r
Content-Length: #{body.size}\r
\r
#{body}
EOF
                s.write(response)
                break
            end
        end
    end
    end
end
