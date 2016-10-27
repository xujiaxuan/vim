---
# 1. compile

local :gcc myping2.c -o myping2
remote:gcc myping2.c -o myping2

# 2. commented code
myping2.c

	确保所接收的是所发的ICMP的回应
	if((icmp->icmp_type == ICMP_ECHOREPLY) && (icmp->icmp_id == pid))

# 3. run remote myping2
myping2 local ip

# 4. run local mying2
myping2 remote ip
