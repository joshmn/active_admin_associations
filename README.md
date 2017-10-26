# ActiveAdminAssociable

A dropdown menu for your ActiveRecord relations between ActiveAdmin Resources.

## Notes

Only builds properly for `has_many` associations right now because I assume you're already direcly linking to the appropriate resource for `belongs_to` with Arbre.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activeadmin_associable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activeadmin_associable

## Usage

This is pretty opinionated right now.

Open an ActiveAdmin Resource (like admin/user.rb) insert `has_many :orders` inside the `#register` block, and insert `association_items`.

This will create an `action_item` for the show/edit actions that renders a dropdown menu with a link to the Orders associated with the current resource ID. 

This does not do anything else. It does not mean to do anything else. It doesn't hit ActiveRecord or check to see that your `Order` Resource actually exists inside ActiveAdmin. It simply builds a link to the assumed Ransack query URL.

### Options

Use `as` to change the label. Defaults to `class.model_name.plural.titleize`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/joshmn/activeadmin_associable.

