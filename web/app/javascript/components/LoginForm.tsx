import React, { useState } from 'react';

function LoginForm() {
  const [formData, setFormData] = useState({
    name: '',
    kana: '',
    tel: '',
    email: '',
    password: ''
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    // ここにフォームデータを送信するための処理を追加します
    // 例えば、RailsへのPOSTリクエストを送信するなどの処理がここに入ります
    console.log('Form submitted:', formData);
  };

  return (
    <div>
      <h2>ログイン</h2>
      <form onSubmit={handleSubmit}>
        <label>
          名前:
          <input type="text" name="name" value={formData.name} onChange={handleChange} />
        </label>
        <br />
        <label>
          フリガナ:
          <input type="text" name="kana" value={formData.kana} onChange={handleChange} />
        </label>
        <br />
        <label>
          電話番号:
          <input type="tel" name="tel" value={formData.tel} onChange={handleChange} />
        </label>
        <br />
        <label>
          メールアドレス:
          <input type="email" name="email" value={formData.email} onChange={handleChange} />
        </label>
        <br />
        <label>
          パスワード:
          <input type="password" name="password" value={formData.password} onChange={handleChange} />
        </label>
        <br />
        <button type="submit">送信</button>
      </form>
    </div>
  );
}

export default LoginForm;