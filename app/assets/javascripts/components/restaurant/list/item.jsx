Restaurant.List.Item = class Item extends React.Component {
  render() {
    var linkToMenu = this.restaurantMenuPath.bind(this);
    return (
      <a href={linkToMenu()} className='row'>
        <div className='restaurant'>
          <div className='image'>
            <img src={this.props.json.logo_url}/>
          </div>
          <div className='info'>
            <h3>{this.props.json.name}</h3>
            <p>{this.props.json.address}</p>
          </div>
        </div>
      </a>
    );
  }

  restaurantMenuPath() {
    return Routes.restaurant_menu_path({
      restaurant_id: this.props.json.id
    });
  }
}
