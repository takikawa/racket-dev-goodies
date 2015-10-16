racket-dev-goodies
==================

Scripts to make life easier for Racket developers.

  * `plt-alias` - bash function for setting PLT environment variables
  * `plt-bin` - bash script that redirects to the appropriate binary
  * `plt-make-links` - run this to install links to the `plt-bin` script
  * `plt-fresh-build` - bash script for building Racket from scratch
  * `git-prop` - adds the `prop` git command to read file properties

Originally developed by Eli Barzilay with contributions by
William Bowman, Andrew Kent, Vincent St-Amour, Stevie Strickland, Asumu Takikawa,
and Sam Tobin-Hochstadt.


Example setup steps:

1. ``` $ git clone [repo-url] racket-dev-goodies && cd racket-dev-goodies ```

2. copy the ``` plt ``` bash function from plt-alias.bash into your
.bashrc/.zshrc config file. You can set the ``` BASEDIR ``` variable
in ``` plt ``` if your Racket installs will all share a base directory
(this potentially allows you to specify much simpler paths when changing installs).
For this tutorial we'll pretend we set it to "/Users/dave/repos/plt/"

3. ``` $ cp plt-bin /usr/local/bin/plt-bin ```

4. ``` $ chmod +x plt-make-links.sh && ./plt-make-links.sh ```

Now you can use ``` plt ``` at the command line both to print the current
Racket install you're pointed at:

```
dave@HAL ~ $ plt
PLTHOME = 
```

and to point your shell at a new Racket install:

```
dave@HAL ~ $ plt head
dave@HAL ~ $ plt
PLTHOME = /Users/dave/repos/plt/head

```



---

Copyright © 2012-2015 Eli Barzilay

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
