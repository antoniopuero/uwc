module.exports =
# 'env': 'production' || process.env.NODE_ENV || 'development'
  'env': process.env.NODE_ENV || 'development'
  'dbUri': process.env.MONGOHQ_URL || 'mongodb://localhost/uwcV'
#'dbUri': process.env.MONGOHQ_URL || 'mongodb://localhost/uwcV'
  'apiUrl': '/api'