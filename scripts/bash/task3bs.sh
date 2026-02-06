#!/bin/bash

cat > server.log <<EOF
Info: System started
Error: Failed to load module
Warning: Low memory
Error: Connection lost
Info: Task complete
Error: Invalid input
EOF

count=$(grep -c "Error" server.log)
echo "Number of lines containing 'Error': $count"
