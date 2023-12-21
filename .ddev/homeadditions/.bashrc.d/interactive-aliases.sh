PROJECT_DIR=/var/www/html
PACKAGES_DIR=$PROJECT_DIR/packages

for REPO in $(cd /var/www/html && composer show netzberufler/interactive-* 2> /dev/null | awk '{print $1};'); do
    alias "goto-${REPO:25}"="pushd ${PACKAGES_DIR}/${REPO:13}"
done

alias goto-root="pushd /var/www/html"
