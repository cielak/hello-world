(import cherrypy)

(setv template_file "index.html")

(defn get_template_content []
  (with [f (open template_file)] (.read f)))

(defclass HelloWorld []
  #@(cherrypy.expose (defn index [self]
    (get_template_content))))

(print "Hello, world!")

(cherrypy.quickstart (HelloWorld))
