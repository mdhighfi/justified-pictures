# Justified Pictures Prototype

## Outline / Notes
- 4 pixels between each photo
- 1020 pixels total on Flickr on my screen
- use CSS to resize, but load based on original screen size first, then display that, then load other collages in case the user changes screen size

- Example short row: 1020 x 220
- Example tall row: 1020 x 330

### Variables

- ORDER_TOLERANCE describes how many pictures you can grab from beyond what fits naturally into one row, to try rearranging them to see if they fit better in another row

## Possible Bugs

- one bad sized picture may get pushed all the way to the end
- fix with attr on picture to describe how far it has been displaced from its original ordering, then check that before pushing it any further
