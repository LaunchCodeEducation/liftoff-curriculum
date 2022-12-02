
git submodule add https://github.com/LaunchCode-Hugo-Submodules/hugo-theme-relearn themes/hugo-theme-relearn

echo 'theme = "hugo-theme-relearn"' >> config.toml

rm -rf layouts

git submodule add https://github.com/LaunchCode-Hugo-Submodules/layouts

rm -rf static

git submodule add https://github.com/LaunchCode-Hugo-Submodules/static

rm -rf archetypes

git submodule add https://github.com/LaunchCode-Hugo-Submodules/archetypes

echo -e '\n[params]' >> config.toml

echo -e '  themeVariant = ["lc-light", "lc-dark-blue", "lc-dark-blue-two"]' >> config.toml
