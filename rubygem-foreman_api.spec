%global gem_name foreman_api

%if 0%{?rhel} == 6 || 0%{?fedora} < 17
%define rubyabi 1.8
%else
%define rubyabi 1.9.1
%endif

%if 0%{?rhel} == 6
%global gem_dir %(ruby -rubygems -e 'puts Gem::dir' 2>/dev/null)
%global gem_docdir %{gem_dir}/doc/%{gem_name}-%{version}
%global gem_cache %{gem_dir}/cache/%{gem_name}-%{version}.gem
%global gem_spec %{gem_dir}/specifications/%{gem_name}-%{version}.gemspec
%global gem_instdir %{gem_dir}/gems/%{gem_name}-%{version}
%endif

Summary: Ruby bindings for Forman's rest API
Name: rubygem-%{gem_name}
Version: 0.0.5
Release: 1%{?dist}
Group: Development/Languages
License: MIT
URL: http://github.com/theforeman/foreman_api
Source0:  http://rubygems.org/downloads/%{gem_name}-%{version}.gem
Requires: ruby(abi) = %{rubyabi}
Requires: ruby(rubygems) 
Requires: rubygem(json) 
Requires: rubygem(rest-client) >= 1.6.1
Requires: rubygem(oauth) 
BuildRequires: ruby(abi) = %{rubyabi}
BuildRequires: ruby(rubygems) 

%if 0%{?fedora}
BuildRequires: rubygems-devel
%endif

BuildArch: noarch
Provides: rubygem(%{gem_name}) = %{version}

%description
Helps you to use Foreman's API calls from your app.

%package doc
BuildArch:  noarch
Requires:   %{name} = %{version}-%{release}
Summary:    Documentation for rubygem-%{gem_name}

%description doc
This package contains documentation for rubygem-%{gem_name}.

%prep
gem unpack %{SOURCE0}
%setup -q -D -T -n  %{gem_name}-%{version}

gem spec %{SOURCE0} -l --ruby > %{gem_name}.gemspec


%build
mkdir -p .%{gem_dir}
gem install --local --install-dir .%{gem_dir} \
            --force --rdoc --no-ri %{SOURCE0}

%install
mkdir -p %{buildroot}%{gem_dir}
cp -a .%{gem_dir}/* \
        %{buildroot}%{gem_dir}/
mv %{buildroot}%{gem_instdir}/{MIT-LICENSE,README.rdoc} ./
rm -f %{buildroot}%{gem_instdir}/%{gem_name}.gemspec

%files
%dir %{gem_instdir}
%{gem_instdir}/lib
%{gem_cache}
%{gem_spec}

%doc MIT-LICENSE README.rdoc

%files doc
%{gem_docdir}
%{gem_instdir}/Gemfile
%{gem_instdir}/Rakefile


%changelog
* Tue Aug 28 2012 Martin Bačovský <mbacovsk@redhat.com> 0.0.5-1
- Updated bindings to 0.0.5 (mbacovsk@redhat.com)

* Tue Aug 14 2012 Martin Bačovský <mbacovsk@redhat.com> 0.0.4-2
- Updated to v 0.0.4 (mbacovsk@redhat.com)
- added domains, config_templates

* Tue Aug 14 2012 Martin Bačovský <mbacovsk@redhat.com> 0.0.2-1
- Updated gem to 0.0.2 (mbacovsk@redhat.com)

* Mon Aug 13 2012 Miroslav Suchý <msuchy@redhat.com> 0.0.1-4
- for rubyabi do s/1.9/1.9.1/ (msuchy@redhat.com)

* Mon Aug 13 2012 Martin Bačovský <mbacovsk@redhat.com> 0.0.1-3
- Fixed failing spec removal (mbacovsk@redhat.com)

* Mon Aug 13 2012 Martin Bačovský <mbacovsk@redhat.com> 0.0.1-2
- new package built with tito

* Wed Aug 08 2012 Martin Bacovsky <mbacovsk@redhat.com> - 0.0.1-1
- Initial package
