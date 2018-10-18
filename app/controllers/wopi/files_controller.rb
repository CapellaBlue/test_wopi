class Wopi::FilesController < ApplicationController
  def show
    if params[:id].present?
      res = {}
      docpath = 'd:/form.docx'
      res['BaseFileName'] = File.basename(docpath)
      res['BaseFileName'] = 1
      res['Size'] = File.size(docpath)
      res['UserId'] = 1
      res['Version'] = '1'
      render json: res.to_json, status: 200
    else
      render json: {}, status: 404
    end
  end

  def contents
    if params[:id].present?
      docpath = 'd:/form.docx'
      send_file docpath
    else
      render json: {}, status: 404
    end
  end
end
