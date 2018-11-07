# Transmission-flexget-setting

 - Transmission (settings.json / transmission-done.sh)
 - flexget (config.yml / secrets.yml / input / want / )
 - [[정보] 2.1 Transmission + flexget 고급설정 편](https://taking.kr/blog/archives/5421.html)



## CentOS 7 Install Shell Script

- [**Centos 7 Transmission Install&Script settings Script.sh**](https://gist.github.com/taking/ec67c447d8e16522ff925bf094f24394)

> 기타 - CentOS 7 처음부터 설치한다면, 해당 스크립트 수정해서 사용하기 (옵션)
>
> 아닐 경우, PASS



## Transmission

* Advanced Setting Guide - [Transmission 환경 설정 가이드 (WD MyCloud) – 제부도소년 빅파크](http://www.php5.me/blog/transmission-%ED%99%98%EA%B2%BD-%EC%84%A4%EC%A0%95-%EA%B0%80%EC%9D%B4%EB%93%9C-wd-mycloud/)



## Path

- flexget → .flexget
- transmission → .config/transmission



##Edit

- transmission/transmission-done.sh
  `SERVER="9091 -n TORRENT아이디:TORRENT비밀번호"`

- flexget/config.yml

  ```
  # Transmission 전송용 설정
    anchors:
      _transmission-settings: &transmission-settings
        host: localhost
        username: TORRENT아이디
        password: TORRENT비번번호
  ```



## Flexget

* input examples


```c
inputs:
  - rss: { url: 'https://localhost/trss.php?k=720p-next&maxpage=1&s=tf&bf=tent', silent: yes }
  - rss: https://localhost/trss.php?k=720p-next&maxpage=1&s=tf&bf=tdrama

```



* want examples


```c
series:
  KENT: # category in config.yml
    - '미운 우리 새끼'
    - '자기야-백년손님'
    - '아는 형님'

```






마지막 업데이트 : 2018-11-07 (수) 
