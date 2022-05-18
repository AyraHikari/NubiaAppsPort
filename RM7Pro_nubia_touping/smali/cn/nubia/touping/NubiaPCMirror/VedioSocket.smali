.class public Lcn/nubia/touping/NubiaPCMirror/VedioSocket;
.super Ljava/lang/Object;
.source "VedioSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;
    }
.end annotation


# static fields
.field private static final CONNECTTIMEOUT_TIME:I = 0x3e8

.field private static final SOCKET_NAME:Ljava/lang/String; = "scrcpy"

.field private static final SOCKET_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "VedioSocket"

.field private static mTestSocket:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

.field private static numSend:I

.field public static sendSpendTime:J


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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 178
    const/4 v0, 0x0

    sput v0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->numSend:I

    .line 180
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->sendSpendTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->pool:Ljava/util/concurrent/ExecutorService;

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->poolSendData:Ljava/util/concurrent/ExecutorService;

    .line 167
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->list:Ljava/util/List;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->startSendMessageFlag:Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->socket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$102(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;
    .param p1, "x1"    # Ljava/io/BufferedReader;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->in:Ljava/io/BufferedReader;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->out:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;
    .param p3, "x3"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->runMainThread(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;Z)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->list:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->localSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;
    .param p1, "x1"    # Landroid/net/LocalSocket;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->localSocket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->numSend:I

    return v0
.end method

.method static synthetic access$610()I
    .locals 2

    .prologue
    .line 29
    sget v0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->numSend:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->numSend:I

    return v0
.end method

.method private checkCanSend()Z
    .locals 3

    .prologue
    .line 216
    const-string v0, "VedioSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ReverseControlSocket.hasConnectedSuccessStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->hasConnectedSuccessStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->hasConnectedSuccessStatus:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/touping/NubiaPCMirror/VedioSocket;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->mTestSocket:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;-><init>()V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->mTestSocket:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    .line 68
    :cond_0
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->mTestSocket:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getmTestSocket()Lcn/nubia/touping/NubiaPCMirror/VedioSocket;
    .locals 2

    .prologue
    .line 72
    const-class v0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->mTestSocket:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private runMainThread(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mOnConnectListener"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;
    .param p3, "success"    # Z

    .prologue
    .line 153
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$3;

    invoke-direct {v0, p0, p3, p2}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$3;-><init>(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;ZLcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method private sendCurrenLinkData(Z[B)V
    .locals 2
    .param p1, "wiredLessTouPing"    # Z
    .param p2, "byteArrary"    # [B

    .prologue
    .line 221
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->poolSendData:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;-><init>(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Z[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method


# virtual methods
.method public addMessage([B[B)V
    .locals 2
    .param p1, "arry"    # [B
    .param p2, "arry_realData"    # [B

    .prologue
    .line 169
    monitor-enter p0

    .line 170
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :try_start_0
    monitor-exit p0

    .line 176
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v0, "VedioSocket888"

    const-string v1, "socket notify()"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 175
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connenct(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "mOnConnectListener"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

    .prologue
    .line 82
    :try_start_0
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;-><init>(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;Landroid/app/Activity;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v6

    .line 117
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public connenctWiredTouPing(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mOnConnectListener"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;

    invoke-direct {v2, p0, p1, p2}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;-><init>(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public startSendmessage(Z)V
    .locals 5
    .param p1, "wiredLessTouPing"    # Z

    .prologue
    .line 184
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->startSendMessageFlag:Z

    .line 186
    :try_start_0
    const-string v2, "VedioSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startSendmessage startSendMessageFlag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->startSendMessageFlag:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->startSendMessageFlag:Z

    if-eqz v2, :cond_3

    .line 188
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    :try_start_1
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->list:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->checkCanSend()Z

    move-result v2

    if-nez v2, :cond_2

    .line 191
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 193
    :cond_2
    :goto_1
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->list:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->checkCanSend()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    :try_start_2
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->list:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 196
    .local v0, "byteArrary":[B
    invoke-direct {p0, p1, v0}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->sendCurrenLinkData(Z[B)V

    .line 197
    sget v2, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->numSend:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->numSend:I

    .line 198
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->list:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 200
    .end local v0    # "byteArrary":[B
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    const-string v2, "VedioSocket888 test "

    const-string v3, "000error"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 205
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

    .line 207
    :catch_1
    move-exception v1

    .line 208
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    const-string v2, "VedioSocket888 test "

    const-string v3, "error"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMediaCodec(Landroid/content/Context;)V

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 205
    :cond_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 266
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->startSendMessageFlag:Z

    .line 267
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->in:Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->in:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->in:Ljava/io/BufferedReader;

    .line 271
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->out:Ljava/io/OutputStream;

    .line 275
    :cond_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 276
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->socket:Ljava/net/Socket;

    .line 280
    :cond_2
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->localSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_3

    .line 281
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 282
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->localSocket:Landroid/net/LocalSocket;

    .line 285
    :cond_3
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->mTestSocket:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    if-eqz v1, :cond_4

    .line 286
    const/4 v1, 0x0

    sput-object v1, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->mTestSocket:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    .line 289
    :cond_4
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_5

    .line 290
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 293
    :cond_5
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->poolSendData:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_6

    .line 294
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->poolSendData:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_6
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    const-string v1, "VedioSocket"

    const-string v2, "stop EXCEPTION"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
