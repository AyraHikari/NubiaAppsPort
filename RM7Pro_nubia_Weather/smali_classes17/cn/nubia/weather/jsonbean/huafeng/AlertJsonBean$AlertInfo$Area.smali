.class public Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;
.super Ljava/lang/Object;
.source "AlertJsonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area$LastAction;
    }
.end annotation


# instance fields
.field public EndTime:Ljava/lang/String;

.field public EpochEndTime:Ljava/lang/String;

.field public EpochStartTime:Ljava/lang/String;

.field public LanguageCode:Ljava/lang/String;

.field public LastAction:Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area$LastAction;

.field public Name:Ljava/lang/String;

.field public StartTime:Ljava/lang/String;

.field public Summary:Ljava/lang/String;

.field public Text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method
