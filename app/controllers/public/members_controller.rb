class Public::MembersController < ApplicationController

  def show
    # 会員の情報を@memberに代入する。
    @member = Member.find(params[:id])
    # @post_images = @user.post_images.page(params[:page]).reverse_order
    # このように記述することで、そのユーザ（@user）に関連付けられた投稿（.post_images）のみ、@post_imagesに渡すことができます。
    # また、全体の投稿ではなく、個人が投稿したもののみを表示できます。
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    @member.update(member_params)
    redirect_to mypages_path(@member.id)
  end

  private

  def member_params
    params.require(:member).permit(:nick_name, :age, :gender, :prof_img)
  end

end
