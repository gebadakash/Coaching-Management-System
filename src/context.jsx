import React, { useContext, useEffect, useReducer } from "react";
import reducer from "./reducer";

const AppContext = React.createContext();

const intialState = {
  name: "",
  image: "",
  content: ``,
};

// eslint-disable-next-line react/prop-types
const AppProvider = ({ children }) => {

  const [state, dispatch] = useReducer(reducer, intialState);

  const updateHomePage = () => {
    return dispatch({
      type: "HOME_UPDATE",
      payload: {
        name: "CodeNest Learning",
        image: "img/hero.svg",
        content: `Welcome to CodeNest Learning, where coding dreams take flight! Dive
      into our comprehensive courses covering Python, Java, JavaScript,
      .NET, React, and more, and embark on a transformative journey
      towards mastering the languages powering the digital world. Join us
      and unlock your potential in the realm of software development.`,
      },
    });
  };

  const updateAboutPage = () => {
    return dispatch({
      type: "ABOUT_UPDATE",
      payload: {
        name: "About us",
        image: "img/about1.svg",
        content: `Apart from preparing students thoroughly for an outstanding performance at the exam, 
      the classes also arranges guest lectures and seminars for the personality development of students. 
      Lectures on Time Management, Stress Management, Study Skills, Career Guidance and achieving success have 
      been found very useful by our students over the years.`,
      },
    });
  };


  return (
    <AppContext.Provider value={{ ...state , updateHomePage, updateAboutPage}}>{children}</AppContext.Provider>
  );
};

const useGlobalContext = () => {
  return useContext(AppContext);
};

// eslint-disable-next-line react-refresh/only-export-components
export { AppContext, AppProvider, useGlobalContext};
