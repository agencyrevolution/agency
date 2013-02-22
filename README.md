# agency

Our fork of [37signals/sub][sub]. See the [sub][sub] repo on how to contribute.

## How do I install agency?

Here's how you can install agency in your `$HOME` directory:

    cd
    git clone https://github.com/agencyrevolution/agency.git .agency

For bash users:

    echo 'eval "$($HOME/.agency/bin/agency init -)"' >> ~/.bash_profile
    exec bash

For zsh users:

    echo 'eval "$($HOME/.agency/bin/agency init -)"' >> ~/.zshenv
    source ~/.zshenv

You could also install agency in a different directory, say `/usr/local`. This is just one way you could provide a way to install agency.

## Setup Connect Logins

* Open `agency/libexec/agency-connect`
* Fill out or customize the login variables
* Save and close `agency-connect`
* Test by running `$ agency connect`

## License

MIT. See [LICENSE](LICENSE).

[sub]: https://github.com/37signals/sub
