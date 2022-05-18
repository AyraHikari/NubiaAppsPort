.class public abstract Lcn/nubia/video/player/common/BaseCommand;
.super Ljava/lang/Object;
.source "BaseCommand.java"

# interfaces
.implements Lcn/nubia/video/player/common/ICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public getCmdType()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public needExcuteImmediately()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
