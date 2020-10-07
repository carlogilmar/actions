defmodule Dummy do
  def post do
    body = get_example()
    DevtoApi.publish("AWS Summit", body)
  end

  defp get_example do
    {path, 0} = System.cmd("pwd", [])
    [dir, _] = String.split(path, "devto_api")
    {:ok, content} = File.read("#{dir}posts/my_blog_post.md")
    content
  end
end
