#clone_repo:
cookiecutter https://github.com/EnvGen/cookiecutter-binning-project --no-input

cd binning-project

mkdir data

ln -s ../contigs data/
ln -s ../reads data/

snakemake --list-target-rules
snakemake --dryrun concoct_inputtable_10K_all
