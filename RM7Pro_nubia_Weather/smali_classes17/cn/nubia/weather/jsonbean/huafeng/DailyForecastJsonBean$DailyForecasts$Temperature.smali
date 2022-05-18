.class public Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature;
.super Ljava/lang/Object;
.source "DailyForecastJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Temperature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature$Maximum;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature$Minimum;
    }
.end annotation


# instance fields
.field public Maximum:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature$Maximum;

.field public Minimum:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$Temperature$Minimum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method
