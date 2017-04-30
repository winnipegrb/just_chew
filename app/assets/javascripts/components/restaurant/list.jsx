Restaurant.List = class List extends React.Component {
  render() {
    var restaurants = this.props.restaurants.map(restaurant =>
      <Restaurant.List.Item key={restaurant.id} json={restaurant}/>
    );
    return <div id='restaurants'>{restaurants}</div>
  }
}
