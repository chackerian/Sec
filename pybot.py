import pxssh

class Client:

	def __init__(self, host, user, password)
		self.host = host
		self.user = user
		self.passord = password
		self.session = self.connect()

	def connect(self)
		try: 
			s = pxssh.pxssh()
			s.login(self.host, self.user, self.password)
			return s
		except Exception, e:
			print e;
			print "**Error Connecting**"

'''
Not complete yet, still need to complete ~2 more functions
Hacking with Python #8, Basic SSH BotNet
'''

