.class public Lcn/nubia/upgrade/http/HttpDownloadManager;
.super Ljava/lang/Object;
.source "HttpDownloadManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpDownloadManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownLoader:Lcn/nubia/upgrade/http/HttpDownLoader;

.field private mRequest:Lcn/nubia/upgrade/http/DownloadRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mDownLoader:Lcn/nubia/upgrade/http/HttpDownLoader;

    .line 16
    new-instance v0, Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-direct {v0, p1}, Lcn/nubia/upgrade/http/HttpDownLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mDownLoader:Lcn/nubia/upgrade/http/HttpDownLoader;

    .line 17
    iput-object p1, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mDownLoader:Lcn/nubia/upgrade/http/HttpDownLoader;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mDownLoader:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/HttpDownLoader;->cancel()V

    .line 52
    :cond_0
    return-void
.end method

.method public pauseDownload()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/HttpDownloadManager;->cancel()V

    .line 56
    return-void
.end method

.method public releaseDownload()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mDownLoader:Lcn/nubia/upgrade/http/HttpDownLoader;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mDownLoader:Lcn/nubia/upgrade/http/HttpDownLoader;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/HttpDownLoader;->releaseDownload()V

    .line 62
    :cond_0
    return-void
.end method

.method public declared-synchronized startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcn/nubia/upgrade/http/DownloadRequest;
    .param p3, "listener"    # Lcn/nubia/upgrade/http/IDownLoadListener;
    .param p4, "authId"    # Ljava/lang/String;
    .param p5, "authKey"    # Ljava/lang/String;

    .prologue
    .line 24
    monitor-enter p0

    if-nez p2, :cond_1

    .line 45
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 28
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    if-nez v0, :cond_2

    .line 29
    iput-object p2, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 30
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mDownLoader:Lcn/nubia/upgrade/http/HttpDownLoader;

    iget-object v1, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v0, v1, p3, p4, p5}, Lcn/nubia/upgrade/http/HttpDownLoader;->doDownLoad(Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 31
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/DownloadRequest;->getState()Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-result-object v0

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-ne v0, v1, :cond_3

    .line 32
    if-eqz p3, :cond_0

    .line 33
    const/16 v0, 0x3ea

    invoke-interface {p3, v0}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_0

    .line 35
    :cond_3
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/DownloadRequest;->getState()Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-result-object v0

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-ne v0, v1, :cond_4

    .line 36
    if-eqz p3, :cond_0

    .line 37
    const/16 v0, 0x3ee

    invoke-interface {p3, v0}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_0

    .line 40
    :cond_4
    iput-object p2, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 41
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 42
    iget-object v0, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mDownLoader:Lcn/nubia/upgrade/http/HttpDownLoader;

    iget-object v1, p0, Lcn/nubia/upgrade/http/HttpDownloadManager;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v0, v1, p3, p4, p5}, Lcn/nubia/upgrade/http/HttpDownLoader;->doDownLoad(Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
