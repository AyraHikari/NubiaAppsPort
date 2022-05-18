.class public abstract Lcn/nubia/videogenerator/livephoto/PreviewDataReader;
.super Ljava/lang/Object;
.source "PreviewDataReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/livephoto/PreviewDataReader$PreviewFrameCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPreviewFpsRange([I)V
.end method

.method public abstract setPreviewFrameCallback(Lcn/nubia/videogenerator/livephoto/PreviewDataReader$PreviewFrameCallback;)V
.end method
