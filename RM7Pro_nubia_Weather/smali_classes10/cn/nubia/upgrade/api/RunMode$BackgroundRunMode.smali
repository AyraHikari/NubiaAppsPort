.class public Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;
.super Lcn/nubia/upgrade/api/RunMode;
.source "RunMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/api/RunMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundRunMode"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcn/nubia/upgrade/api/RunMode;-><init>()V

    return-void
.end method

.method public static unparcel(Ljava/lang/String;)Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;
    .locals 1
    .param p0, "parcel"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;-><init>()V

    return-object v0
.end method


# virtual methods
.method public parcel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/upgrade/api/RunMode;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
