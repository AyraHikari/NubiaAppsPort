.class public Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;
.super Ljava/lang/Object;
.source "NuCmsSingleSceneServiceData.java"


# static fields
.field private static final NOTIFY_FLAG_DEFAULT:I = 0x1


# instance fields
.field private adBanners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSingleSceneAdBannersItem;",
            ">;"
        }
    .end annotation
.end field

.field private address:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private classify:Ljava/lang/String;

.field private deeplinkUrl:Ljava/lang/String;

.field private logoUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private notify:I

.field private quickappUrl:Ljava/lang/String;

.field private sceneUrl:Ljava/lang/String;

.field private secClassify:Ljava/lang/String;

.field private services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->notify:I

    return-void
.end method


# virtual methods
.method public getAdBannerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSingleSceneAdBannersItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->adBanners:Ljava/util/List;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getClassify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->classify:Ljava/lang/String;

    return-object v0
.end method

.method public getDeeplinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->deeplinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyFlag()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->notify:I

    return v0
.end method

.method public getQuickappUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->quickappUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->sceneUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSecClassify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->secClassify:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->services:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneServiceData;->tag:Ljava/lang/String;

    return-object v0
.end method
