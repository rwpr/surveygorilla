get '/surveys' do
	@survey = Survey.all
	erb :surveys_view
end

post '/surveys/new' do
	erb :survey_create
end

post '/surveys' do
	@survey = Survey.find_or_initialize_by(params[:survey])
	if @survey.save 
		redirect to "/questions"
	else 
		erb :survey_create
	end
end

get '/questions' do
	erb :question
end

post '/questions' do
	@question = Question.find_or_initialize_by(params[:question])
	if @question.save 
		erb :choices
	end
end

post '/choices/new' do
	@choice_one = Choice.create(desc: params[:choice][:one])
	@choice_two = Choice.create(desc: params[:choice][:two])
	@choice_three = Choice.create(desc: params[:choice][:three])
	erb :complete
end

