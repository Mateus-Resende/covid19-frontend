import React, { useEffect } from "react";

import './News.scss';

const News = function () {
  useEffect(() => {
    const script = document.createElement("script");
    script.src = "https://platform.twitter.com/widgets.js";
    document.getElementsByClassName("twitter-embed")[0].appendChild(script);
  }, []);

  return (
    <div className="News">
      <div className="content-title">
        <h1>Notícias</h1>
      </div>
      <div className="content-body">
        <div className="twitter-embed">
          <a
            className="twitter-timeline"
            data-theme="light"
            data-lang="pt"
            data-chrome=" nofooter noborders"
            href="https://twitter.com/minsaude"
          >
            Tweets Do Ministério da Saúde
          </a>
        </div>
      </div>
    </div>
  );
}

export default News
