@ECHO OFF
attrib -h *.gif
PICEM /K /W:100	/V:m *.gif
attrib + h *.gif
