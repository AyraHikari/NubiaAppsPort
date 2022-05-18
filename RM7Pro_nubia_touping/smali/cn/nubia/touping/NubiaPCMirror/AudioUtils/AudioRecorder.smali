.class public Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;
    }
.end annotation


# static fields
.field private static final ACTION_RECORD:Ljava/lang/String; = "com.rom1v.sndcpy.RECORD"

.field private static final ACTION_STOP:Ljava/lang/String; = "com.rom1v.sndcpy.STOP"

.field private static final CHANNEL_ID:Ljava/lang/String; = "sndcpy"

.field private static final EXTRA_MEDIA_PROJECTION_DATA:Ljava/lang/String; = "mediaProjectionData"

.field public static IS_LEGACY_AAC_MODE:Z = false

.field public static IS_QUICK_MODE:Z = false

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final SOCKET_NAME:Ljava/lang/String; = "cn.nubia.touping.socket"

.field private static final TAG:Ljava/lang/String; = "AudioRecorder"

.field private static instance:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

.field private static mServerSocket:Landroid/net/LocalServerSocket;


# instance fields
.field private mAudioConfig:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

.field private mInputStream:Ljava/io/InputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mWorkThread:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;

.field private recordSystemSounce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 51
    sput-boolean v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_QUICK_MODE:Z

    .line 52
    sput-boolean v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_LEGACY_AAC_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mAudioConfig:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    .line 48
    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mSocket:Landroid/net/LocalSocket;

    .line 49
    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mInputStream:Ljava/io/InputStream;

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->recordSystemSounce:Z

    .line 196
    return-void
.end method

.method private acceptMsg()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "AudioRecorder"

    const-string v1, "acceptMsg "

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$1;

    invoke-direct {v1, p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$1;-><init>(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
    .param p1, "x1"    # Landroid/net/LocalSocket;

    .prologue
    .line 34
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mSocket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic access$100()Landroid/net/LocalServerSocket;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mServerSocket:Landroid/net/LocalServerSocket;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->closeSocketResource()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 34
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mInputStream:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mAudioConfig:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->recordSystemSounce:Z

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->createServerSocket()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->acceptMsg()V

    return-void
.end method

.method private closeSlient(Ljava/io/Closeable;)V
    .locals 4
    .param p1, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    const/4 p1, 0x0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "AudioRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closeSocketResource()V
    .locals 4

    .prologue
    .line 99
    const-class v2, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    monitor-enter v2

    .line 100
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_0

    .line 101
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mInputStream:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->closeSlient(Ljava/io/Closeable;)V

    .line 102
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mSocket:Landroid/net/LocalSocket;

    invoke-direct {p0, v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->closeSlient(Ljava/io/Closeable;)V

    .line 104
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :cond_1
    :goto_0
    const-string v1, "AudioRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSocketResource mServerSocket = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 104
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "AudioRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing ServerSocket"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createServerSocket()V
    .locals 6

    .prologue
    .line 54
    const-class v3, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    monitor-enter v3

    .line 55
    :try_start_0
    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_QUICK_MODE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 57
    :try_start_1
    const-string v2, "AudioRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new LocalServerSocket  before mServerSocket = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v2, Landroid/net/LocalServerSocket;

    const-string v4, "cn.nubia.touping.socket"

    invoke-direct {v2, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 59
    const-string v2, "AudioRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new LocalServerSocket  ok mServerSocket = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 75
    return-void

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "AudioRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new LocalServerSocket old mServerSocket = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 62
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->closeSocketResource()V

    .line 63
    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_QUICK_MODE:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 65
    const-wide/16 v4, 0x1f4

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :goto_1
    :try_start_4
    const-string v2, "AudioRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new LocalServerSocket  IS_QUICK_MODE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_QUICK_MODE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->createServerSocket()V

    goto :goto_0

    .line 74
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 66
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private getAudiaRecorderStatus()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mWorkThread:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;-><init>()V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .line 130
    :cond_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    return-object v0
.end method

.method public static declared-synchronized restart()V
    .locals 6

    .prologue
    .line 376
    const-class v3, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->getInstance()Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-result-object v0

    .line 377
    .local v0, "audioRecorder":Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->stop()V

    .line 379
    const/4 v0, 0x0

    .line 381
    :cond_0
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 382
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v2, :cond_2

    .line 384
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setLeBoLink_USBOnstart(Landroid/content/Context;)V

    .line 388
    :goto_0
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setVoiceComeByAndStart(Landroid/content/Context;)Z

    .line 389
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->oprateMike2System(Landroid/content/Context;Z)V

    .line 393
    :cond_1
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    sget-boolean v4, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->startAudioChangeVoiceService(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :goto_1
    monitor-exit v3

    return-void

    .line 386
    :cond_2
    :try_start_1
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setLeBoLinkOnstart(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    const-string v2, "AudioRecorder"

    const-string v4, "restart exception"

    invoke-static {v2, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 376
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public setSounceBySystem(I)Z
    .locals 3
    .param p1, "soundType"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 170
    if-ne p1, v1, :cond_1

    .line 171
    iput-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->recordSystemSounce:Z

    :goto_0
    move v0, v1

    .line 179
    :cond_0
    return v0

    .line 172
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 173
    iput-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->recordSystemSounce:Z

    goto :goto_0

    .line 174
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 175
    iput-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->recordSystemSounce:Z

    goto :goto_0
.end method

.method public setUSBSounceBySystem(I)Z
    .locals 3
    .param p1, "soundType"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 183
    if-ne p1, v1, :cond_1

    .line 184
    iput-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->recordSystemSounce:Z

    :goto_0
    move v0, v1

    .line 192
    :cond_0
    return v0

    .line 185
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 186
    iput-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->recordSystemSounce:Z

    goto :goto_0

    .line 187
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 188
    iput-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->recordSystemSounce:Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;-><init>(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$1;)V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mWorkThread:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;

    .line 149
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mWorkThread:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->start()V

    .line 150
    return-void
.end method

.method public startPrepare()V
    .locals 2

    .prologue
    .line 136
    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    if-eqz v1, :cond_0

    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    iget-object v1, v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mWorkThread:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;

    if-eqz v1, :cond_0

    .line 137
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    iget-object v1, v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mWorkThread:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->access$300(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const/4 v1, 0x0

    sput-object v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mWorkThread:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mWorkThread:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->access$500(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;Z)V

    .line 155
    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->mWorkThread:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;

    .line 157
    :cond_0
    sput-object v2, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->instance:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .line 158
    return-void
.end method
