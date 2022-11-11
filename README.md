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