$bytes = [System.IO.File]::ReadAllBytes('c:\Users\Won\Q1\favicon.jpg')
$base64 = [System.Convert]::ToBase64String($bytes)
$svg = "<svg viewBox=`"0 0 512 512`" xmlns=`"http://www.w3.org/2000/svg`">
  <defs>
    <clipPath id=`"round`">
      <rect x=`"0`" y=`"0`" width=`"512`" height=`"512`" rx=`"120`" ry=`"120`" />
    </clipPath>
  </defs>
  <image href=`"data:image/jpeg;base64,$base64`" width=`"512`" height=`"512`" clip-path=`"url(#round)`" preserveAspectRatio=`"xMidYMid slice`" />
</svg>"
[System.IO.File]::WriteAllText('c:\Users\Won\Q1\favicon.svg', $svg)
