AwsWhitepapersTracker::Application.routes.draw do
  root to: "application#index"
  get "whitepapers" => "application#whitepapers"
end