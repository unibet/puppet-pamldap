require 'spec_helper'

describe 'pamldap' do
  context 'with defaults for all parameters' do
    it { should compile.with_all_deps }
    %w(/etc/nsswitch.conf /etc/krb5.conf /etc/ldap.conf).each do |file|
      it { should contain_file(file) }
    end
  end
end
