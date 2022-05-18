.class public interface abstract Lcn/nubia/improve/slideshow/SlideShowEffectPage$Model;
.super Ljava/lang/Object;
.source "SlideShowEffectPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/slideshow/SlideShowEffectPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract nextSlide(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/FutureListener<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method
