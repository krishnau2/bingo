var Bingo = React.createClass({
  render: function(){
    return(
      <div className='board-container'>
        <GameBoard />
      </div>
    );
  }
});

var GameBoard = React.createClass({
  getInitialState: function(){    
    return{
      boardData: []
    }
  },
  componentDidMount: function(){
    $.ajax({
      url: '/boards',
      dataType: 'json',
      success: function(data){
        if (this.isMounted()) {
          this.setState({boardData: data })
        }
      }.bind(this)
    });
  },
  displayRow: function(row){
    return(
      <tr key={row.id}>
        <td>{row.a}</td> 
        <td>{row.b}</td> 
        <td>{row.c}</td> 
        <td>{row.d}</td> 
        <td>{row.e}</td>
      </tr>
    );
  },
  render: function(){
    return(
      <table>
        <tbody>
          {this.state.boardData.map(this.displayRow)}
        </tbody>
      </table>
    );
  }
})