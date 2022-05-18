.class public Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary;
.super Ljava/lang/Object;
.source "CurrentConditionJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemperatureSummary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary$Past24HourRange;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary$Past12HourRange;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary$Past6HourRange;
    }
.end annotation


# instance fields
.field public Past12HourRange:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary$Past6HourRange;

.field public Past24HourRange:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary$Past6HourRange;

.field public Past6HourRange:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary$Past6HourRange;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    return-void
.end method
