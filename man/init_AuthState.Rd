% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AuthState-class.R
\name{init_AuthState}
\alias{init_AuthState}
\title{Create an AuthState}
\usage{
init_AuthState(
  package = NA_character_,
  app = NULL,
  api_key = NULL,
  auth_active = TRUE,
  cred = NULL
)
}
\arguments{
\item{package}{Package name, an optional string. The associated package will
generally by implied by the namespace within which the \code{AuthState} is
defined. But it's possible to record the package name explicitly and seems
like a good practice.}

\item{app}{A Google OAuth client, preferably constructed via
\code{\link[=gargle_oauth_client_from_json]{gargle_oauth_client_from_json()}}, which returns an instance of
\code{gargle_oauth_client}. For backwards compatibility, for a limited time,
gargle will still accept an "OAuth app" created with \code{\link[httr:oauth_app]{httr::oauth_app()}}.}

\item{api_key}{Optional. API key (a string). Some APIs accept unauthorized,
"token-free" requests for public resources, but only if the request
includes an API key.}

\item{auth_active}{Logical. \code{TRUE} means requests should include a token (and
probably not an API key). \code{FALSE} means requests should include an API key
(and probably not a token).}

\item{cred}{Credentials. Typically populated indirectly via \code{\link[=token_fetch]{token_fetch()}}.}
}
\value{
An object of class \link{AuthState}.
}
\description{
Constructor function for objects of class \link{AuthState}.
}
\examples{
my_client <- gargle_oauth_client(
  id = "some_long_client_id",
  secret = "ssshhhhh_its_a_secret",
  name = "my-nifty-oauth-client"
)

init_AuthState(
  package = "my_package",
  app = my_client,
  api_key = "api_key_api_key_api_key",
)
}
