# Justified Pictures Prototype

## Outline / Notes
- 4 pixels between each photo
- 1020 pixels total on Flickr on my screen
- use CSS to resize, but load based on original screen size first, then display that, then load other collages in case the user changes screen size

- Example short row: 1020 x 220
- Example tall row: 1020 x 330

### Variables

- ORDER_TOLERANCE describes how far you can look ahead to find a better fit for the current row.

### Another Idea
How about having no minimum height for the pictures? Just keep adding photos that have been resized to the max height to a row until it exceeds the max width.

## Possible Bugs

- one bad sized picture may get pushed all the way to the end
- fix with attr on picture to describe how far it has been displaced from its original ordering, then check that before pushing it any further
