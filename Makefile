
.PHONY : ve 
ve : 
	python3.6 -m venv --clear VE 
	@echo "run . ./VE/bin/activate to activate virtual environment"

.PHONY : deps 
deps: venvp 
	python -m pip install -r deps/requirements.txt --find-links=deps/wheels 

.PHONY : clean 
clean : 
	- rm -r VE build dist src/*.egg-info

.PHONY : develop 
develop : venvp
	python3.6 setup.py develop 

.PHONY : install 
install : venvp  
	python3.6 setup.py install 

.PHONY : test 
test : venvp 
	python3.6 -m abacus.main 

.PHONY : venvp
venvp:
	if [ -z $$VIRTUAL_ENV ] ; then \
		echo "must run in a virtual environment" ;\
		exit 1  ;\
	fi

# end of file
