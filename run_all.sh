#clone_repo:
cookiecutter https://github.com/EnvGen/cookiecutter-binning-project

cd binning-project
ln -s ../contigs .
ln -s ../reads .

snakemake --list-target-rules
