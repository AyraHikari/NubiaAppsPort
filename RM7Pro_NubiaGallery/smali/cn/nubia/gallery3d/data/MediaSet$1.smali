.class final Lcn/nubia/gallery3d/data/MediaSet$1;
.super Ljava/lang/Object;
.source "MediaSet.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/MediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/Future<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public get()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 298
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet$1;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public waitDone()V
    .locals 0

    return-void
.end method
