#! /bin/bash

echo "Clean no storyboard";
for i in {1..5}; do 
xctool --scheme storyboardfree clean build | tail -n2 | head -n1 | grep -o '[0-9]\+';
done

echo "Cache no storyboard";
for i in {1..5}; do 
xctool --scheme storyboardfree build | tail -n2 | head -n1 | grep -o '[0-9]\+';
done

echo "Clean with storyboard";
for i in {1..5}; do 
xctool --scheme benchboard clean build | tail -n2 | head -n1 | grep -o '[0-9]\+';
done

echo "Cache storyboard";
for i in {1..5}; do 
xctool --scheme benchboard build | tail -n2 | head -n1 | grep -o '[0-9]\+';
done
