class DivisionController < ApplicationController
  def show_division_form
    render({ :template => "division_templates/division_form" })
  end

  def divide_these
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f

    @result =  @first_num / @second_num

    render({ :template => "division_templates/divide_result" })
  end
end
