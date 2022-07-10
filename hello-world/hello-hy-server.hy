(import cherrypy)

(defclass HelloWorld []
  #@(cherrypy.expose (defn index [self]
      "Hello World!")))

(cherrypy.quickstart (HelloWorld))

