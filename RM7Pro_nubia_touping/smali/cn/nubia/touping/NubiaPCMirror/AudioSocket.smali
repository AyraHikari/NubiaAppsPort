.class public Lcn/nubia/touping/NubiaPCMirror/AudioSocket;
.super Ljava/lang/Object;
.source "AudioSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;
    }
.end annotation


# static fields
.field private static final CONNECTTIMEOUT_TIME:I = 0x3e8

.field private static final SOCKET_NAME:Ljava/lang/String; = "scrcpy"

.field private static final SOCKET_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "AudioSocket"

.field private static mTestSocket:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;


# instance fields
.field private in:Ljava/io/BufferedReader;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private localSocket:Landroid/net/LocalSocket;

.field private out:Ljava/io/OutputStream;

.field private pool:Ljava/util/concurrent/ExecutorService;

.field private poolSendData:Ljava/util/concurrent/ExecutorService;

.field private socket:Ljava/net/Socket;

.field private startSendMessageFlag:Z

.field private willSendCount:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->pool:Ljava/util/concurrent/ExecutorService;

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->poolSendData:Ljava/util/concurrent/ExecutorService;

    .line 149
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->list:Ljava/util/List;

    .line 163
    iput-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->startSendMessageFlag:Z

    .line 191
    iput v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->willSendCount:I

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->socket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$102(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;
    .param p1, "x1"    # Ljava/io/BufferedReader;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->in:Ljava/io/BufferedReader;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->out:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;
    .param p3, "x3"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->runMainThread(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;Z)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->list:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->localSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;
    .param p1, "x1"    # Landroid/net/LocalSocket;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->localSocket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    .prologue
    .line 27
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->willSendCount:I

    return v0
.end method

.method static synthetic access$608(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    .prologue
    .line 27
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->willSendCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->willSendCount:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/touping/NubiaPCMirror/AudioSocket;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->mTestSocket:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;-><init>()V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->mTestSocket:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    .line 58
    :cond_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->mTestSocket:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getmTestSocket()Lcn/nubia/touping/NubiaPCMirror/AudioSocket;
    .locals 2

    .prologue
    .line 62
    const-class v0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->mTestSocket:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private runMainThread(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mOnConnectListener"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;
    .param p3, "success"    # Z

    .prologue
    .line 135
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$3;

    invoke-direct {v0, p0, p3, p2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$3;-><init>(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;ZLcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method private sendCurrenLinkData(Z[B)V
    .locals 2
    .param p1, "wiredLessTouPing"    # Z
    .param p2, "byteArrary"    # [B

    .prologue
    .line 193
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->poolSendData:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;-><init>(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Z[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method


# virtual methods
.method public addMessage([B)V
    .locals 1
    .param p1, "arry"    # [B

    .prologue
    .line 152
    monitor-enter p0

    .line 153
    if-nez p1, :cond_0

    :try_start_0
    monitor-exit p0

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 160
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connenct(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "mOnConnectListener"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;

    .prologue
    .line 72
    :try_start_0
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$1;-><init>(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v6

    .line 101
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public connenctWiredTouPing(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mOnConnectListener"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;

    invoke-direct {v2, p0, p1, p2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;-><init>(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startSendmessage(Z)V
    .locals 5
    .param p1, "wiredLessTouPing"    # Z

    .prologue
    .line 166
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->startSendMessageFlag:Z

    .line 168
    :try_start_0
    const-string v2, "AudioSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startSendmessage startSendMessageFlag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->startSendMessageFlag:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->startSendMessageFlag:Z

    if-eqz v2, :cond_1

    .line 170
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    :try_start_1
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 174
    :cond_0
    :goto_1
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->list:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->out:Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 176
    :try_start_2
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->list:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 177
    .local v0, "byteArrary":[B
    invoke-direct {p0, p1, v0}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->sendCurrenLinkData(Z[B)V

    .line 178
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->list:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 179
    .end local v0    # "byteArrary":[B
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 183
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 185
    :catch_1
    move-exception v1

    .line 186
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    const-string v2, "AudioSocket test "

    const-string v3, "error"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMediaCodec(Landroid/content/Context;)V

    .line 190
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 183
    :cond_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 234
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->startSendMessageFlag:Z

    .line 235
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->in:Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->in:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->in:Ljava/io/BufferedReader;

    .line 239
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->out:Ljava/io/OutputStream;

    .line 243
    :cond_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 244
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->socket:Ljava/net/Socket;

    .line 248
    :cond_2
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->localSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_3

    .line 249
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 250
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->localSocket:Landroid/net/LocalSocket;

    .line 253
    :cond_3
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->mTestSocket:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    if-eqz v1, :cond_4

    .line 254
    const/4 v1, 0x0

    sput-object v1, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->mTestSocket:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    .line 257
    :cond_4
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_5

    .line 258
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 260
    :cond_5
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->poolSendData:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_6

    .line 261
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->poolSendData:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_6
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    const-string v1, "AudioSocket"

    const-string v2, "stop EXCEPTION"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
