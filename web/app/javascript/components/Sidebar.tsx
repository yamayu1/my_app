import React from 'react';
import '../../assets/stylesheets/Sidebar.css'; // CSSファイルをインポート

const Sidebar = () => {
  const menuItems = [
    { id: 1, name: 'マイページ' },
    { id: 2, name: '予約・予約リクエスト' },
    { id: 3, name: 'レビュー' },
    { id: 4, name: '見学リクエスト' },
    { id: 5, name: 'メッセージ一覧' },
    { id: 6, name: 'プロフィール編集・通知設定' },
    { id: 7, name: '支払いグループ' },
    { id: 8, name: '利用者ヘルプ' },
    { id: 9, name: 'ログアウト' },
    { id: 10, name: '掲載者ログイン' },
    { id: 11, name: '掲載者新規登録' },
    { id: 12, name: 'ヘルプ' },
  ];

  return (
    <div className="sidebar">
      <ul className="sidebar-menu">
        {menuItems.map((item) => (
          <li key={item.id} className="sidebar-menu-item">
            {item.name}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Sidebar;