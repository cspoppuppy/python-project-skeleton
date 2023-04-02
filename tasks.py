from invoke import task


@task
def lint(c):
    c.run("python -m flake8", pty=True)
    c.run("python -m black --check .", pty=True)
    c.run("python -m isort --profile black . --check-only", pty=True)
    c.run("python -m mypy .", pty=True)


@task
def test(c):
    c.run("python -m pytest -vvv -s --cov=src tests/", pty=True)
