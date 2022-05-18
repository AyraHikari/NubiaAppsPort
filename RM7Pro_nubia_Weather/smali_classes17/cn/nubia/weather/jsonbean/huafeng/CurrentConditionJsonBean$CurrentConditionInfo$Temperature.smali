.class public Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature;
.super Ljava/lang/Object;
.source "CurrentConditionJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Temperature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature$Imperial;,
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature$Metric;
    }
.end annotation


# instance fields
.field public Imperial:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature$Imperial;

.field public Metric:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$Temperature$Metric;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method
