puts "Deleting user/video/comment data..."
User.destroy_all
Video.destroy_all
Comment.destroy_all




"seeding users"
user1 = User.create(name: "Cody", email: "cmchaff14@yahoo.com") 
user2 = User.create(name: "Sowande", email: "swanDaBest@gamil.com")
"finished users"
"seeding videos"
video1 = Video.create(user_id: user1.id, url: "https://www.youtube.com/watch?v=OE0Lpy-ddxU", title: "MHW Iceborne | After you've killed 100 Alatreon", likes: 26000, description: "Thanks to Mzly for teaming up with us", veiws: 1944081)
video2 = Video.create(user_id: user2.id, url: "https://www.youtube.com/watch?v=-Q82bpVJDSc", title: "Coding Interviews Be Like Pt. 3", likes: 7800, description: "After being thrown a problem that he saw on LeetCode but did not solve, Nick struggles trying to find the maximum width of a binary tree. What tricks does he have up his sleeve this time?", veiws: 141524)
"finished videos"
"seeding comments"
comment1 = Comment.create(video_id: video1.id, user_id: user1.id, remark: "wow that was awesome")
comment2 = Comment.create(video_id: video2.id, user_id: user2.id, remark: "this happens?")
comment3 = Comment.create(video_id: video1.id, user_id: user2.id, remark: "how did you do that?")
comment4 = Comment.create(video_id: video2.id, user_id: user1.id, remark: "makes me nervous for interviews")
"finished seeding data"