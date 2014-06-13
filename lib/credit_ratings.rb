module Credit_Ratings

  def Credit_Ratings.credit_chart(credit_score)
    case credit_score
    when (760..100000)
      "excellent"
    when (725..759)
      "great"
    when (660..724)
      "good"
    when (560..659)
      "mediocre"
    else
      "bad"
    end
  end

end
