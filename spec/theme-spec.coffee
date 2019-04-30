describe "Tomow1 Dark UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('tomow1-dark-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('tomow1-dark-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('tomow1-dark-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the layout mode to be set via config", ->
    expect(document.documentElement.getAttribute('theme-tomow1-dark-ui-layoutmode')).toBe 'auto'

    atom.config.set('tomow1-dark-ui.layoutMode', 'Spacious')
    expect(document.documentElement.getAttribute('theme-tomow1-dark-ui-layoutmode')).toBe 'spacious'
