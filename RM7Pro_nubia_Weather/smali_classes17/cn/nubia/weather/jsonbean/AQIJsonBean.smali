.class public Lcn/nubia/weather/jsonbean/AQIJsonBean;
.super Lcn/nubia/weather/jsonbean/BaseJsonBean;
.source "AQIJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private p:Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcn/nubia/weather/jsonbean/BaseJsonBean;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/AQIJsonBean;->p:Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    return-object v0
.end method

.method public setP(Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;)V
    .locals 0
    .param p1, "p"    # Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    .prologue
    .line 16
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/AQIJsonBean;->p:Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AirJsonBean [p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/AQIJsonBean;->p:Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
