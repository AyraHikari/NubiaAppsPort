.class public Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;
.super Ljava/lang/Object;
.source "RepositoryInfo.java"


# instance fields
.field private apk_md5:Ljava/lang/String;

.field private apk_size:J

.field private apk_url:Ljava/lang/String;

.field private app_name:Ljava/lang/String;

.field private app_source:Ljava/lang/String;

.field private clktrackers:[Ljava/lang/String;

.field private developer:Ljava/lang/String;

.field private dwnlst:[Ljava/lang/String;

.field private dwnltrackers:[Ljava/lang/String;

.field private extend:Ljava/lang/String;

.field private id:I

.field private imptrackers:[Ljava/lang/String;

.field private intltrackers:[Ljava/lang/String;

.field private json:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private version_code:I

.field private version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApk_md5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->apk_md5:Ljava/lang/String;

    return-object v0
.end method

.method public getApk_size()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->apk_size:J

    return-wide v0
.end method

.method public getApk_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->apk_url:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_source()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->app_source:Ljava/lang/String;

    return-object v0
.end method

.method public getClktrackers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->clktrackers:[Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->developer:Ljava/lang/String;

    return-object v0
.end method

.method public getDwnlst()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->dwnlst:[Ljava/lang/String;

    return-object v0
.end method

.method public getDwnltrackers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->dwnltrackers:[Ljava/lang/String;

    return-object v0
.end method

.method public getExtend()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->extend:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->id:I

    return v0
.end method

.method public getImptrackers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->imptrackers:[Ljava/lang/String;

    return-object v0
.end method

.method public getIntltrackers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->intltrackers:[Ljava/lang/String;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->json:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_code()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->version_code:I

    return v0
.end method

.method public getVersion_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->version_name:Ljava/lang/String;

    return-object v0
.end method

.method public setApk_md5(Ljava/lang/String;)V
    .locals 0
    .param p1, "apk_md5"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->apk_md5:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setApk_size(J)V
    .locals 1
    .param p1, "apk_size"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->apk_size:J

    .line 104
    return-void
.end method

.method public setApk_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "apk_url"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->apk_url:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setApp_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_name"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->app_name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setApp_source(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_source"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->app_source:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setClktrackers([Ljava/lang/String;)V
    .locals 0
    .param p1, "clktrackers"    # [Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->clktrackers:[Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setDeveloper(Ljava/lang/String;)V
    .locals 0
    .param p1, "developer"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->developer:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setDwnlst([Ljava/lang/String;)V
    .locals 0
    .param p1, "dwnlst"    # [Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->dwnlst:[Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setDwnltrackers([Ljava/lang/String;)V
    .locals 0
    .param p1, "dwnltrackers"    # [Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->dwnltrackers:[Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setExtend(Ljava/lang/String;)V
    .locals 0
    .param p1, "extend"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->extend:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->id:I

    .line 40
    return-void
.end method

.method public setImptrackers([Ljava/lang/String;)V
    .locals 0
    .param p1, "imptrackers"    # [Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->imptrackers:[Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setIntltrackers([Ljava/lang/String;)V
    .locals 0
    .param p1, "intltrackers"    # [Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->intltrackers:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->json:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "package_name"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->package_name:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setVersion_code(I)V
    .locals 0
    .param p1, "version_code"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->version_code:I

    .line 88
    return-void
.end method

.method public setVersion_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "version_name"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->version_name:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",app_source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->app_source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",package_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",app_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->app_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",apk_url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->apk_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",version_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->version_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",version_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->version_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",apk_md5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->apk_md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",apk_size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->apk_size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",developer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->developer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
