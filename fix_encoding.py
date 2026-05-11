import os

folder = r'c:\Users\ritik\OneDrive\Desktop\bihar_tour'
files = ['destinations.html','culture.html','travelguide.html','contact.html','gallery.html']

for f in files:
    path = os.path.join(folder, f)
    with open(path, 'r', encoding='utf-8', errors='replace') as fh:
        text = fh.read()

    # Fix broken em-dash (â€") — multiple encodings of the same mojibake
    text = text.replace('\u00e2\u20ac\u201c', '-')
    text = text.replace('\u00e2\u20ac\u2022', '-')
    # Fix smart apostrophes
    text = text.replace('\u00e2\u20ac\u2018', "'")
    text = text.replace('\u00e2\u20ac\u2122', "'")
    # Fix smart double quotes
    text = text.replace('\u00e2\u20ac\u0153', '"')
    text = text.replace('\u00e2\u20ac\u009d', '"')
    # Fix literal backtick-n from PowerShell
    text = text.replace('css/style.css" />`n  <link', 'css/style.css" />\n  <link')

    with open(path, 'w', encoding='utf-8') as fh:
        fh.write(text)
    print('Fixed:', f)

print('All done.')
