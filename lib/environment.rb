## listing dependencies for project
require "httparty"
require "json"
require "pry"
require "dotenv"
Dotenv.load


require_relative "./cookbook/cli"
require_relative "./cookbook/api"
require_relative "./cookbook/recipe"