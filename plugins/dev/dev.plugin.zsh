# Runs DID(it) drf_rubocop_rails rubo command
alias rubo='rubocop && open rubocop/style-issues.html'

# Runs the outdated gem in the project
# Assumes bundle is installed.
alias outdated='bundle outdated --parseable'

# Audit bundle file
# Install with: gem install bundler-audit
alias audit='bundler-audit _0.9.0.1_ --update --ignore CVE-2015-9284'

# Install with: gem install brakeman
alias brake='brakeman -o brakeman-output.text --no-progress'
