Order.Preference.TypeToggle = class TypeToggle extends React.Component {

  get buttonClasses() {
    return ['btn', 'btn-primary'];
  }

  constructor (props) {
    super(props);
    this.state = {
      selected: this.props.json.selected
    };
  }

  render() {
    var types = this.props.json.types.map((type, index) =>
      <div
        className={this.classesFor(index)}
        onClick={() => this.updateType(index)}
        key={index}>
        {type}
      </div>
    );
    return (
      <div
        id='order-preference-toggle'
        className='btn-group'>
        {types}
      </div>
    );
  }

  isSelected(index) {
    return index == this.state.selected;
  }

  updateTypeData(index) {
    var type = this.props.json.types[index];
    return {
      order_preference: {
        type: type.toLowerCase()
      }
    };
  }

  updateType(index) {
    if (this.isSelected(index)) { return }
    $.ajax({
      type:     'PUT',
      url:      Routes.order_preference_path(),
      dataType: 'JSON',
      data:     this.updateTypeData(index)
    }).then(() => this.setState({ selected: index }));
  }

  classesFor(index) {
    var selected = this.isSelected(index) ? 'active' : null;
    return this.buttonClasses.concat([selected]).join(' ');
  }
}
