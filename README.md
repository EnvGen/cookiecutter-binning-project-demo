# cookiecutter-binning-project-demo
A demo for the cookiecutter-binning-project repository.

Tutorial
========
Here is a complete example to start and execute a binning project using the cookiecutter-binning-project, snakemake-workflows and toolbox repositories.

Prerequisities
--------------
To set up the proper python environment, install or make sure you have installed [conda](http://conda.pydata.org/miniconda.html). Keep in mind that Conda doesn't play nice if you have virtualenv or virtualenv-wrapper or similar activated. Then create a conda environment:

    conda create -n binning-project-demo python=3.4

Activate this environment:

    source activate binning-project-demo

and install the missing packages

    conda install pip
    pip install cookiecutter snakemake

You're now ready to get started!

Create your binning project
---------------------------
First clone and enter this repository

    git clone https://github.com/EnvGen/cookiecutter-binning-project-demo.git
    cd cookiecutter-binning-project-demo

Then we use cookiecutter to initialize a binning project. Cookiecutter will use the github repo [cookiecutter-binning-project](https://github.com/EnvGen/cookiecutter-binning-project) as a template for your new binning project. Before creating the repo, cookiecutter will ask you for project specific settings. For this demo, it is safest to stick with the suggested default values. To accept the default values, just press return for each parameter cookiecutter asks you to set.

    cookiecutter https://github.com/EnvGen/cookiecutter-binning-project

Enter the newly created binning project directory
    
    cd binning-project

Create links to the test data

    ln -s ../contigs .
    ln -s ../reads .

Test if snakemake accepts your input files

    snakemake --dryrun concoct_inputtable_10K_all


Images
![alt-tag](images/inputtable_1sample.png)
