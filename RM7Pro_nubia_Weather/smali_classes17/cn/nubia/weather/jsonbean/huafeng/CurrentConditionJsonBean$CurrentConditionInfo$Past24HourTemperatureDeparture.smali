.class public Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Past24HourTemperatureDeparture;
.super Ljava/lang/Object;
.source "CurrentConditionJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Past24HourTemperatureDeparture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Past24HourTemperatureDeparture$Imperial;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Past24HourTemperatureDeparture$Metric;
    }
.end annotation


# instance fields
.field public Imperial:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Past24HourTemperatureDeparture$Imperial;

.field public Metric:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Past24HourTemperatureDeparture$Metric;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    return-void
.end method
