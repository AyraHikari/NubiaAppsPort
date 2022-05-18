.class synthetic Lcn/nubia/video/player/VideoView$10;
.super Ljava/lang/Object;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$nubia$video$player$VideoView$ScaleMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
    invoke-static {}, Lcn/nubia/video/player/VideoView$ScaleMode;->values()[Lcn/nubia/video/player/VideoView$ScaleMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/nubia/video/player/VideoView$10;->$SwitchMap$cn$nubia$video$player$VideoView$ScaleMode:[I

    :try_start_0
    sget-object v1, Lcn/nubia/video/player/VideoView$ScaleMode;->SM_FullScreen:Lcn/nubia/video/player/VideoView$ScaleMode;

    invoke-virtual {v1}, Lcn/nubia/video/player/VideoView$ScaleMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
