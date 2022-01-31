module Base16
  def self.from_int int
    raise ArgumentError, 'Value passed is not an Integer.' unless int.is_a?(Integer)
    hex = int.to_s(16)
    (hex.length % 2 == 0) ? hex : ('0' + hex)
  end # Base16.from_int

  def self.from_str str, include_leading_zeroes = true
    raise ArgumentError, 'Value passed is not a String.' unless str.is_a?(String)
    raise ArgumentError, 'Value passed is not binary.' unless str.encoding == Encoding::BINARY
    if bin.empty?
      return from_int(0) 
    else
      str.unpack('H*')[0]
    end # if
  end # Base16.from_str

  def self.to_int hex
    raise ArgumentError, 'Value passed is not a String.' unless hex.is_a?(String)
    hex.to_i(16)
  end # Base16.to_int

  def self.to_str str
    raise ArgumentError, 'Value passed is not a String.' unless hex.is_a?(String)
    [str].pack('H*')
  end # Base16.to_str
end # Base16