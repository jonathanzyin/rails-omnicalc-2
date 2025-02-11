class MultiplicationController < ApplicationController
  def show_multiplication_form
    render({ :template => "multiply_template/multiplication_form" })
  end

  def multiply_these
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f

    @result = @first_num * @second_num

    render({ :template => "multiply_template/multiply_result" })
  end
end
