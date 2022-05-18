.class public Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo$LocalSource;
.super Ljava/lang/Object;
.source "CurrentConditionJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalSource"
.end annotation


# instance fields
.field public Id:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public WeatherCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
