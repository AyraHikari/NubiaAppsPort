.class public Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$DegreeDaySummary;
.super Ljava/lang/Object;
.source "DailyForecastJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DegreeDaySummary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$DegreeDaySummary$Cooling;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$DegreeDaySummary$Heating;
    }
.end annotation


# instance fields
.field public Cooling:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$DegreeDaySummary$Cooling;

.field public Heating:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts$DegreeDaySummary$Heating;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method
