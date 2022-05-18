.class public Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;
.super Lcn/nubia/weather/jsonbean/BaseJsonBean;
.source "CurrentConditionJsonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCurrentConditionInfo:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/nubia/weather/jsonbean/BaseJsonBean;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getmCurrentConditionInfo()Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->mCurrentConditionInfo:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    return-object v0
.end method

.method public setmCurrentConditionInfo(Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;)V
    .locals 0
    .param p1, "mCurrentConditionInfo"    # Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    .prologue
    .line 23
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean;->mCurrentConditionInfo:Lcn/nubia/weather/jsonbean/huafeng/CurrentConditionJsonBean$CurrentConditionInfo;

    .line 24
    return-void
.end method
