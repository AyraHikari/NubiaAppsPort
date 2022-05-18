.class public Lcom/nubia/nucms/bean/NuCmsSingleSceneAdBannersItem;
.super Ljava/lang/Object;
.source "NuCmsSingleSceneAdBannersItem.java"


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private urlType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneAdBannersItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneAdBannersItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneAdBannersItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneAdBannersItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlType()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsSingleSceneAdBannersItem;->urlType:I

    return v0
.end method
