require 'socket'

port = 2000
server = TCPServer.open(port)



requetst = ""
while buf = conn.gets
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
    conn.write(response)
    break
end

conn.close
server.close