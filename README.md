# nat-alipay

- [Documentation](http://natjs.com/#/reference/alipay)
- [Github](https://github.com/natjs/weex-nat-alipay)

## Installation
```
weexpack plugin add nat-alipay
```

```
npm i natjs
```

## Usage

Use in weex project (`.vue`/`.we`)

```html
<script>
import Nat from 'natjs'

// pay
Nat.alipay.pay({
    info: {
        // alipay pay info object
    },
    scheme: 'your app scheme'
})

// auth
Nat.alipay.auth({
    info: {
        // alipay auth info object
    },
    scheme: 'your app scheme'
})

</script>
```

See the Nat [Documentation](http://natjs.com/) for more details.
