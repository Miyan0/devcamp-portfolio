jQuery(document).on 'turbolinks:load', ->
  console.log('calling blogs.coffe')
  comments = $('#comments')
  if comments.length > 0
    App.global_chat = App.cable.subscriptions.create {
      channel: "BlogsChannel"
      blog_id: comments.data('blog-id')
    },
    connected: ->
      console.log('connected')
    disconnected: ->
      console.log('disconnected')
    received: (data) ->
      console.log('received')
      comments.append data['comment']
    send_comment: (comment, blog_id) ->
      console.log('sending comment')
      @perform 'send_comment', comment: comment, blog_id: blog_id
  $('#new_comment').submit (e) ->
    console.log('submit')
    e.preventDefault()
    $this = $(this)
    textarea = $this.find('#comment_content')
    if $.trim(textarea.val()).length > 1
      App.global_chat.send_comment textarea.val(),
      comments.data('blog-id')
      textarea.val('')

    return false
