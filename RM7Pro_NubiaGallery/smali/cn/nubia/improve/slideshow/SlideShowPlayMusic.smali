.class public Lcn/nubia/improve/slideshow/SlideShowPlayMusic;
.super Ljava/lang/Object;
.source "SlideShowPlayMusic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;
    }
.end annotation


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mContext:Landroid/content/Context;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMusicPlayerListener:Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->audioManager:Landroid/media/AudioManager;

    .line 18
    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMusicPlayerListener:Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;

    .line 22
    new-instance v0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic$1;

    invoke-direct {v0, p0}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic$1;-><init>(Lcn/nubia/improve/slideshow/SlideShowPlayMusic;)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 46
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 48
    :cond_0
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mContext:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMusicPlayerListener:Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;

    const-string p3, "audio"

    .line 50
    invoke-virtual {v0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    iput-object p3, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->audioManager:Landroid/media/AudioManager;

    .line 52
    :try_start_0
    iget-object p3, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->reset()V

    .line 53
    iget-object p3, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 54
    iget-object p3, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 55
    iget-object p3, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 63
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p3

    .line 61
    invoke-virtual {p3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p3

    .line 59
    invoke-virtual {p3}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p3

    .line 57
    invoke-virtual {p3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 65
    :goto_0
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/slideshow/SlideShowPlayMusic;)Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMusicPlayerListener:Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;

    return-object p0
.end method


# virtual methods
.method public Pause()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->abandonAudioFocus()V

    .line 87
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public Start()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 80
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public Stop()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->abandonAudioFocus()V

    .line 69
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 71
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 72
    iput-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 74
    :cond_0
    iput-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->mMusicPlayerListener:Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;

    return-void
.end method
