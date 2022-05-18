.class public Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;
.super Lcn/nubia/weather/jsonbean/BaseJsonBean;
.source "AlertJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAlertInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/nubia/weather/jsonbean/BaseJsonBean;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;->mAlertInfos:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public getmAlertInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;->mAlertInfos:Ljava/util/List;

    return-object v0
.end method

.method public setmAlertInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "mAlertInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;>;"
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;->mAlertInfos:Ljava/util/List;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlertJsonBean [mAlertInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;->mAlertInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
