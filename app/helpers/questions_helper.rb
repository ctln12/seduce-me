module QuestionsHelper
  def to_letter(answer)
    if answer == @question.seducer_answer_A
      "A"
    elsif answer == @question.seducer_answer_B
      "B"
    end
  end

  def go_to_url(answer)
    if to_letter(answer) == @question.correct_answer
      if @question.number < 3
        "/stories/#{@story.id}/questions/#{@question.id + 1}"
      else
        "/stories/#{@story.id}/win"
      end
    else
      "/stories/#{@story.id}/gameover"
    end
  end
end
