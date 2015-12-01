directory node['liquidprompt']['install_dir'] do
  recursive true
end

git node['liquidprompt']['install_dir'] do
  repository 'git://github.com/nojhan/liquidprompt.git'
end

# This ruby block will add liquidprompt installation line to all users using
# bash and having .bashrc in home directory.
ruby_block 'Add liquidprompt to users ~/.bashrc' do
  block do
    File.readlines('/etc/passwd').each do |user|
      use_bash = %r{:/bin/bash$}
      if user =~ use_bash
        bashrc = user.split(':')[5] + '/.bashrc'
        if File.exist?(bashrc)
          file = Chef::Util::FileEdit.new(bashrc)
          file.insert_line_if_no_match(%r{^\[\[ \$- = \*i\* \]\] && source #{node['liquidprompt']['install_dir']}/liquidprompt$}, "[[ $- = *i* ]] && source #{node['liquidprompt']['install_dir']}/liquidprompt")
          file.write_file
        end
      end
    end
  end
end
