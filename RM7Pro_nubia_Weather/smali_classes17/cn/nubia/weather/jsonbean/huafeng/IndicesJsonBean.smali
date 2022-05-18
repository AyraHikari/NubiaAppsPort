.class public Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;
.super Lcn/nubia/weather/jsonbean/BaseJsonBean;
.source "IndicesJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mIndicesInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/weather/jsonbean/BaseJsonBean;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;->mIndicesInfos:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getmIndicesInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;->mIndicesInfos:Ljava/util/List;

    return-object v0
.end method

.method public setmIndicesInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "mIndicesInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;>;"
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;->mIndicesInfos:Ljava/util/List;

    .line 26
    return-void
.end method
