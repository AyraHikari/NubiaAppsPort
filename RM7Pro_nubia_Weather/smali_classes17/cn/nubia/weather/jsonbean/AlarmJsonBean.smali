.class public Lcn/nubia/weather/jsonbean/AlarmJsonBean;
.super Lcn/nubia/weather/jsonbean/BaseJsonBean;
.source "AlarmJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/nubia/weather/jsonbean/BaseJsonBean;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getW()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean;->w:Ljava/util/List;

    return-object v0
.end method

.method public setW(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "w":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;>;"
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean;->w:Ljava/util/List;

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmJsonBean [w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/AlarmJsonBean;->w:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
