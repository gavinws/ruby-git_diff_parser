module GitDiffParser
  # Parsed line
  class Line
    attr_reader :number, :patch_position, :content, :status
    # @!attribute [r] number
    #   @return [Integer] line number
    # @!attribute [r] patch_position
    #   @return [Integer] line patch position

    # @param params [Hash] required params
    # @option params [Integer] :number line number (required)
    # @option params [String] :content content (required)
    # @option params [Integer] :patch_position patch position (required)
    # @option params [String] :status status (required)
    def initialize(params)
      fail(ArgumentError('number is required')) unless params[:number]
      fail(ArgumentError('content is required')) unless params[:content]
      fail(ArgumentError('patch_position is required')) unless params[:patch_position]
      fail(ArgumentError('status is required')) unless params[:status]
      @number = params[:number]
      @content = params[:content]
      @patch_position = params[:patch_position]
      @status = params[:status]
    end

    # @return [Boolean] true if line changed
    def changed?
      true
    end
  end
end
