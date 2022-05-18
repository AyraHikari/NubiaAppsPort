.class public Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;
.super Ljava/lang/Object;
.source "HourlyForecastJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HourlyForecastInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo$Temperature;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public DateTime:Ljava/lang/String;

.field public EpochDateTime:Ljava/lang/String;

.field public IconPhrase:Ljava/lang/String;

.field public IsDaylight:Ljava/lang/String;

.field public Link:Ljava/lang/String;

.field public MobileLink:Ljava/lang/String;

.field public PrecipitationProbability:Ljava/lang/String;

.field public Temperature:Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo$Temperature;

.field public WeatherIcon:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->WeatherIcon:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->DateTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo$Temperature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo$Temperature;

    iget-object v0, v0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo$Temperature;->Value:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HourlyForecastInfo [DateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->DateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", EpochDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->EpochDateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", WeatherIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->WeatherIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IconPhrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->IconPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IsDaylight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->IsDaylight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->Temperature:Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo$Temperature;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PrecipitationProbability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->PrecipitationProbability:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MobileLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->MobileLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->Link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
