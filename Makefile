all:generate sign verify

clear:
	rm -rf generate sign verify

generate:generate.cpp
sign:sign.cpp
verify:verify.cpp

%:%.cpp
	g++ -g -Wall -std=c++11 $< -o $@  -lssl -lcrypto 
