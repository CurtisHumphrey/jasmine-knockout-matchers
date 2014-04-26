#this assumes that a ko is global
beforeEach ->
  if jasmine.addMatchers # 2.0 version
    jasmine.addMatchers
      toBeKoObservable: ->
        compare: (actual) ->
          pass: ko.isObservable actual
  else #1.3 version
    @addMatchers
      toBeKoObservable: ->
        return ko.isObservable @actual
  return