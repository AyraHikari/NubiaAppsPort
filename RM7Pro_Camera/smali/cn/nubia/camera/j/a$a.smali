.class Lcn/nubia/camera/j/a$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/j/a;

.field private b:J

.field private c:Landroid/media/MediaPlayer;

.field private d:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/j/a;JJ)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/nubia/camera/j/a$a;->a:Lcn/nubia/camera/j/a;

    .line 84
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const-wide/16 p1, 0x0

    .line 79
    iput-wide p1, p0, Lcn/nubia/camera/j/a$a;->b:J

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcn/nubia/camera/j/a$a;->c:Landroid/media/MediaPlayer;

    .line 81
    iput-object p1, p0, Lcn/nubia/camera/j/a$a;->d:Landroid/media/MediaPlayer;

    .line 85
    invoke-direct {p0}, Lcn/nubia/camera/j/a$a;->c()V

    return-void
.end method

.method private a(I)Landroid/media/MediaPlayer;
    .locals 8

    const/4 v0, 0x0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/j/a$a;->a:Lcn/nubia/camera/j/a;

    invoke-static {v1}, Lcn/nubia/camera/j/a;->b(Lcn/nubia/camera/j/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "pref_camera_shutter_sound_key"

    .line 166
    iget-object v3, p0, Lcn/nubia/camera/j/a$a;->a:Lcn/nubia/camera/j/a;

    invoke-static {v3}, Lcn/nubia/camera/j/a;->b(Lcn/nubia/camera/j/a;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0f0209

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :try_start_1
    iget-object v2, p0, Lcn/nubia/camera/j/a$a;->a:Lcn/nubia/camera/j/a;

    invoke-static {v2}, Lcn/nubia/camera/j/a;->b(Lcn/nubia/camera/j/a;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 171
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    .line 172
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, v1

    .line 169
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/4 p1, 0x1

    .line 173
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const/4 p1, 0x0

    .line 174
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 175
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method private c()V
    .locals 1

    const v0, 0x7f0e0011

    .line 144
    invoke-direct {p0, v0}, Lcn/nubia/camera/j/a$a;->a(I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/j/a$a;->c:Landroid/media/MediaPlayer;

    const v0, 0x7f0e0012

    .line 145
    invoke-direct {p0, v0}, Lcn/nubia/camera/j/a$a;->a(I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/j/a$a;->d:Landroid/media/MediaPlayer;

    return-void
.end method

.method private d()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->c:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 152
    iput-object v1, p0, Lcn/nubia/camera/j/a$a;->c:Landroid/media/MediaPlayer;

    .line 155
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 158
    iput-object v1, p0, Lcn/nubia/camera/j/a$a;->d:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/j/a$a;->cancel()V

    .line 93
    invoke-direct {p0}, Lcn/nubia/camera/j/a$a;->d()V

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->a:Lcn/nubia/camera/j/a;

    invoke-static {v0}, Lcn/nubia/camera/j/a;->a(Lcn/nubia/camera/j/a;)Lcn/nubia/camera/j/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->a:Lcn/nubia/camera/j/a;

    invoke-static {v0}, Lcn/nubia/camera/j/a;->a(Lcn/nubia/camera/j/a;)Lcn/nubia/camera/j/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/j/a$b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/j/a$a;->start()Landroid/os/CountDownTimer;

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->a:Lcn/nubia/camera/j/a;

    invoke-static {v0}, Lcn/nubia/camera/j/a;->a(Lcn/nubia/camera/j/a;)Lcn/nubia/camera/j/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->a:Lcn/nubia/camera/j/a;

    invoke-static {v0}, Lcn/nubia/camera/j/a;->a(Lcn/nubia/camera/j/a;)Lcn/nubia/camera/j/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/j/a$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFinish()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->a:Lcn/nubia/camera/j/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/j/a;->a(Lcn/nubia/camera/j/a;Z)Z

    .line 109
    invoke-direct {p0}, Lcn/nubia/camera/j/a$a;->d()V

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->a:Lcn/nubia/camera/j/a;

    invoke-static {v0}, Lcn/nubia/camera/j/a;->a(Lcn/nubia/camera/j/a;)Lcn/nubia/camera/j/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->a:Lcn/nubia/camera/j/a;

    invoke-static {v0}, Lcn/nubia/camera/j/a;->a(Lcn/nubia/camera/j/a;)Lcn/nubia/camera/j/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/j/a$b;->c()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 4

    const-wide/16 v0, 0x32

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    .line 117
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->a:Lcn/nubia/camera/j/a;

    invoke-static {v0}, Lcn/nubia/camera/j/a;->a(Lcn/nubia/camera/j/a;)Lcn/nubia/camera/j/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->a:Lcn/nubia/camera/j/a;

    invoke-static {v0}, Lcn/nubia/camera/j/a;->a(Lcn/nubia/camera/j/a;)Lcn/nubia/camera/j/a$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/j/a$b;->a(J)V

    :cond_0
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 122
    iget-wide v2, p0, Lcn/nubia/camera/j/a$a;->b:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2

    .line 124
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/j/a$a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :catch_0
    iput-wide p1, p0, Lcn/nubia/camera/j/a$a;->b:J

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 133
    :try_start_1
    iget-object p1, p0, Lcn/nubia/camera/j/a$a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 134
    iget-object p1, p0, Lcn/nubia/camera/j/a$a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 135
    iget-object p1, p0, Lcn/nubia/camera/j/a$a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    :goto_0
    return-void
.end method
