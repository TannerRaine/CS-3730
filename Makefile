SHELL = /bin/bash

setup:
        python3 -m venv venv
        source venv/bin/activate
        pip install -r requirements.txt

        # Create the hooks directory if it doesn't exist
        mkdir -p .git/hooks

        # Create a symbolic link for the post-commit hook
        ln -sf check_style.py .git/hooks/post-commit  # Path is now simpler

run:
        source venv/bin/activate
        python app.py

clean:
        rm -rf venv
        py3clean .

.PHONY: setup run cleanshell = /bin/bash

