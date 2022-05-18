.class public interface abstract Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;
.super Ljava/lang/Object;
.source "VideoTrim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/editor/VideoTrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoTrimListener"
.end annotation


# virtual methods
.method public abstract onVideoTrimComplete(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract onVideoTrimError(I)V
.end method

.method public abstract onVideoTrimProgress(I)V
.end method
