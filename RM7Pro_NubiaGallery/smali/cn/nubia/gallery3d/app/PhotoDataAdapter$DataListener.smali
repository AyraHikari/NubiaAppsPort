.class public interface abstract Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataListener"
.end annotation


# virtual methods
.method public abstract onHeifLoadStart()V
.end method

.method public abstract onHeifLoadStatus(Z)V
.end method

.method public abstract onPhotoChanged(ILcn/nubia/gallery3d/data/Path;)V
.end method
