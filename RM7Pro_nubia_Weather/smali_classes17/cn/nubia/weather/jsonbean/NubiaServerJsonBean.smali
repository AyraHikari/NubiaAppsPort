.class public Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;
.super Lcn/nubia/weather/jsonbean/BaseJsonBean;
.source "NubiaServerJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:Ljava/lang/String;

.field private data:Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcn/nubia/weather/jsonbean/BaseJsonBean;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->data:Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;

    return-object v0
.end method

.method public setAllData(Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;)V
    .locals 0
    .param p1, "data"    # Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->data:Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;

    .line 26
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->code:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeatherAllData [code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;->data:Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
