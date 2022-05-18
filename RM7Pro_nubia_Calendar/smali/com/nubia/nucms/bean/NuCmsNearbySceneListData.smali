.class public Lcom/nubia/nucms/bean/NuCmsNearbySceneListData;
.super Ljava/lang/Object;
.source "NuCmsNearbySceneListData.java"


# instance fields
.field private isNext:I

.field private pageNo:I

.field private scenes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNearbySceneItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageNo()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsNearbySceneListData;->pageNo:I

    return v0
.end method

.method public getSceneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNearbySceneItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNearbySceneListData;->scenes:Ljava/util/List;

    return-object v0
.end method

.method public hasNextPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 13
    iget v1, p0, Lcom/nubia/nucms/bean/NuCmsNearbySceneListData;->isNext:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
