.class public Lcn/nubia/music/utils/EmptyChecker;
.super Ljava/lang/Object;
.source "EmptyChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 27
    :goto_0
    return v0

    .line 20
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 21
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 22
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 23
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 24
    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 25
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 27
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
