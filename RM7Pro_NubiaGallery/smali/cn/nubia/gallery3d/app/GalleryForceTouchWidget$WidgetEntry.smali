.class public Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;
.super Ljava/lang/Object;
.source "GalleryForceTouchWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetEntry"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public date:J

.field public datetaken:J

.field public id:I

.field public mediaType:I

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isVideo()Z
    .locals 2

    .line 488
    iget v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->mediaType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 477
    iput-object v1, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->bitmap:Landroid/graphics/Bitmap;

    .line 479
    :cond_0
    iput-object v1, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->path:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Uri is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->toUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Landroid/net/Uri;
    .locals 3

    .line 483
    iget v0, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->mediaType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->access$000()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget;->access$100()Landroid/net/Uri;

    move-result-object v0

    .line 484
    :goto_0
    iget v1, p0, Lcn/nubia/gallery3d/app/GalleryForceTouchWidget$WidgetEntry;->id:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
