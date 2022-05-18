.class public Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;
.super Lcn/nubia/weather/jsonbean/BaseJsonBean;
.source "HourlyForecastJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mHourlyForecastInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;",
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

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;->mHourlyForecastInfos:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public getmHourlyForecastInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;->mHourlyForecastInfos:Ljava/util/List;

    return-object v0
.end method

.method public setmHourlyForecastInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "mHourlyForecastInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;>;"
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;->mHourlyForecastInfos:Ljava/util/List;

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HourlyForecastJsonBean [mHourlyForecastInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;->mHourlyForecastInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
