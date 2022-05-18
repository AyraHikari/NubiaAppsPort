.class public Lcn/nubia/upgrade/http/HttpDownLoader;
.super Ljava/lang/Object;
.source "HttpDownLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;
    }
.end annotation


# static fields
.field private static final ERROR_CANCEL_PAUSE:I = 0x7

.field private static final ERROR_DNSHIJACK_DOUBT:I = 0x2

.field private static final ERROR_FILESYSTEM_ERROR:I = 0x8

.field private static final ERROR_HTTP_OTHER:I = 0x5

.field private static final ERROR_IO_EXCEPTION:I = 0x6

.field private static final ERROR_NET:I = 0x4

.field private static final ERROR_SIGNKEY_USELESS:I = 0x3

.field private static final ERROR_SPACE_NOTENOUGH:I = 0x1

.field private static final IO_TIME_OUT:I = 0xdac

.field private static final RECONNECT_TIME:I = 0x2

.field public static final TAG:Ljava/lang/String; = "HttpDownLoader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownLoadTask:Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;

.field mHttpRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcn/nubia/upgrade/http/HttpRequestManager;

    invoke-direct {v0}, Lcn/nubia/upgrade/http/HttpRequestManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader;->mHttpRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

    .line 53
    iput-object p1, p0, Lcn/nubia/upgrade/http/HttpDownLoader;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/upgrade/http/HttpDownLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/http/HttpDownLoader;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader;->mDownLoadTask:Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader;->mDownLoadTask:Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->cancel(Z)Z

    .line 61
    :cond_0
    return-void
.end method

.method public doDownLoad(Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "downloadRequest"    # Lcn/nubia/upgrade/http/DownloadRequest;
    .param p2, "listener"    # Lcn/nubia/upgrade/http/IDownLoadListener;
    .param p3, "authId"    # Ljava/lang/String;
    .param p4, "authKey"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader;->mDownLoadTask:Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader;->mDownLoadTask:Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->releaseDownload()V

    .line 70
    :cond_0
    new-instance v0, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;-><init>(Lcn/nubia/upgrade/http/HttpDownLoader;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader;->mDownLoadTask:Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;

    .line 72
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader;->mDownLoadTask:Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method

.method public releaseDownload()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader;->mDownLoadTask:Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownLoader;->mDownLoadTask:Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/HttpDownLoader$DownLoadTask;->releaseDownload()V

    .line 81
    :cond_0
    return-void
.end method
