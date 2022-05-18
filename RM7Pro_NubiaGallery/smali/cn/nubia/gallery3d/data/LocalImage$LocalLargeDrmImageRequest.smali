.class public Lcn/nubia/gallery3d/data/LocalImage$LocalLargeDrmImageRequest;
.super Ljava/lang/Object;
.source "LocalImage.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalLargeDrmImageRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field mLocalFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalImage$LocalLargeDrmImageRequest;->mLocalFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 2

    .line 455
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalImage$LocalLargeDrmImageRequest;->mLocalFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/nubia/improve/drm/DrmUtil;->requestCreateDRMBitmapRegionDecoder(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 447
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/LocalImage$LocalLargeDrmImageRequest;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    return-object p1
.end method
