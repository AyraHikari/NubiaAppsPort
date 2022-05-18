.class public Lcn/nubia/gallery3d/app/SlideshowPage$Slide;
.super Ljava/lang/Object;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slide"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public index:I

.field public item:Lcn/nubia/gallery3d/data/MediaItem;

.field public multiShootPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/MediaItem;ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p3, p0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    .line 148
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->item:Lcn/nubia/gallery3d/data/MediaItem;

    .line 149
    iput p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->index:I

    .line 150
    iput-object p4, p0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->multiShootPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
