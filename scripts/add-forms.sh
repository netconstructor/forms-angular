#!/bin/bash
BASE_DIR=`dirname $0`

if [ $1 ]; then
	if [ -d $BASE_DIR/../../$1 ]; then

		# Upgrade these files
	    cp $BASE_DIR/../app/js/controllers/base.js $BASE_DIR/../../$1/app/js/controllers/base.js
	    cp $BASE_DIR/../app/js/controllers/model.js $BASE_DIR/../../$1/app/js/controllers/model.js
	    cp $BASE_DIR/../app/js/directives/form.js $BASE_DIR/../../$1/app/js/directives/form.js
	    cp $BASE_DIR/../app/partials/base-edit.html $BASE_DIR/../../$1/app/partials/base-edit.html
	    cp $BASE_DIR/../app/partials/base-list.html $BASE_DIR/../../$1/app/partials/base-list.html
	    cp $BASE_DIR/../server/lib/data_form.js $BASE_DIR/../../$1/server/lib/data_form.js

		clear
	    echo ""
	    echo Set up the main Angular.js file based on the following:
	    echo ""
	    cat $BASE_DIR/../app/js/app.js
	    echo ""
	else
        echo ""
  	    echo No such project as
	    echo `$BASE_DIR/../../$1`
	    echo ""
    fi
else
	echo ""
    echo Usage: add-forms proj_dir where proj_dir is the target project root folder
	echo ""
fi
