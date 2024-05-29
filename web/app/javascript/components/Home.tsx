import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";

function Home() {
  const [selected, setSelected] = useState("");
  const [selectedDate, setSelectedDate] = useState<Date | null>(null);

  return (
    <>
      <h1>Hello World</h1>
      <Link to="/login" style={buttonStyle}>新規登録</Link>
      <div className="form-check">
        <input
          type="datetime-local"
          value={selected}
          onChange={(event) => setSelected(event.target.value)}
        ></input>
        <div>{selected.replace("T", " ")}が選択されました！</div>
      </div>
      <DatePicker
        dateFormat="yyyy/MM/dd HH:mm"
        locale="ja"
        selected={selectedDate}
        onChange={(date) => setSelectedDate(date!)}
        showTimeSelect
        timeIntervals={30}
      />
    </>
  );
}

const buttonStyle = {
  display: 'inline-block',
  padding: '5px 10px',
  fontSize: '16px',
  backgroundColor: '#007bff',
  color: '#fff',
  borderRadius: '5px',
  textDecoration: 'none',
  cursor: 'pointer',
};

export default Home;