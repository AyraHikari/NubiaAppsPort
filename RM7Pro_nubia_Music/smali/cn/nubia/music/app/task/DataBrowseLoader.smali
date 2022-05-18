.class public Lcn/nubia/music/app/task/DataBrowseLoader;
.super Landroid/content/AsyncTaskLoader;
.source "DataBrowseLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mCols:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mSelection:Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->uri:Landroid/net/Uri;

    .line 17
    iput-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCols:[Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->uri:Landroid/net/Uri;

    .line 26
    iput-object p3, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCols:[Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mSortOrder:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mSelection:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->uri:Landroid/net/Uri;

    .line 17
    iput-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCols:[Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->uri:Landroid/net/Uri;

    .line 37
    iput-object p3, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCols:[Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mSelection:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mSortOrder:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 41
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcn/nubia/music/app/task/DataBrowseLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCursor:Landroid/database/Cursor;

    .line 89
    iput-object p1, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCursor:Landroid/database/Cursor;

    .line 91
    invoke-virtual {p0}, Lcn/nubia/music/app/task/DataBrowseLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 95
    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcn/nubia/music/app/task/DataBrowseLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 69
    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 49
    const-string v0, "loadInBackground"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 53
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCols:[Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mSelection:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    :try_start_1
    iget-object v1, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/app/task/DataBrowseLoader;->registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 58
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    throw v0

    .line 57
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcn/nubia/music/app/task/DataBrowseLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 127
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcn/nubia/music/app/task/DataBrowseLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 137
    invoke-virtual {p0}, Lcn/nubia/music/app/task/DataBrowseLoader;->onStopLoading()V

    .line 139
    iget-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCursor:Landroid/database/Cursor;

    .line 143
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcn/nubia/music/app/task/DataBrowseLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/app/task/DataBrowseLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/music/app/task/DataBrowseLoader;->forceLoad()V

    .line 113
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lcn/nubia/music/app/task/DataBrowseLoader;->cancelLoad()Z

    .line 122
    return-void
.end method

.method registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 77
    return-void
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcn/nubia/music/app/task/DataBrowseLoader;->mSortOrder:Ljava/lang/String;

    .line 45
    return-void
.end method
