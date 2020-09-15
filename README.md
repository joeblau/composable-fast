# ComposableFast

A [Composable Architecture](https://github.com/pointfreeco/swift-composable-architecture) implementation of a fast.com speed test library.

## Install

Add this to your Package.swift

```swift
.package(url: "https://github.com/joeblau/composable-fast", from: "0.1.0"),
```

## Use

To understand how the composable architecture works, I higly recommend watching the four part series on [Point Free](https://www.pointfree.co/collections/composable-architecture/a-tour-of-the-composable-architecture/ep100-a-tour-of-the-composable-architecture-part-1)

### Setup

Create Fast Manager id

```swift
struct FastManagerId: Hashable {}
```

Add Fast Manager to AppEnvironment

```swift
struct AppEnvironment {
    ...
    let fastManager: FastManager
    ...
}
```

### Life-cycle

Create Fast Manager

```swift 
environment.fastManager.create(id: FastManagerId()).map(AppAction.fastManager)
```

Destroy Fast Manager

```swift
environment.fastManager.destroy(id: FastManagerId()).fireAndForget(),
``` 

### Operations

Start Speed Test

```swift
environment.fastManager.startTest(id: FastManagerId()).fireAndForget()
```

Stop Speed Test

```swift
environment.fastManager.startTest(id: FastManagerId()).fireAndForget()
```

## License

2020 Joe Blau, MIT