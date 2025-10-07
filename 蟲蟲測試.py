
#使用前要先pip install google-api-python-client，然後要去google cloud platform申請YouTube Data API v3金鑰
from googleapiclient.discovery import build

API_KEY = ''  # 請填入你自己的 API 金鑰
youtube = build('youtube', 'v3', developerKey=API_KEY)

def search_youtube(keyword, max_results=5):
    request = youtube.search().list(
        q=keyword,
        part='id,snippet',
        type='video',
        maxResults=max_results
    )
    response = request.execute()
    for item in response['items']:
        video_id = item['id']['videoId']
        title = item['snippet']['title']
        channel = item['snippet']['channelTitle']
        published_at = item['snippet']['publishedAt']
        print(f"影片標題: {title}")
        print(f"影片ID: {video_id}")
        print(f"頻道: {channel}")
        print(f"發布時間: {published_at}")
        print(f"連結: https://www.youtube.com/watch?v={video_id}")
        print('---')

if __name__ == '__main__':
    keyword = input('請輸入搜尋關鍵字: ')
    search_youtube(keyword)


