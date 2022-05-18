.class public Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
.super Ljava/lang/Object;
.source "DownloadItem.java"


# static fields
.field public static final STATE_CANCEL:I = 0x7

.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_ERROR:I = 0x8

.field public static final STATE_FINISH:I = 0x5

.field public static final STATE_INSTALLED:I = 0x6

.field public static final STATE_INTERRUPT:I = 0x4

.field public static final STATE_PAUSE:I = 0x3

.field public static final STATE_WAITING:I = 0x2


# instance fields
.field private adDownLoadListener:Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

.field private builder:Landroid/app/Notification$Builder;

.field private clickTracker:Ljava/lang/String;

.field private currentFileSize:J

.field private currentState:I

.field private deepLink:Ljava/lang/String;

.field private deepLinkTracker:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private downLoadUrl:Ljava/lang/String;

.field private downloadName:Ljava/lang/String;

.field private downloadedTracker:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private expirationTime:J

.field private installedTracker:Ljava/lang/String;

.field private isGuangdiantong:Z

.field private listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

.field private localFileSize:J

.field private name:Ljava/lang/String;

.field private netType:I

.field private openTracker:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private reqId:Ljava/lang/String;

.field private savePath:Ljava/lang/String;

.field private softSrc:Ljava/lang/String;

.field private startDownloadTracker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->downLoadUrl:Ljava/lang/String;

    .line 38
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->expirationTime:J

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->netType:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->isGuangdiantong:Z

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->softSrc:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->adDownLoadListener:Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    return-void
.end method

.method private getPackageName4File(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 229
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageName4File path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 230
    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 232
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 233
    const-string v3, "getPackageName4File info not null:"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 234
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 235
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 237
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    if-nez v1, :cond_1

    .line 266
    :cond_0
    const/4 v1, 0x0

    .line 269
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 268
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "downloadUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAdDownLoadListener()Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->adDownLoadListener:Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->builder:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public getClickTracker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->clickTracker:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFileSize()J
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->currentFileSize:J

    return-wide v0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->currentState:I

    return v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->deepLink:Ljava/lang/String;

    return-object v0
.end method

.method public getDeepLinkTracker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->deepLinkTracker:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownLoadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->downLoadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->downloadName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedTracker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->downloadedTracker:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->expirationTime:J

    return-wide v0
.end method

.method public getInstalledTracker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->installedTracker:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    return-object v0
.end method

.method public getLocalFileSize()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->localFileSize:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->netType:I

    return v0
.end method

.method public getOpenTracker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->openTracker:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "getPackageName is empty:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->savePath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getPackageName4File(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setPackageName(Ljava/lang/String;)V

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPackageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->reqId:Ljava/lang/String;

    return-object v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->softSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDownloadTracker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->startDownloadTracker:Ljava/lang/String;

    return-object v0
.end method

.method public geteTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGuangdiantong()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->isGuangdiantong:Z

    return v0
.end method

.method public setAdDownLoadListener(Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;)V
    .locals 0
    .param p1, "adDownLoadListener"    # Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->adDownLoadListener:Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    .line 315
    return-void
.end method

.method public setBuilder(Landroid/app/Notification$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->builder:Landroid/app/Notification$Builder;

    .line 169
    return-void
.end method

.method public setClickTracker(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickTracker"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->clickTracker:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setCurrentFileSize(J)V
    .locals 1
    .param p1, "currentFileSize"    # J

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->currentFileSize:J

    .line 217
    return-void
.end method

.method public setCurrentState(I)V
    .locals 0
    .param p1, "currentState"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->currentState:I

    .line 209
    return-void
.end method

.method public setDeepLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "deepLink"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->deepLink:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDeepLinkTracker(Ljava/lang/String;)V
    .locals 0
    .param p1, "deepLinkTracker"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->deepLinkTracker:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->description:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setDownLoadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downLoadUrl"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->downLoadUrl:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setDownloadName(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadName"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->downloadName:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setDownloadedTracker(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadedTracker"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->downloadedTracker:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "expirationTime"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->expirationTime:J

    .line 121
    return-void
.end method

.method public setGuangdiantong(Z)V
    .locals 0
    .param p1, "guangdiantong"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->isGuangdiantong:Z

    .line 291
    return-void
.end method

.method public setInstalledTracker(Ljava/lang/String;)V
    .locals 0
    .param p1, "installedTracker"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->installedTracker:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setListener(Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    .line 82
    return-void
.end method

.method public setLocalFileSize(J)V
    .locals 1
    .param p1, "localFileSize"    # J

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->localFileSize:J

    .line 201
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->name:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setNetType(I)V
    .locals 0
    .param p1, "netType"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->netType:I

    .line 90
    return-void
.end method

.method public setOpenTracker(Ljava/lang/String;)V
    .locals 0
    .param p1, "openTracker"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->openTracker:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->packageName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setReqId(Ljava/lang/String;)V
    .locals 0
    .param p1, "reqId"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->reqId:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "savePath"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->savePath:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setSoftSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "softSrc"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->softSrc:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setStartDownloadTracker(Ljava/lang/String;)V
    .locals 0
    .param p1, "startDownloadTracker"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->startDownloadTracker:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public seteTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->eTag:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadItem{downLoadUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->downLoadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", savePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadedTracker=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->downloadedTracker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", installedTracker=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->installedTracker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openTracker=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->openTracker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickTracker=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->clickTracker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->expirationTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", builder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->localFileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->currentFileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->currentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGuangdiantong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->isGuangdiantong:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", softSrc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->softSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->eTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
