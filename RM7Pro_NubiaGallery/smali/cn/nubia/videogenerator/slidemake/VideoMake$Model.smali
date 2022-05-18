.class public interface abstract Lcn/nubia/videogenerator/slidemake/VideoMake$Model;
.super Ljava/lang/Object;
.source "VideoMake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/slidemake/VideoMake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract nextSlide(Lcn/nubia/videogenerator/slidemake/FutureListener;)Lcn/nubia/videogenerator/slidemake/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/videogenerator/slidemake/FutureListener<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcn/nubia/videogenerator/slidemake/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method
