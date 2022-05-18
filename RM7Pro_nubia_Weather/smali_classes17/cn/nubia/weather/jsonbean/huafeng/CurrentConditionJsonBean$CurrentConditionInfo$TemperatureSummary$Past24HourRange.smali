.class public Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary$Past24HourRange;
.super Ljava/lang/Object;
.source "CurrentConditionJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Past24HourRange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary$Past24HourRange$Maximum;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary$Past24HourRange$Minimum;
    }
.end annotation


# instance fields
.field public Maximum:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary$Past24HourRange$Maximum;

.field public Minimum:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$TemperatureSummary$Past24HourRange$Minimum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    return-void
.end method
