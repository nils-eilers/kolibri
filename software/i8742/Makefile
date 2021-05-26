k8742.bin: k8742.a48
	asl -cpu 8042 -q -LC $<
#	p2bin -r 0-2047 -l 0 k8742.p
	p2hex -k k8742.p

clean:
	rm -f k8742.hex k8742.bin k8742.lst k8742.p
