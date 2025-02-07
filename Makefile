SITE_NAME?= wwww.midtown.ai
SOCIAL_CACHE_DIR=.cache/plugins/social

MKDOCS_CONFIG_FILE?= mkdocs.yml

#
# Individual plugins are enabled by default
# To enable one, just comment out the environment variable
# To disable one, uncomment the environment variable
#
# MKDOCS_ENVIRONMENT+= BLOG_PLUGIN_ENABLED=False
MKDOCS_ENVIRONMENT+= GITCOMMITTERS_PLUGIN_ENABLED=False
MKDOCS_ENVIRONMENT+= GITREVISIONDATE_PLUGIN_ENABLED=False
MKDOCS_ENVIRONMENT+= MERMAID2_PLUGIN_ENABLED=False# Always enabled?
# MKDOCS_ENVIRONMENT+= MINIFY_PLUGIN_ENABLED=False
MKDOCS_ENVIRONMENT+= RSS_PLUGIN_ENABLED=False
# MKDOCS_ENVIRONMENT+= PDF_HOOK_ENABLED=False
MKDOCS_ENVIRONMENT+= SOCIAL_PLUGIN_ENABLED=False
# MKDOCS_ENVIRONMENT+= YOUTUBE_HOOK_ENABLED=False

# https://github.com/settings/tokens/new (rep:status only)
MKDOCS_ENVIRONMENT+= GITCOMMITTERS_APIKEY=$(GITCOMMITTERS_APIKEY)

MKDOCS_ENVIRONMENT+= GITCOMMITTERS_CACHE_DIR=.cache/plugins/git-committers
MKDOCS_ENVIRONMENT+= RSS_CACHE_DIR=.cache/plugins/rss
MKDOCS_ENVIRONMENT+= SOCIAL_CACHE_DIR=$(SOCIAL_CACHE_DIR)

MKDOCS_ENVIRONMENT+= PYTHONPATH=.

MKDOCS_BIN?= mkdocs
MKDOCS?= $(MKDOCS_ENVIRONMENT) $(MKDOCS_BIN) $(__MKDOCS_OPTIONS)

__CONFIG_FILE?= $(if $(MKDOCS_CONFIG_FILE),--config-file $(MKDOCS_CONFIG_FILE))
# Dirty reload accelerate development by processing only the currently browsed page
# <!> This prevents the blog pages to update to show newly created blog posts!
__DIRTYRELOAD?= --dirtyreload

# Run the builtin development server.
serve:
	$(MKDOCS) serve $(__CONFIG_FILE) $(__DIRTYRELOAD)

# Build the mkdocs documentation
build_site:
	$(MKDOCS) build $(__CONFIG_FILE)

distclean: delete_site delete_cache
delete_cache:
	rm -rf hooks/__pycache__

# Delete site
delete_site:
	rm -rf ./site

# Create a new MkDocs project.
new_project:
	$(MKDOCS) new .

# Deploy your documentation to GitHub Pages.
deploy_site: build_pages
	$(MKDOCS) gh-deploy --force

# Show required PyPI packages inferred from plugins in mkdocs.yml.
check_deps:
	$(MKDOCS) get-deps

# Install dependencies
install_deps:
	pip install -r requirements.txt

dig_site:
	dig $(SITE_NAME) +nostats +nocomments +nocmd

brew_me:
	brew install cairo freetype libffi libjpeg libpng zlib
	brew install pngquant

ls_cards:
	mkdir -v $(SOCIAL_CACHE_DIR)
	ls -al $(SOCIAL_CACHE_DIR)
