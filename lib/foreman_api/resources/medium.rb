module ForemanApi
  module Resources
    class Medium < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["media"]
      end
      
      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] order For example, name asc, or name desc 
      # @option params [String] page Paginate results 
      # @option params [String] per_page Number of entries per request 
      # @option params [String] search Filter results 
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/media", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/media/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Hash] medium 
      #   allowed keys are: 
      #   * name [String] Name of media ,
      #   * os_family [String] The family that the operating system belongs to.  available families:   archlinux debian redhat solaris suse windows  ,
      #   * path [String] The path to the medium, can be a url or a valid nfs server (exclusive of the architecture).  for example http://mirror.averse.net/centos/$version/os/$arch where $arch will be substituted for the host&#39;s actual os architecture and $version, $major and $minor will be substituted for the version of the operating system.  solaris and debian media may also use $release. ,
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/media", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      # @option params [Hash] medium 
      #   allowed keys are: 
      #   * name [String] Name of media ,
      #   * os_family [String, nil] The family that the operating system belongs to.  available families:   archlinux debian redhat solaris suse windows  ,
      #   * path [String] The path to the medium, can be a url or a valid nfs server (exclusive of the architecture).  for example http://mirror.averse.net/centos/$version/os/$arch where $arch will be substituted for the host&#39;s actual os architecture and $version, $major and $minor will be substituted for the version of the operating system.  solaris and debian media may also use $release. ,
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/media/:id", params
        call(:"put", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def destroy(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/media/:id", params
        call(:"delete", url, params, headers)
      end

    end
  end
end
