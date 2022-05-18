.class public Lcom/hpplay/sdk/source/browse/api/LelinkMultiServiceInfo;
.super Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
.source "SourceFile"


# instance fields
.field private lelinkServiceInfo:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

.field private pinCode:Ljava/lang/String;

.field private remoteLelinkServiceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkMultiServiceInfo;->remoteLelinkServiceInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMasterLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkMultiServiceInfo;->lelinkServiceInfo:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    return-object v0
.end method

.method public getPinCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkMultiServiceInfo;->pinCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteLelinkServiceInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkMultiServiceInfo;->remoteLelinkServiceInfos:Ljava/util/List;

    return-object v0
.end method

.method public setMasterLelinkServiceInfo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/LelinkMultiServiceInfo;->lelinkServiceInfo:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 31
    return-void
.end method

.method public setPinCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/LelinkMultiServiceInfo;->pinCode:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public varargs setRemoteLelinkServiceInfos([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkMultiServiceInfo;->remoteLelinkServiceInfos:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    return-void
.end method
