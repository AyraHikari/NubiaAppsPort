.class public Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;
.super Lcn/nubia/weather/jsonbean/BaseJsonBean;
.source "DailyForecastJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;,
        Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$Headline;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public DailyForecasts:[Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;

.field public Headline:Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$Headline;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/nubia/weather/jsonbean/BaseJsonBean;-><init>()V

    .line 30
    return-void
.end method
