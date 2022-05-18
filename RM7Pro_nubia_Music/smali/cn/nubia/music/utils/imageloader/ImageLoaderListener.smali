.class public interface abstract Lcn/nubia/music/utils/imageloader/ImageLoaderListener;
.super Ljava/lang/Object;
.source "ImageLoaderListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLoadComplete(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method

.method public abstract onLoadFail(Ljava/lang/Exception;)V
.end method

.method public abstract onLoadStart()V
.end method
