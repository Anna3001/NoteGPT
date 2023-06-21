module ApplicationHelper
    def generate_response(q)
        
        if !q.nil?
            OpenAI.configure do |config|
                config.access_token = ENV.fetch("OPENAI_ACCESS_TOKEN")
            end
            openai_client = OpenAI::Client.new()
            response = openai_client.completions(
            parameters: {
                model: "text-davinci-003",
                prompt: q,
                max_tokens: 500
            })

            response["choices"].map { |c| c["text"] }[0]
        end    
    end
end
