% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/buckets.R
\name{gcs_get_bucket}
\alias{gcs_get_bucket}
\title{Get bucket info}
\usage{
gcs_get_bucket(
  bucket = gcs_get_global_bucket(),
  ifMetagenerationMatch = NULL,
  ifMetagenerationNotMatch = NULL,
  projection = c("noAcl", "full")
)
}
\arguments{
\item{bucket}{Name of a bucket, or a bucket object returned by \link{gcs_create_bucket}}

\item{ifMetagenerationMatch}{Return only if metageneration matches}

\item{ifMetagenerationNotMatch}{Return only if metageneration does not match}

\item{projection}{Properties to return. Default noAcl omits acl properties}
}
\value{
A bucket resource object
}
\description{
Meta data about the bucket
}
\examples{

\dontrun{

buckets <- gcs_list_buckets("your-project")

## use the name of the bucket to get more meta data
bucket_meta <- gcs_get_bucket(buckets$name[[1]])

}

}
\seealso{
Other bucket functions: 
\code{\link{gcs_create_bucket}()},
\code{\link{gcs_create_lifecycle}()},
\code{\link{gcs_delete_bucket}()},
\code{\link{gcs_get_global_bucket}()},
\code{\link{gcs_global_bucket}()},
\code{\link{gcs_list_buckets}()}
}
\concept{bucket functions}
