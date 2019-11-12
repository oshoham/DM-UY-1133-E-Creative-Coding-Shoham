# Sketch 8: Mobile

Create a p5.js sketch that is intended to run on a mobile device and somehow takes advantage of the built-in capabilities of a smartphone.

Submit your sketch to [OpenProcessing](https://www.openprocessing.org/class/60310) under the `Mobile` collection. Label your sketch with your name in the format `Firstname_Mobile`.

In addition, please send me a DM on Slack with a link to the "Present" URL of your sketch, so that I can easily open it on a smartphone. You can find this URL by going to the File => Share dropdown menu in the p5.js web editor:

![](https://user-images.githubusercontent.com/2325893/68698744-9941c100-054f-11ea-85f7-ce68d2c3072d.png)

![](https://user-images.githubusercontent.com/2325893/68698776-aa8acd80-054f-11ea-8880-ddfb23c2be27.png)

## Meta Tag

You'll want to make sure that your sketch's HTML contains a `<meta>` tag that formats the page's viewport to display correctly on mobile devices:

```html
<html>
  <head>
    ...
    <meta name="viewport" content="user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1,width=device-width,height=device-height" />
  </head>
  ...
</html>
```

Alternately, you can create this `<meta>` tag in your sketch:

```javascript
function setup() {
  createMetaTag();
  createCanvas(window.innerWidth, window.innerHeight);
  ...
}

function createMetaTag() {
  let meta = createElement('meta');
  meta.attribute('name', 'viewport');
  meta.attribute('content', 'user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1,width=device-width,height=device-height');
  
  let head = select('head');
  meta.parent(head);
}
```

For more information on why this is necessary, see [this MDN article](https://developer.mozilla.org/en-US/docs/Mozilla/Mobile/Viewport_meta_tag).

## Resources

Tutorials:

- [Mobile examples from class on OpenProcessing](https://www.openprocessing.org/sketch/790331)

Remote Debugging:

- [iOS + Safari](https://appletoolbox.com/use-web-inspector-debug-mobile-safari/)
- [Android + Chrome](https://developers.google.com/web/tools/chrome-devtools/remote-debugging)

References:

- Touch
  - [touchStarted()](https://p5js.org/reference/#/p5/touchStarted)
  - [touchMoved()](https://p5js.org/reference/#/p5/touchMoved)
  - [touchEnded()](https://p5js.org/reference/#/p5/touchEnded)
  - [touches](https://p5js.org/reference/#/p5/touches)
- Rotation
  - [deviceOrientation](https://p5js.org/reference/#/p5/deviceOrientation)
  - [rotationX](https://p5js.org/reference/#/p5/rotationX)
  - [rotationY](https://p5js.org/reference/#/p5/rotationY)
  - [rotationZ](https://p5js.org/reference/#/p5/rotationZ)
  - [deviceTurned()](https://p5js.org/reference/#/p5/deviceTurned)
  - [turnAxis](https://p5js.org/reference/#/p5/turnAxis)
- Acceleration
  - [accelerationX](https://p5js.org/reference/#/p5/accelerationX)
  - [accelerationY](https://p5js.org/reference/#/p5/accelerationY)
  - [accelerationZ](https://p5js.org/reference/#/p5/accelerationZ)
  - [deviceShaken()](https://p5js.org/reference/#/p5/deviceShaken)
  - [setShakeThreshold](https://p5js.org/reference/#/p5/setShakeThreshold)
  - [deviceMoved()](https://p5js.org/reference/#/p5/deviceMoved)
  - [setMoveThreshold()](https://p5js.org/reference/#/p5/setMoveThreshold)
- Camera
  - [createCapture()](https://p5js.org/reference/#/p5/createCapture)
  - [MediaTrackConstraints (object that you can pass to createCapture(), specifically look at the facingMode property)](https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints)

## Inspiration

[![](https://user-images.githubusercontent.com/2325893/68699816-cb542280-0551-11ea-800d-16c407436385.png)](https://playkids.ch/)

Michael Frei and Mario von Rickenbach, _[KIDS](https://playkids.ch/)_, 2019.

[![](https://user-images.githubusercontent.com/2325893/68700119-64833900-0552-11ea-8bd3-d5b64aea6d42.png)](https://ncase.me/cos/)

Nicky Case, _[Coming Out Simulator](https://ncase.me/cos/)_, 2014.

[![](https://user-images.githubusercontent.com/2325893/68699308-c5aa0d00-0550-11ea-8e69-77b93a904510.png)](https://apps.apple.com/us/app/weird-type/id1352785248)

Zach Lieberman, _[Weird Type](https://apps.apple.com/us/app/weird-type/id1352785248)_, 2018.

[![](https://user-images.githubusercontent.com/2325893/68700551-1884c400-0553-11ea-8c2b-0efd5d4cd34f.png)](https://wiki.xxiivv.com/#verreciel)

Devine Lu Linvega and Rekka Bellum, _[Verreciel](https://wiki.xxiivv.com/#verreciel)_, 2017.

[![](https://user-images.githubusercontent.com/2325893/68701189-3a327b00-0554-11ea-9d5a-51dd516190f8.png)](https://lauren-mccarthy.com/pplkpr)

Lauren McCarthy and Kyle McDonald, _[pplkpr](https://lauren-mccarthy.com/pplkpr)_, 2015.

[![](https://user-images.githubusercontent.com/2325893/68699462-1f123c00-0551-11ea-9adf-119bef3ba33e.png)](http://apps.intervalstudios.com/thicket/)

Interval Studios, _[Thicket](http://apps.intervalstudios.com/thicket/)_, 2011.

[![](https://user-images.githubusercontent.com/2325893/68699578-5f71ba00-0551-11ea-91b7-c5a40c4a5d0c.png)](https://paperplanes.world/)

Active Theory, _[Paper Planes World](https://paperplanes.world/)_, 2016.
