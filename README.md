# FALCON-integrate
This is a place to coordinate FALCON builds and tests.

The git-submodules here define a consistent set of revisions.

You may use any system you like for building, testing, and integration,
but we also provide some submodules which can help with that.

## submodules
In case you are unfamiliar with [**git-submodules**](http://www.git-scm.com/book/en/v2/Git-Tools-Submodules), they are quite easy to use from the command-line:
```sh
git submodule update --init
```
If that fails, you can update your **git**, or try this:
```sh
git submodule init
git submodule update
```
which is *almost* the same thing.

## Set-up
You have a few choices:

1. PYTHONUSERBASE
2. virtualenv
3. Standard Python installation

For more details, see the [wiki](https://github.com/PacificBiosciences/FALCON-integrate/wiki).

DISCLAIMER
----------
THIS WEBSITE AND CONTENT AND ALL SITE-RELATED SERVICES, INCLUDING ANY DATA, ARE PROVIDED "AS IS," WITH ALL FAULTS, WITH NO REPRESENTATIONS OR WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, ANY WARRANTIES OF MERCHANTABILITY, SATISFACTORY QUALITY, NON-INFRINGEMENT OR FITNESS FOR A PARTICULAR PURPOSE. YOU ASSUME TOTAL RESPONSIBILITY AND RISK FOR YOUR USE OF THIS SITE, ALL SITE-RELATED SERVICES, AND ANY THIRD PARTY WEBSITES OR APPLICATIONS. NO ORAL OR WRITTEN INFORMATION OR ADVICE SHALL CREATE A WARRANTY OF ANY KIND. ANY REFERENCES TO SPECIFIC PRODUCTS OR SERVICES ON THE WEBSITES DO NOT CONSTITUTE OR IMPLY A RECOMMENDATION OR ENDORSEMENT BY PACIFIC BIOSCIENCES.
