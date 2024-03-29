## Type Text

![showcase](https://github.com/Descrout/type_text/blob/main/showcase.gif)

A simple flutter widget that writes your texts like a typewriter.

```dart
Text(
    """Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
    Sed at scelerisque dui, ut tristique neque. 
    Sed feugiat quis lacus non venenatis. 
    Sed ultricies tellus nunc.""",
    style: TextStyle(fontSize: 36),
)
```

Just change your ``Text`` widget into a ``TypeText`` widget and provide a ``Duration`` field.

```dart
TypeText(
    """Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
    Sed at scelerisque dui, ut tristique neque. 
    Sed feugiat quis lacus non venenatis. 
    Sed ultricies tellus nunc.""",
    duration: const Duration(seconds: 5),
    style: TextStyle(fontSize: 36),
    onType: (progress) {
        
    },
    //You can use all the other Text widget fields
)
```

Or you can use it with a RichText.

```dart
TypeRichText(
    text: const TextSpan(
    text: 'Hello ',
    style: TextStyle(
        color: Colors.black,
    ),
    children: <TextSpan>[
        TextSpan(
        text: 'bold',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.red),
        ),
        TextSpan(
        text: ' world!',
        style: TextStyle(color: Colors.blue),
        ),
    ],
    ),
    duration: const Duration(seconds: 1),
    onType: (progress) {
    debugPrint("Rich text %${(progress * 100).toStringAsFixed(0)} completed.");
    },
)
```