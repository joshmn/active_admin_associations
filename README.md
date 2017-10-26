# ActiveAdminAssociations

A dropdown menu for your ActiveRecord relations between ActiveAdmin Resources.

## Notes

Only builds properly for `has_many` associations right now because I assume you're already direcly linking to the appropriate resource for `belongs_to` with Arbre.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'active_admin_associations'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_admin_associations

## Usage

This is pretty opinionated right now.

In a resource file in an ActiveAdmin namespace, open `user.rb` and add `has_many :orders` inside the `register` block. This will create an `action_item` for the show/edit actions that renders a dropdown menu with a link to the Orders associated with the current resource ID. 

This does not do anything else. It does not mean to do anything else. It doesn't hit ActiveRecord or check to see that your `Order` resource actually exists inside ActiveAdmin. It simply builds a link to the assumed Ransack query URL.

### Options

Use `as` to change the label. Defaults to `class.model_name.plural`


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/joshmn/active_admin_associations.

