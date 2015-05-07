#clone_repo:
cookiecutter https://github.com/EnvGen/cookiecutter-binning-project --no-input

cd binning-project

mkdir data
cd data
ln -s ../../contigs .
ln -s ../../reads .
cd ..

snakemake --list-target-rules
snakemake --dryrun concoct_inputtable_10K_all
