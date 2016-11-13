#!/usr/bin/env ruby

class Magic

  def base64_encode(word); Base64.encode64(word);end
  def sha512_digest(word); Digest::SHA512.hexdigest word; end
  def sha384_digest(word); Digest::SHA384.hexdigest word; end
  def sha2_digest(word); Digest::SHA2.hexdigest word; end
  def sha1_digest(word); Digest::SHA1.hexdigest word; end

  def magic(word, length)
    word = base64_encode(sha512_digest(sha384_digest(sha2_digest(sha1_digest(word))))).gsub("\n","") + base64_encode(sha512_digest(sha384_digest(sha1_digest(sha2_digest(word))))).gsub("\n","")
    word.gsub!("=","")
    word = word[0, (length/2)-1] + word[-(length/2), length]
  end

end
