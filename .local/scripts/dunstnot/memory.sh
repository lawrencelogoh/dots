free -m | sed -n '2{p;q}' | awk '{printf ("%2.2fGiB/%2.2fG\n", ( $3 / 1024), ($2 / 1024))}'
