import React, { useState } from 'react';
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";
import axios from 'axios';

function Home() {
  const [selectedDate, setSelectedDate] = useState<Date | null>(null);
  const [message, setMessage] = useState("");

  const handleReservation = async () => {
    if (selectedDate) {
      try {
        const csrfToken = document.querySelector('meta[name="csrf-token"]')?.getAttribute('content');
        axios.defaults.headers.common['X-CSRF-Token'] = csrfToken;

        const response = await axios.post('/reservations', {
          reservation: {
            date: selectedDate.toISOString()
          }
        });
        
        setMessage(response.data.message);
      } catch (error) {
        if (axios.isAxiosError(error) && error.response) {
          setMessage(error.response.data.errors?.[0] || "予約に失敗しました。もう一度お試しください。");
        } else {
          setMessage("予約に失敗しました。もう一度お試しください。");
        }
      }
    } else {
      setMessage("日付を選択してください。");
    }
  };

  return (
    <>
      <h1>予約アあああああああああああああプリ</h1>
      <div className="form-check">
        <DatePicker
          selected={selectedDate}
          onChange={(date: Date) => setSelectedDate(date)}
          showTimeSelect
          dateFormat="yyyy/MM/dd HH:mm"
          timeFormat="HH:mm"
          timeIntervals={30}
          timeCaption="時間"
          placeholderText="日付と時間を選択"
        />
      </div>
      {selectedDate && (
        <div>
          <p>選択された日時: {selectedDate.toLocaleString('ja-JP')}</p>
          <button style={buttonStyle} onClick={handleReservation}>予約する</button>
        </div>
      )}
      {message && <p>{message}</p>}
    </>
  );
}

const buttonStyle: React.CSSProperties = {
  display: 'inline-block',
  padding: '5px 10px',
  fontSize: '16px',
  backgroundColor: '#007bff',
  color: '#fff',
  border: 'none',
  borderRadius: '5px',
  textDecoration: 'none',
  cursor: 'pointer',
};

export default Home;