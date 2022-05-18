.class public Lcn/nubia/weather/jsonbean/ForecastListJsonBean;
.super Ljava/lang/Object;
.source "ForecastListJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private f0:Ljava/lang/String;

.field private f1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/ForecastJsonBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getF0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ForecastListJsonBean;->f0:Ljava/lang/String;

    return-object v0
.end method

.method public getF1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/ForecastJsonBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/ForecastListJsonBean;->f1:Ljava/util/List;

    return-object v0
.end method

.method public setF0(Ljava/lang/String;)V
    .locals 0
    .param p1, "f0"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ForecastListJsonBean;->f0:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setF1(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/ForecastJsonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "f1":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/jsonbean/ForecastJsonBean;>;"
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/ForecastListJsonBean;->f1:Ljava/util/List;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forecast [mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ForecastListJsonBean;->f0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mForecastInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/ForecastListJsonBean;->f1:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
