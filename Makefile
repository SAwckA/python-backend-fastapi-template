CODE = core
SRC = .


lint:
	flake8 --jobs 4 --statistics --show-source $(SRC)
	mypy $(SRC)
	black --target-version py36 --skip-string-normalization --line-length=119 --check $(SRC)

run:
	uvicorn $(CODE).app:app --host 0.0.0.0 --port 8000