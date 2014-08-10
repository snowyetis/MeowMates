S3DirectUpload.config do |c|
    c.access_key_id = "AKIAJQFFJPCGZSOIQWGQ"
    c.secret_access_key = "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"
    c.bucket = "purrrbucket"
    c.region = "Oregon"
    c.url = "https://#{c.bucket}.s3.amazonaws.com/"
end