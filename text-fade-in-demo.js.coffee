$(document).ready ->

  assert = (condition) -> throw 'Assertion failed' unless condition

  contents = """

  #################################################################
  #################################################################
  #################################################################
  #################################################################


  """

  # assert contents == $('#sample').text()

  new window.TextFadeIn( $('#demo1'),           'milliseconds': 1  ).run()
  new window.TextFadeIn( $('#demo2'), contents, 'milliseconds': 1  ).run()
  new window.TextFadeIn( $('#demo3'), contents, 'milliseconds': 10 ).run()
  new window.TextFadeIn( $('#demo4'), contents, 'threads':      3  ).run()
  new window.TextFadeIn( $('#demo5'), contents,
    'milliseconds': 10 , 
    'threads':      3  ).run()

  # assert contents == $('#sample').text()
