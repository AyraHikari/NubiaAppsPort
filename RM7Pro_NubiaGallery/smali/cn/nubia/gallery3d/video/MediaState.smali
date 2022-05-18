.class public Lcn/nubia/gallery3d/video/MediaState;
.super Ljava/lang/Object;
.source "MediaState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;
    }
.end annotation


# static fields
.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PREPARED:I = 0x2

.field public static final STATE_PREPARING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
