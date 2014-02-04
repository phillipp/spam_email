require 'ruby-progressbar'

module SpamEmail
  class ListCompiler
    # this method takes the list from data/provider_list.txt, resolves all mx
    # entries and builds the blacklist-array
    def self.compile_list
      progress_bar = ProgressBar.create(total: File.size("data/provider_list.txt"), format: '%e |%b>>%i| %p%% %t')

      resolving = []
      file = File.open("data/provider_list.txt")
      file.each_line do |domain|
        domain.strip!
        domain.downcase!
        next if domain.empty?

        mx = []
        Resolv::DNS.open do |dns|
          mx.concat dns.getresources(domain, Resolv::DNS::Resource::IN::MX)
        end

        if mx.any?
          resolving << domain
        end
        progress_bar.progress = file.tell
      end

      hash_elements = resolving.collect { |v| "\"#{v}\" => true" }

      dest_file = File.open("lib/spam_email/blacklist.rb", "w")
      dest_file.write("module SpamEmail\n  BLACKLIST = { ")
      dest_file.write(hash_elements.join(",\n      "))
      dest_file.write(" }\nend")
    end
  end
end
