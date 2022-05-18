.class public Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;
.super Ljava/lang/Object;
.source "NubiaServerJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JsonData"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private air:Ljava/lang/String;

.field private alarm:Ljava/lang/String;

.field private forecast:Ljava/lang/String;

.field private hourfc:Ljava/lang/String;

.field private index:Ljava/lang/String;

.field private observe:Ljava/lang/String;

.field private pastweather:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->this$0:Lcn/nubia/weather/jsonbean/NubiaServerJsonBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->air:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->alarm:Ljava/lang/String;

    return-object v0
.end method

.method public getForecast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->forecast:Ljava/lang/String;

    return-object v0
.end method

.method public getHourfc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->hourfc:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->index:Ljava/lang/String;

    return-object v0
.end method

.method public getObserve()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->observe:Ljava/lang/String;

    return-object v0
.end method

.method public getPastweather()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->pastweather:Ljava/lang/String;

    return-object v0
.end method

.method public setAir(Ljava/lang/String;)V
    .locals 0
    .param p1, "air"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->air:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setAlarm(Ljava/lang/String;)V
    .locals 0
    .param p1, "alarm"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->alarm:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setForecast(Ljava/lang/String;)V
    .locals 0
    .param p1, "forecast"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->forecast:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setHourfc(Ljava/lang/String;)V
    .locals 0
    .param p1, "hourfc"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->hourfc:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setIndex(Ljava/lang/String;)V
    .locals 0
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->index:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setObserve(Ljava/lang/String;)V
    .locals 0
    .param p1, "observe"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->observe:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPastweather(Ljava/lang/String;)V
    .locals 0
    .param p1, "pastweather"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/NubiaServerJsonBean$JsonData;->pastweather:Ljava/lang/String;

    .line 107
    return-void
.end method
