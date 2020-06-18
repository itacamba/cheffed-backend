class ReviewsController < ApplicationController

    def index # renders all the reviews plus events
        render json: Review.all.as_json(include: :event)
    end

    def event_reviews # show all events for a specific user plus the reviews for the event.
        user = User.find(params[:user_id])
        events = user.events
        # render json: events.as_json(include: :reviews)
        render json: events.as_json(include: {reviews: {include: {user: {only: [:name, :img]}},except: [:created_at, :updated_at]}},
                                    except: [:isApproved, :party_size, :date]
        )
    end

end
