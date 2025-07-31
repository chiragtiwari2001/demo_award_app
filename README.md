# Single Page Rails Application

A description of your application and its purpose goes here.

## Technologies

* Ruby 3.2.2
* Rails 7.1
* PostgreSQL
* Bootstrap

## System Requirements

* Ruby 3.2.2
* Rails 7.1
* PostgreSQL
* Node.js and Yarn (for Rails assets)
* Bundler

## Installation

Choose the installation instructions for your operating system:

### Windows Installation

1. **Install Ruby 3.2.2**
   ```bash
   # Using RubyInstaller (recommended)
   # Download from https://rubyinstaller.org/downloads/
   # Choose Ruby+Devkit 3.2.2
   ```
   After installation, verify with:
   ```bash
   ruby -v
   ```

2. **Install PostgreSQL**
   ```bash
   # Download the installer from https://www.postgresql.org/download/windows/
   # Run the installer and follow the prompts
   # Remember your password for the postgres user
   ```
   Add PostgreSQL bin directory to your PATH if not done during installation.

3. **Install Node.js and Yarn**
   ```bash
   # Download Node.js from https://nodejs.org/ (LTS version recommended)
   # Run the installer
   ```
   Then install Yarn:
   ```bash
   npm install --global yarn
   ```

4. **Install Rails 7.1**
   ```bash
   gem install rails -v 7.1
   ```
   Verify installation:
   ```bash
   rails -v
   ```

5. **Install Bundler**
   ```bash
   gem install bundler
   ```

6. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

7. **Install dependencies**
   ```bash
   bundle install
   yarn install
   ```

8. **Database setup**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed # if there are seed data
   ```

9. **Start the server**
   ```bash
   rails server
   ```

10. Visit `http://localhost:3000` in your browser

### Ubuntu Installation

1. **Install Ruby dependencies**
   ```bash
   sudo apt-get update
   sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev
   ```

2. **Install Ruby 3.2.2 using rbenv**
   ```bash
   # Install rbenv
   git clone https://github.com/rbenv/rbenv.git ~/.rbenv
   echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
   echo 'eval "$(rbenv init -)"' >> ~/.bashrc
   exec $SHELL

   # Install ruby-build
   git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
   echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
   exec $SHELL

   # Install Ruby
   rbenv install 3.2.2
   rbenv global 3.2.2
   ```
   Verify installation:
   ```bash
   ruby -v
   ```

3. **Install PostgreSQL**
   ```bash
   sudo apt-get install postgresql postgresql-contrib libpq-dev
   ```
   Set up PostgreSQL user:
   ```bash
   sudo -u postgres createuser -s $(whoami) -P
   # Enter a password when prompted
   ```

4. **Install Node.js and Yarn**
   ```bash
   # Add Node.js repository
   curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
   sudo apt-get install -y nodejs

   # Install Yarn
   curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
   echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
   sudo apt-get update && sudo apt-get install yarn
   ```

5. **Install Rails 7.1**
   ```bash
   gem install rails -v 7.1
   ```
   Verify installation:
   ```bash
   rails -v
   ```

6. **Install Bundler**
   ```bash
   gem install bundler
   ```

7. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

8. **Install dependencies**
   ```bash
   bundle install
   yarn install
   ```

9. **Database setup**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed # if there are seed data
   ```

10. **Start the server**
    ```bash
    rails server
    ```

11. Visit `http://localhost:3000` in your browser

### Mac Installation

1. **Install Homebrew (if not already installed)**
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. **Install Ruby 3.2.2 using rbenv**
   ```bash
   # Install rbenv
   brew install rbenv
   rbenv init
   echo 'eval "$(rbenv init -)"' >> ~/.zshrc  # or ~/.bash_profile for Bash
   source ~/.zshrc  # or source ~/.bash_profile for Bash

   # Install Ruby
   rbenv install 3.2.2
   rbenv global 3.2.2
   ```
   Verify installation:
   ```bash
   ruby -v
   ```

3. **Install PostgreSQL**
   ```bash
   brew install postgresql
   brew services start postgresql
   ```

4. **Install Node.js and Yarn**
   ```bash
   brew install node
   brew install yarn
   ```

5. **Install Rails 7.1**
   ```bash
   gem install rails -v 7.1
   ```
   Verify installation:
   ```bash
   rails -v
   ```

6. **Install Bundler**
   ```bash
   gem install bundler
   ```

7. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

8. **Install dependencies**
   ```bash
   bundle install
   yarn install
   ```

9. **Database setup**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed # if there are seed data
   ```

10. **Start the server**
    ```bash
    rails server
    ```

11. Visit `http://localhost:3000` in your browser
