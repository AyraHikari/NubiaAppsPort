.class public Lcom/huanju/ssp/base/core/download/bean/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field private downloadUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contentLength"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->setId(Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->setName(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p2, p3}, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->setSize(J)V

    .line 25
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 26
    return-void
.end method

.method private setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->downloadUrl:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->size:J

    return-wide v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->name:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->packageName:Ljava/lang/String;

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->size:J

    .line 42
    return-void
.end method
