# ObjectToFormData

Angularjs Factory to convert a JSON object into a FormData object

---
### Installation

    $ bower install object-to-form-data --save

### Usage

Include the plugin in your application:

```html
<script src="../dist/object-to-form-data.js"></script>`
```

And then include the *AngularJs* module:

```javascript
angular.module('app', ['object-to-form-data']);
```

### Using the Factory

#### `ObjectToFormData`

```javascript
angular.module('app').controller('ctrl', function(ObjectToFormData) {
  var user = {email: 'foo@foo.foo', name: 'foo', password: '***', image: new File()};
  user_as_form_data = ObjectToFormData(user);
});
```

### Author

[Daniel Fernando Lourusso](http://dflourusso.com.br)
