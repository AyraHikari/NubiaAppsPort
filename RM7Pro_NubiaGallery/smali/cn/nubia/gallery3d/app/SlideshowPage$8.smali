.class Lcn/nubia/gallery3d/app/SlideshowPage$8;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;->notityMediaDataChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$8;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    const-string p1, "SlideshowPage"

    const-string v0, "SlideShow-save ok!!!"

    .line 538
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$8;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$8;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->isPaused()Z

    move-result p1

    if-nez p1, :cond_0

    .line 540
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "cn.nubia.gallery.action.force.REVIEW"

    .line 541
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 544
    iget-object p2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$8;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    iget-object p2, p2, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p2, Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
