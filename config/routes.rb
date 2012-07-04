Dabble::Application.routes.draw do
  
  root :to => "dabbles#index"
  
  match "dabble_box" => "dabbles#dabble_box"
  match "dabble_remix" => "dabbles#dabble_remix"
  match "my_colours" => "dabbles#my_colours"
  match "whats_on_my_plate" => "dabbles#whats_on_my_plate"
  
end
