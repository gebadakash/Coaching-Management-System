import { Button } from "./styles/Button";
import React from 'react'
import { NavLink } from "react-router-dom";
import styled from 'styled-components';

const Error = () => {
  return (
    <Wrapper>

    <img src="./img/error.svg" alt="error"></img>
    <NavLink to="/">
    <Button className="btn">GO BACK</Button>
    </NavLink>
    </Wrapper>
  )
};


const Wrapper = styled.section`
padding:9rem 0;
display:flex;
justify-content: center;
align-items:center;
flex-direction: column;

.btn{

    font-size: 1.8rem;
    margin-top: 3rem;
}


`;

export default Error
