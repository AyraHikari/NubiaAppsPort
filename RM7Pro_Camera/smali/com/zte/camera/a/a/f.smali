.class public Lcom/zte/camera/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "f"


# instance fields
.field public volatile a:Z

.field public volatile b:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/io/FileDescriptor;

.field private f:Landroid/media/MediaMuxer;

.field private g:I

.field private h:I

.field private i:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;Z)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/zte/camera/a/a/f;->d:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/zte/camera/a/a/f;->e:Ljava/io/FileDescriptor;

    .line 18
    iput-object v0, p0, Lcom/zte/camera/a/a/f;->f:Landroid/media/MediaMuxer;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/zte/camera/a/a/f;->g:I

    .line 21
    iput v0, p0, Lcom/zte/camera/a/a/f;->h:I

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/zte/camera/a/a/f;->a:Z

    .line 23
    iput-boolean v0, p0, Lcom/zte/camera/a/a/f;->b:Z

    .line 24
    iput-boolean v0, p0, Lcom/zte/camera/a/a/f;->i:Z

    .line 25
    iput v0, p0, Lcom/zte/camera/a/a/f;->j:I

    .line 35
    sget-object v0, Lcom/zte/camera/a/a/f;->c:Ljava/lang/String;

    const-string v1, "create VlogMediaMuxer fd"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/zte/camera/a/a/f;->e:Ljava/io/FileDescriptor;

    .line 38
    invoke-direct {p0, p2}, Lcom/zte/camera/a/a/f;->b(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/zte/camera/a/a/f;->d:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/zte/camera/a/a/f;->e:Ljava/io/FileDescriptor;

    .line 18
    iput-object v0, p0, Lcom/zte/camera/a/a/f;->f:Landroid/media/MediaMuxer;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/zte/camera/a/a/f;->g:I

    .line 21
    iput v0, p0, Lcom/zte/camera/a/a/f;->h:I

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/zte/camera/a/a/f;->a:Z

    .line 23
    iput-boolean v0, p0, Lcom/zte/camera/a/a/f;->b:Z

    .line 24
    iput-boolean v0, p0, Lcom/zte/camera/a/a/f;->i:Z

    .line 25
    iput v0, p0, Lcom/zte/camera/a/a/f;->j:I

    .line 28
    sget-object v0, Lcom/zte/camera/a/a/f;->c:Ljava/lang/String;

    const-string v1, "create VlogMediaMuxer path"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/zte/camera/a/a/f;->d:Ljava/lang/String;

    .line 31
    invoke-direct {p0, p2}, Lcom/zte/camera/a/a/f;->b(Z)V

    return-void
.end method

.method private a(Ljava/io/FileDescriptor;Z)V
    .locals 1

    const/4 p2, 0x0

    .line 65
    :try_start_0
    iput-boolean p2, p0, Lcom/zte/camera/a/a/f;->i:Z

    .line 66
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Lcom/zte/camera/a/a/f;->f:Landroid/media/MediaMuxer;

    .line 67
    iput p2, p0, Lcom/zte/camera/a/a/f;->j:I

    .line 68
    invoke-virtual {v0, p2}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    sget-object p2, Lcom/zte/camera/a/a/f;->c:Ljava/lang/String;

    const-string v0, "mMediaMuxer readyStart() fail"

    invoke-static {p2, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    const/4 p2, 0x0

    .line 53
    :try_start_0
    iput-boolean p2, p0, Lcom/zte/camera/a/a/f;->i:Z

    .line 54
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/zte/camera/a/a/f;->f:Landroid/media/MediaMuxer;

    .line 55
    iput p2, p0, Lcom/zte/camera/a/a/f;->j:I

    .line 56
    invoke-virtual {v0, p2}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    sget-object p2, Lcom/zte/camera/a/a/f;->c:Ljava/lang/String;

    const-string v0, "mMediaMuxer readyStart() fail"

    invoke-static {p2, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/zte/camera/a/a/f;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/zte/camera/a/a/f;->f:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 78
    :try_start_0
    iget-boolean v1, p0, Lcom/zte/camera/a/a/f;->i:Z

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/zte/camera/a/a/f;->i:Z

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/a/a/f;->f:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    sget-object v1, Lcom/zte/camera/a/a/f;->c:Ljava/lang/String;

    const-string v2, "mMediaMuxer readyStop() fail"

    invoke-static {v1, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/zte/camera/a/a/f;->f:Landroid/media/MediaMuxer;

    :cond_1
    return-void
.end method

.method public a(ILandroid/media/MediaFormat;)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/zte/camera/a/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 101
    iget-boolean v1, p0, Lcom/zte/camera/a/a/f;->b:Z

    if-eqz v1, :cond_1

    .line 102
    sget-object p1, Lcom/zte/camera/a/a/f;->c:Ljava/lang/String;

    const-string p2, "addTrackIndex: isAudioTrackAdd is true"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 106
    iget-boolean v1, p0, Lcom/zte/camera/a/a/f;->a:Z

    if-eqz v1, :cond_2

    .line 107
    sget-object p1, Lcom/zte/camera/a/a/f;->c:Ljava/lang/String;

    const-string p2, "addTrackIndex: isVideoTrackAdd is true"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/zte/camera/a/a/f;->f:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_4

    .line 114
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_3

    .line 122
    iput p2, p0, Lcom/zte/camera/a/a/f;->g:I

    .line 123
    iput-boolean v0, p0, Lcom/zte/camera/a/a/f;->a:Z

    goto :goto_0

    .line 125
    :cond_3
    iput p2, p0, Lcom/zte/camera/a/a/f;->h:I

    .line 126
    iput-boolean v0, p0, Lcom/zte/camera/a/a/f;->b:Z

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/zte/camera/a/a/f;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 130
    sget-object p1, Lcom/zte/camera/a/a/f;->c:Ljava/lang/String;

    const-string p2, "mMediaMuxer start!"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/zte/camera/a/a/f;->f:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    .line 132
    iput-boolean v0, p0, Lcom/zte/camera/a/a/f;->i:Z

    goto :goto_1

    :catch_0
    move-exception p1

    .line 116
    sget-object p2, Lcom/zte/camera/a/a/f;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTrack fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/zte/camera/a/a/f;->f:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/zte/camera/a/a/f;->h:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 43
    sget-object v0, Lcom/zte/camera/a/a/f;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVlogMediaMuxer ,setRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/zte/camera/a/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, v0, p1}, Lcom/zte/camera/a/a/f;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/a/a/f;->e:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0, p1}, Lcom/zte/camera/a/a/f;->a(Ljava/io/FileDescriptor;Z)V

    :goto_0
    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/zte/camera/a/a/f;->f:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/zte/camera/a/a/f;->g:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/zte/camera/a/a/f;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/camera/a/a/f;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/zte/camera/a/a/f;->i:Z

    return v0
.end method

.method public d()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/zte/camera/a/a/f;->j:I

    return v0
.end method
