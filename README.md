# MovieStone

MovieStone is a set of tools for movie fans.

# Features:

* Fetch movie information.
* Add movie to Asana.
* More to come.

## Installation

1. Install the gem

    $ gem install movie_stone

2. Configure it (see example in Configuration section)

3. Enjoy.

## Usage

Help:
    $ moviestone help

Using movie title:

    $ moviestone fetch "Edge of Tomorrow"

Using IMDB identifier:

    $ moviestone fetch -i tt1631867

:P

## Example Asana task

![http://cl.ly/image/3y2S382N0L2Q]

## Configuration

Example `~/.movie_stone.rc.yml`:

```yaml
mail:
  delivery:
    address: 'smtp.gmail.com'
    port: 587,
    domain: 'anything'
    user_name: 'johndoe@gmail.com'
    authentication: 'plain'
    enable_starttls_auto: true
  settings:
    from_addr: 'johndoe@gmail.com'

asana:
  project_addr: 'x+someproject@mail.asana.com'
  from_addr: 'customized@gmail.com'
```

## TODO

* Testing (don't blame I'm porting my ruby scripts)
* RottenTomatoes
* Torr(esk)ent
* FileBot (assuming we do the above)

## Contributing

1. Fork it ( http://github.com/blackxored/movie_stone/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
