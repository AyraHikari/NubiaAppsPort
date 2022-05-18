.class Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;
.super Ljava/lang/Object;
.source "NuCmsRetryHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private blacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private retrySleepTimeMS:I

.field private whitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "retrySleepTimeMS"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->whitelist:Ljava/util/HashSet;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->blacklist:Ljava/util/HashSet;

    .line 35
    iput p1, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->retrySleepTimeMS:I

    .line 36
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->whitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->whitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketTimeoutException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->blacklist:Ljava/util/HashSet;

    const-class v1, Ljava/net/MalformedURLException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->blacklist:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->blacklist:Ljava/util/HashSet;

    const-class v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->blacklist:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method


# virtual methods
.method protected isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z
    .locals 3
    .param p2, "error"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 87
    .local v0, "aList":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const/4 v1, 0x1

    .line 91
    .end local v0    # "aList":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public retryRequest(Ljava/io/IOException;IILandroid/content/Context;)Z
    .locals 4
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "retryCount"    # I
    .param p3, "maxRetries"    # I
    .param p4, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x1

    .line 53
    .local v0, "retry":Z
    if-le p2, p3, :cond_0

    .line 54
    sget-object v1, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->TAG:Ljava/lang/String;

    const-string v2, "retry count > max retry times.."

    invoke-static {v1, v2}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;

    invoke-direct {v1, p1}, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->blacklist:Ljava/util/HashSet;

    invoke-virtual {p0, v1, p1}, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    sget-object v1, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->TAG:Ljava/lang/String;

    const-string v2, "exception in blacklist.."

    invoke-static {v1, v2}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    .line 63
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 64
    if-eqz p4, :cond_6

    .line 65
    invoke-static {p4}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    sget-object v1, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->TAG:Ljava/lang/String;

    const-string v2, "NuCmsNetWork isConnected, retry now"

    invoke-static {v1, v2}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_2
    :goto_1
    sget-object v1, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return v0

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->whitelist:Ljava/util/HashSet;

    invoke-virtual {p0, v1, p1}, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    sget-object v1, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->TAG:Ljava/lang/String;

    const-string v2, "exception in whitelist.."

    invoke-static {v1, v2}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :cond_4
    invoke-static {p4}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    sget-object v1, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NuCmsNetWork is Connected Or Connecting, wait for retey : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->retrySleepTimeMS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget v1, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->retrySleepTimeMS:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 72
    :cond_5
    sget-object v1, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->TAG:Ljava/lang/String;

    const-string v2, "Without any NuCmsNetWork , immediately cancel retry"

    invoke-static {v1, v2}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;

    sget-object v2, Lcom/nubia/nucms/network/exception/NuCmsNetException;->NetworkNotAvilable:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    invoke-direct {v1, v2}, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;-><init>(Lcom/nubia/nucms/network/exception/NuCmsNetException;)V

    throw v1

    .line 76
    :cond_6
    sget-object v1, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->TAG:Ljava/lang/String;

    const-string v2, "app context is null.."

    invoke-static {v1, v2}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wait for retry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->retrySleepTimeMS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget v1, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->retrySleepTimeMS:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_1
.end method

.method public setRetrySleepTimeMS(I)Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;
    .locals 0
    .param p1, "retrySleepTimeMS"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->retrySleepTimeMS:I

    .line 47
    return-object p0
.end method
