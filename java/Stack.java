class Stack{
	Node top;

	public Node peek(){
		if(top != null){
			return top
		}

		return null;

	}

	public Node pop(){
		if(top == null){
			return null;
		}else{
			Node temp = new Node(top.val);
			top = top.next;
			return temp
		}
	}

	public Node push(Node n){
		if(n != null){
			n.next = top;
			top = n;
		}
	}
}