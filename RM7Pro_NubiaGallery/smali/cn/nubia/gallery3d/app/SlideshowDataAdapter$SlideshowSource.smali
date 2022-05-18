.class public interface abstract Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SlideshowSource"
.end annotation


# virtual methods
.method public abstract addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V
.end method

.method public abstract findItemIndex(Lcn/nubia/gallery3d/data/Path;I)I
.end method

.method public abstract getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;
.end method

.method public abstract isLoading()Z
.end method

.method public abstract reload()J
.end method

.method public abstract removeContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V
.end method
