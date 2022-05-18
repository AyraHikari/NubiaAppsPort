.class public Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$PrecipitationSummary$Past9Hours;
.super Ljava/lang/Object;
.source "CurrentConditionJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$PrecipitationSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Past9Hours"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$PrecipitationSummary$Past9Hours$Imperial;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$PrecipitationSummary$Past9Hours$Metric;
    }
.end annotation


# instance fields
.field public Imperial:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$PrecipitationSummary$Past9Hours$Imperial;

.field public Metric:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$PrecipitationSummary$Past9Hours$Metric;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    return-void
.end method
