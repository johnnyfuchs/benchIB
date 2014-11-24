#Storyboards vs Code - the little differences[^]

##Introduction

The old philosophy of "develop how you want to develop" holds true with the storyboard vs code debate. You *can* successfully develop large iOS applications using storyboards, C++, ruby, javascript, C#, Lua and swift. Some approaches will be much easier than others. This post is for those asking the question "what would be different if I had used storyboards/code vs code/storyboards."

If anyone has created an 'in the wild' app using both approaches, I'd love hear your thoughts!

##Method

I  created two contrived apps to compare some of the development costs of the two approaches. For each approach, I measure compile time, execution time, and memory usage.

To artificially bloat the applications, I created 26 view controllers A-Z. Each with 12 subviews, and each connected to the next via a push transition. On `viewDidAppear`, the the next transition is triggered. The intention is to spend as much of application time as is possible loading and compiling `UIViewController`s in a medium sized application. Read: not real world.

##WIP
....




