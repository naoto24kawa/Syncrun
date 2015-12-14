PersonalInformation.seed do |p|
  p.id = 1
  p.name = "super_user1_real_name"
  p.gender = "male"
  p.birth_date = Time.local(2000, 1, 1, 0, 0, 0)
  p.mail_address = "super_user1@test.test"
end

PersonalInformation.seed do |p|
  p.id = 2
  p.name = "user1_real_name"
  p.gender = "female"
  p.birth_date = Time.local(2005, 1, 1, 0, 0, 0)
  p.mail_address = "user1@test.test"
end

PersonalInformation.seed do |p|
  p.id = 3
  p.name = "user2_real_name"
  p.gender = "female"
  p.birth_date = Time.local(1995, 1, 1, 0, 0, 0)
  p.mail_address = "user2@test.test"
end

User.seed do |u|
  u.id = 1
  u.name = "super_user1"
  u.authority_id = Authority::SUPER_USER
  u.personal_information_id = 1
end

User.seed do |u|
  u.id = 2
  u.name = "user1"
  u.authority_id = Authority::USER
  u.personal_information_id = 2
end

User.seed do |u|
  u.id = 3
  u.name = "user2"
  u.authority_id = Authority::USER
  u.personal_information_id = 3
end

# ------各カテゴリーのアイデア--------
# user_id = 2 のアイデア
(1..6).each do |i|
  Idea.seed do |s|
    s.id = i
    s.category_id = i
    s.user_id = 2
  end
end

# user_id = 3 のアイデア
(1..6).each do |i|
  Idea.seed do |s|
    s.id = i + 3
    s.category_id = i + 3
    s.user_id = 2
  end
end
# ---------------------------------

# -------各ユーザーのコメント-------
(1..3).each do |i|
  Comment.seed do |c|
    c.id = i
    c.user_id = 2
    c.content = "comment_user_1_#{i}"
  end
end

(1..3).each do |i|
  Comment.seed do |c|
    c.id = i
    c.user_id = 3
    c.content = "comment_user_2_#{i}"
  end
end
# -------------------------------

# -------各ユーザーのGood-------
Good.seed do |g|
  g.id = 1
  g.user_id = 1
  g.to_user_id = 2
end

Good.seed do |g|
  g.id = 2
  g.user_id = 1
  g.to_user_id = 3
end

Good.seed do |g|
  g.id = 3
  g.user_id = 2
  g.to_user_id = 1
end

Good.seed do |g|
  g.id = 4
  g.user_id = 2
  g.to_user_id = 3
end

Good.seed do |g|
  g.id = 5
  g.user_id = 3
  g.to_user_id = 1
end

Good.seed do |g|
  g.id = 6
  g.user_id = 3
  g.to_user_id = 2
end
# -------------------------------

(1..12).each do |i|
  Title.seed do |t|
    t.id = i
    t.idea_id = i
    t.content = "title#{i}"
  end

  Content.seed do |c|
    c.id = i
    c.idea_id = i
    c.content = "content#{i}"
  end

  Task.seed do |t|
    t.id = i
    t.idea_id = i
    t.content = "task#{i}"
  end

  TitleComment.seed do |t|
    t.id = i
    t.title_id = i
    t.comment_id = i
  end

  TitleGood.seed do |t|
    t.id = i
    t.title_id = i
    t.good_id = i
  end

  ContentComment.seed do |c|
    c.id = i
    c.content_id = i
    c.comment_id = i
  end

  ContentGood.seed do |c|
    c.id = i
    c.content_id = i
    c.good_id = i
  end

  TaskComment.seed do |t|
    t.id = i
    t.task_id = i
    t.comment_id = i
  end

  TaskGood.seed do |t|
    t.id = i
    t.task_id = i
    t.good_id = i
  end
end