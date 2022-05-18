.class public interface abstract Lcn/nubia/gallery3d/app/SlideshowPage$Model;
.super Ljava/lang/Object;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract destory()V
.end method

.method public abstract nextSlide(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/FutureListener<",
            "Lcn/nubia/gallery3d/app/SlideshowPage$Slide;",
            ">;)",
            "Lcn/nubia/gallery3d/util/Future<",
            "Lcn/nubia/gallery3d/app/SlideshowPage$Slide;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method
