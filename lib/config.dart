class AppConfig {
  static var domain = 'huajian.app';
  static var appName = '电影';
  static var apiBaseUrl = 'https://$domain/api';
  static var debug = false;
}
/*------------http缓存------------*/
// 是否启用缓存
const CACHE_ENABLE = false;

// 缓存的最长时间，单位（秒）
const CACHE_MAXAGE = 1000;

// 最大缓存数
const CACHE_MAXCOUNT = 100;


/*------------http抓包代理------------*/
// 是否启用代理
const PROXY_ENABLE = false;

/// 代理服务IP
const PROXY_IP = '192.168.1.105';

/// 代理服务端口
const PROXY_PORT = 8866;

/*------------本地持久化配置信息------------*/
/// 用户配置信息
const String STORAGE_USER_PROFILE_KEY = 'user_profile';
const String STORAGE_MASTER_KEY = 'ducafcat_news_app';
const String STORAGE_USER_TOKEN_KEY = 'user_token';
