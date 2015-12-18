import com.example.Comment
import com.example.Game
import com.example.User

class BootStrap {

    def init = { servletContext ->
		initiateDefaultValues()
    }
    def destroy = {
    }
	
	def initiateDefaultValues(){
		if(! User.list()){
			def user = new User()
			user.save(flush:true)
		}
		if(! Game.list()){
			def game = new Game()
			game.save(flush:true)
		}
		if(! Comment.list()){
			def comment = new Comment()
			comment.save(flush:true)
		}
	}
}
