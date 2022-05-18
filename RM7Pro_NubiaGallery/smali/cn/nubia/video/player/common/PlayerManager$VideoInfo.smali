.class Lcn/nubia/video/player/common/PlayerManager$VideoInfo;
.super Ljava/lang/Object;
.source "PlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/common/PlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoInfo"
.end annotation


# instance fields
.field public frameRate:I

.field public rotation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcn/nubia/video/player/common/PlayerManager$VideoInfo;->frameRate:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcn/nubia/video/player/common/PlayerManager$VideoInfo;->rotation:I

    return-void
.end method
