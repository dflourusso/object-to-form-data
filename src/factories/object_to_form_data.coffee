class ObjectToFormData extends Factory
  constructor: ->
    goDeep = (property) ->
      return no unless typeof property is 'object'
      !(property instanceof File || property instanceof Blob || property instanceof Date)

    # Transforma objeto JSON em objeto FormData
    objectToFormData = (obj, form, namespace) ->
      fd = form or new FormData()
      for property of obj
        if obj.hasOwnProperty property
          if namespace
            formKey = "#{namespace}[#{property}]"
          else
            formKey = property
          if gooDeep obj[property]
            objectToFormData obj[property], fd, formKey
          else
            fd.append formKey, obj[property]
      fd

    return (object) ->
      objectToFormData object
