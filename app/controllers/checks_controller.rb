class ChecksController < ApplicationController
  def index
      
  end

  def second
    
    # 1. 6개를 받아온다.
    #input = [params[:num1].to_i,params[:num2].to_i,params[:num3].to_i,params[:num4].to_i,params[:num5].to_i,params[:num6].to_i]
    
    # 배열 무식하게 만들기 [params[:numi]s
    input = [params[:num1],params[:num2],params[:num3],params[:num4],params[:num5],params[:num6]]
    
    input.map!{|e| e.to_i}

    #result = [params[:num[n]]]

    #@order = result.sort()

    # 1-1. string을 integer로 바꿔주는게 필요할 듯, 우선은 그냥 단순하게 params[:num#].to_i를 일일히 붙여서 하는 걸로 마무으리
    # array에 있는 스트링을 integer로 바꿔주는 array.map!{|e| e.to_i} SOLVED !!! 
    # 2. 받아온 것을 정렬한다.
    @mynumber = input.sort()
    
    # 3. 랜덤샘플 6개를 뽑고, 정렬한다.
    target = (1..45).to_a
    sample = target.sample(6)
    @sorted = sample.sort()
    
    # 4. 받아온 것과 랜덤샘플을 비교하여 카운트한다.
    # (4-1)
    
    @lucky = @sorted & @mynumber
    
    @lucky.count
    
  end
end
