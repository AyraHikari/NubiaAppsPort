.class Lcn/nubia/camera/clone/b$b;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/clone/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/clone/b;

.field private b:J


# direct methods
.method public constructor <init>(Lcn/nubia/camera/clone/b;JJ)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    .line 122
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const-wide/16 p1, 0x0

    .line 118
    iput-wide p1, p0, Lcn/nubia/camera/clone/b$b;->b:J

    .line 123
    invoke-direct {p0}, Lcn/nubia/camera/clone/b$b;->a()V

    .line 124
    invoke-direct {p0}, Lcn/nubia/camera/clone/b$b;->b()V

    return-void
.end method

.method private a()V
    .locals 8

    .line 129
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->b(Lcn/nubia/camera/clone/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_shutter_sound_key"

    iget-object v2, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    .line 131
    invoke-static {v2}, Lcn/nubia/camera/clone/b;->a(Lcn/nubia/camera/clone/b;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0209

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcn/nubia/camera/clone/b;->a(Lcn/nubia/camera/clone/b;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->a(Lcn/nubia/camera/clone/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0011

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v1}, Lcn/nubia/camera/clone/b;->c(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 139
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 140
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    .line 141
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 138
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->c(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->c(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 145
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->c(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->c(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->c(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/clone/b;->a(Lcn/nubia/camera/clone/b;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void
.end method

.method private b()V
    .locals 8

    .line 157
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->b(Lcn/nubia/camera/clone/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_shutter_sound_key"

    iget-object v2, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    .line 159
    invoke-static {v2}, Lcn/nubia/camera/clone/b;->a(Lcn/nubia/camera/clone/b;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0209

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcn/nubia/camera/clone/b;->b(Lcn/nubia/camera/clone/b;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->a(Lcn/nubia/camera/clone/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0012

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v1}, Lcn/nubia/camera/clone/b;->d(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 167
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 168
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    .line 169
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 166
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 170
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->d(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->d(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 173
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->d(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->d(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->d(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/clone/b;->b(Lcn/nubia/camera/clone/b;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/clone/b;->a(Lcn/nubia/camera/clone/b;Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    const-wide/16 v0, 0x32

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    .line 188
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 189
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->e(Lcn/nubia/camera/clone/b;)Lcn/nubia/camera/clone/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->e(Lcn/nubia/camera/clone/b;)Lcn/nubia/camera/clone/b$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/clone/b$a;->a(J)V

    :cond_0
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 193
    iget-wide v2, p0, Lcn/nubia/camera/clone/b$b;->b:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2

    .line 195
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->d(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {v0}, Lcn/nubia/camera/clone/b;->d(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :catch_0
    iput-wide p1, p0, Lcn/nubia/camera/clone/b$b;->b:J

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 204
    :try_start_1
    iget-object p1, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {p1}, Lcn/nubia/camera/clone/b;->c(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 205
    iget-object p1, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {p1}, Lcn/nubia/camera/clone/b;->c(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 206
    iget-object p1, p0, Lcn/nubia/camera/clone/b$b;->a:Lcn/nubia/camera/clone/b;

    invoke-static {p1}, Lcn/nubia/camera/clone/b;->c(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    :goto_0
    return-void
.end method
