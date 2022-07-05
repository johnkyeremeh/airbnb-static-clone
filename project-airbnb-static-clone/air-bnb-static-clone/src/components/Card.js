import React from "react"





export default function Card(props) {


    console.log(props)
    return (
        <div className="card">
            <img src={`../images/${props.img}`} className="card--image" alt={props.title} />
            <div className="card--stats">
                <img src="../images/star.png" className="card--star" alt="rating"/>
                <span>{props.rating}</span>
                <span className="gray">({props.reviewCount}) • </span>
                <span className="gray">{props.location}</span>
            </div>
            <p>{props.title}</p>
            <p><span className="bold">From ${props.price}</span> / person</p> 
        </div>
    )
}