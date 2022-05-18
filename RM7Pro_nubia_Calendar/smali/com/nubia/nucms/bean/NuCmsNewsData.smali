.class public Lcom/nubia/nucms/bean/NuCmsNewsData;
.super Ljava/lang/Object;
.source "NuCmsNewsData.java"


# instance fields
.field private is_clean:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNewsItem;",
            ">;"
        }
    .end annotation
.end field

.field private recoid:Ljava/lang/String;

.field private remove_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private specials:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNewsItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBatchId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsData;->recoid:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNewsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsData;->items:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveNewsIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsData;->remove_ids:Ljava/util/List;

    return-object v0
.end method

.method public getSpecialItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsNewsItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsNewsData;->specials:Ljava/util/Map;

    return-object v0
.end method

.method public isCleanCache()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 27
    iget v1, p0, Lcom/nubia/nucms/bean/NuCmsNewsData;->is_clean:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
