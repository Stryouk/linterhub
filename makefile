CXXFLAGS = -Os

dockers:
	dotnet run -p generator reformat
	dotnet run -p generator alpine

tests:
	sh test.sh alpine