.class public Lcn/nubia/weather/jsonbean/GeoJsonBean;
.super Ljava/lang/Object;
.source "GeoJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private geo:Lcn/nubia/weather/jsonbean/GeoInfo;

.field private msg:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeo()Lcn/nubia/weather/jsonbean/GeoInfo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/GeoJsonBean;->geo:Lcn/nubia/weather/jsonbean/GeoInfo;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/GeoJsonBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/GeoJsonBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setGeo(Lcn/nubia/weather/jsonbean/GeoInfo;)V
    .locals 0
    .param p1, "geo"    # Lcn/nubia/weather/jsonbean/GeoInfo;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/GeoJsonBean;->geo:Lcn/nubia/weather/jsonbean/GeoInfo;

    .line 41
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/GeoJsonBean;->msg:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/GeoJsonBean;->status:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoResult [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoJsonBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoJsonBean;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", geo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/GeoJsonBean;->geo:Lcn/nubia/weather/jsonbean/GeoInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
