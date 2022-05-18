.class public Lcom/nubia/nucms/bean/NuCmsTglArticleVoListData;
.super Ljava/lang/Object;
.source "NuCmsTglArticleVoListData.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsTglArticleVoItem;",
            ">;"
        }
    .end annotation
.end field

.field private pageNo:I

.field private pageSize:I

.field private totalPage:I

.field private totalSize:I

.field private updateTs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsTglArticleVoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsTglArticleVoListData;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPageNo()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsTglArticleVoListData;->pageNo:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsTglArticleVoListData;->pageSize:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsTglArticleVoListData;->totalPage:I

    return v0
.end method

.method public getTotalSize()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsTglArticleVoListData;->totalSize:I

    return v0
.end method

.method public getUpdateTs()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/nubia/nucms/bean/NuCmsTglArticleVoListData;->updateTs:J

    return-wide v0
.end method
