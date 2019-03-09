# Update Count
A test watch face

## Array.add() missing from epix simulator

Run

    monkeyc -f monkey.jungle -d epix  -y ~/connectiq/developer_key.der -o UpdateCount.prg
    connectiq
    monkeydo UpdateCount.prg epix

Result:

    Could not find symbol 'add'
    Symbol Not Found Error
      in onUpdate (.../UpdateCount/source/UpdateCountView.mc:28)

## Inverted custom font in fr920xt simulator
Run

    monkeyc -f monkey.jungle -d fr920xt  -y ~/connectiq/developer_key.der -o UpdateCount.prg
    connectiq
    monkeydo UpdateCount.prg fr920xt

Result:
The characters on the first and second line on the simulator screen are upside down.
![Evidence](fr920xt-screenshot.png?raw=true "Screenshot")


## onUpdate called multiple times
Run

    monkeyc -f monkey.jungle -d fenix5  -y ~/connectiq/developer_key.der -o UpdateCount.prg
    connectiq
    monkeydo UpdateCount.prg fenix5

Wait for a minute and watch the counter being updated 20 times. This is a [known issue](https://forums.garmin.com/forum/developers/connect-iq/1437584-bug-in-connect-iq-3-0-6-sdk-but-same-in-3-07).
