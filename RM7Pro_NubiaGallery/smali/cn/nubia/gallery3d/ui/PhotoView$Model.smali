.class public interface abstract Lcn/nubia/gallery3d/ui/PhotoView$Model;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/TileImageView$TileSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# static fields
.field public static final FOCUS_HINT_NEXT:I = 0x0

.field public static final FOCUS_HINT_PREVIOUS:I = 0x1

.field public static final LOADING_COMPLETE:I = 0x1

.field public static final LOADING_FAIL:I = 0x2

.field public static final LOADING_INIT:I


# virtual methods
.method public abstract getCurrentIndex()I
.end method

.method public abstract getDataLoadingState(I)I
.end method

.method public abstract getImageRotation(I)I
.end method

.method public abstract getImageSize(ILcn/nubia/gallery3d/ui/PhotoView$Size;)V
.end method

.method public abstract getLoadingState(I)I
.end method

.method public abstract getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;
.end method

.method public abstract getScreenNail(I)Lcn/nubia/gallery3d/ui/ScreenNail;
.end method

.method public abstract isCamera(I)Z
.end method

.method public abstract isDeletable(I)Z
.end method

.method public abstract isGif(I)Z
.end method

.method public abstract isHEIC(I)Z
.end method

.method public abstract isMultiShoot(I)Z
.end method

.method public abstract isPanorama(I)Z
.end method

.method public abstract isVideo(I)Z
.end method

.method public abstract moveTo(I)V
.end method

.method public abstract setFocusHintDirection(I)V
.end method

.method public abstract setFocusHintPath(Lcn/nubia/gallery3d/data/Path;)V
.end method

.method public abstract setNeedFullImage(Z)V
.end method
