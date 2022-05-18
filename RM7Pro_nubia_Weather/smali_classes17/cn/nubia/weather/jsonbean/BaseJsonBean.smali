.class public abstract Lcn/nubia/weather/jsonbean/BaseJsonBean;
.super Ljava/lang/Object;
.source "BaseJsonBean.java"


# instance fields
.field private mJsonStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmJsonStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcn/nubia/weather/jsonbean/BaseJsonBean;->mJsonStr:Ljava/lang/String;

    return-object v0
.end method

.method public setmJsonStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mJsonStr"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcn/nubia/weather/jsonbean/BaseJsonBean;->mJsonStr:Ljava/lang/String;

    .line 13
    return-void
.end method
