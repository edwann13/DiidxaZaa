import React from "react"
import PropTypes from "prop-types"


class Square extends React.Component {
  render() {
    return (
        <div className="container rounded">
            <div className="row">
                <div id="hello" className="col-md-3 hello1 top-buffer roundLeft">
                    {this.props.record.word}
                </div>

                <div className="col-md-5 hello2 top-buffer roundCenter">
                    {this.props.record.spanish}
                </div>

                <div className="col-md-4 top-buffer roundRight sampleImage">
                    {this.props.record.zapoteco}
                </div>
            </div>
        </div>
      );
  }
}


class HelloWorld extends React.Component{

    render () {
        
        var squareChildren = this.props.data.map(function(record, index) {
            return (
                <Square record={record}  key={index}/>
                );
        });

        return (
            <div>
                {squareChildren}
            </div>
            );

    }


}




export default HelloWorld
