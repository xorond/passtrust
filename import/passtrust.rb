#!/usr/bin/env ruby
class Passtrust

  def initialize
    @options_length = $options.length
    @options_timeout = $options.timeout
    @options_clipboard = $options.clipboard
    @options_random = $options.random
    @options_security = $options.security
    @options_verify = $options.verify

    @colorizer = ColorText.new
    @magic = Magic.new

    if @options_length > 64
      puts @colorizer.red("#{@options_length} can't be used")
      puts @colorizer.red("Max length is 64")
      @options_length = 64
    elsif @options_length < 16
      puts @colorizer.red("#{@options_length} can't be used")
      puts @colorizer.red("Min length is 16")
      @options_length = 16
    end

    puts @colorizer.green("Password will be #{@options_length} characters long")

    # disable clipboard if gem is not loaded
    @options_clipboard = false if not defined?(Clipboard)

    if @options_random
      puts "Your random passphrase is: "
      print_password(@magic.magic((p SecureRandom.hex(16)), @options_length))
      exit 130
    end

    if @options_security
      puts @colorizer.green("Security testing is activated")
    end

    if @options_verify
      puts @colorizer.green("Verification is activated")
    end
  end

  def get_passphrase(prompt="Enter passphrase: ")
    @passphrase = ask(prompt) { |q| q.echo = nil }
    if @options_verify
      verify_passphrase
    elsif @options_security
      check_security(@passphrase)
    end
  end

  def verify_passphrase
    @verify = ask("Verify passphrase: ") { |q| q.echo = nil }
    if !(@passphrase == @verify)
      puts @colorizer.red("Passphrases did not match")
      exit 130
    else
      puts @colorizer.green("Passphrase verified")
    end
  end

  def check_security(word)
    puts @colorizer.blue("Evaluating password security")
    score = Zxcvbn.test(word).score
    puts case score
      when 0, 1, 2; @colorizer.red("Score: #{score}/4")
      when 3, 4; @colorizer.green("Score: #{score}/4")
    end

    if score < 3
      puts @colorizer.red("Password is too weak. Choose a better one")
      exit 130
    end
  end

  def cls; Gem.win_platform? ? (system 'cls') : (system 'reset'); end

  def print_password(word, timeout = @options_timeout)
    if not @options_clipboard
      puts "Your generated password is: #{@colorizer.green(word)}"
    end

    if @options_clipboard
      Clipboard.copy word
      puts @colorizer.blue("Password has been copied to your clipboard.")
      puts @colorizer.blue("It will be replaced with a fake one after timer hits zero.")
    end

    t = Time.new(0)
    timeout.downto(0) do |seconds|
      print "\rThe screen will clear in #{(t + seconds).strftime('%M:%S')} seconds"
      sleep 1
    end

    if @options_clipboard
      3.times { Clipboard.copy @magic.magic(SecureRandom.hex(16), @options_length) }
    end
    cls
  end

  def start
    get_passphrase
    print_password(@magic.magic((@passphrase), @options_length))
  end

end

