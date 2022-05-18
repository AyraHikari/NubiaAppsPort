.class final Lcn/nubia/gallery3d/util/GalleryUtils$2;
.super Ljava/lang/Object;
.source "GalleryUtils.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/util/GalleryUtils;->scanFiles(Landroid/content/Context;[Ljava/lang/String;Lcn/nubia/gallery3d/util/GalleryUtils$ScanCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$scanCompletedListener:Lcn/nubia/gallery3d/util/GalleryUtils$ScanCompletedListener;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/util/GalleryUtils$ScanCompletedListener;)V
    .locals 0

    .line 1509
    iput-object p1, p0, Lcn/nubia/gallery3d/util/GalleryUtils$2;->val$scanCompletedListener:Lcn/nubia/gallery3d/util/GalleryUtils$ScanCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1513
    iget-object v0, p0, Lcn/nubia/gallery3d/util/GalleryUtils$2;->val$scanCompletedListener:Lcn/nubia/gallery3d/util/GalleryUtils$ScanCompletedListener;

    if-eqz v0, :cond_0

    .line 1514
    invoke-interface {v0, p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils$ScanCompletedListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
