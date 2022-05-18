.class public final Lcom/zte/statistics/sdk/update/UpdateApkInfo;
.super Ljava/lang/Object;
.source "UpdateApkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1c0cf4f3a7664e79L


# instance fields
.field private feature:Ljava/lang/String;

.field private hasUpdate:Z

.field private size:J

.field private url:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->hasUpdate:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->versionName:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->versionCode:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->url:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 21
    iput-wide v1, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->size:J

    .line 22
    iput-object v0, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->feature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFeature()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->feature:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->size:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->versionCode:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public hasUpdate()Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->hasUpdate:Z

    return p0
.end method

.method public setFeature(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->feature:Ljava/lang/String;

    return-void
.end method

.method public setHasUpdate(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->hasUpdate:Z

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->size:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->versionCode:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->versionName:Ljava/lang/String;

    return-void
.end method
