.class Lcn/nubia/gallery3d/app/SlideshowPage$14;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;->onCreateActionBar(Landroid/view/Menu;)Z
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

    .line 1179
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$14;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1182
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$14;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1183
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$14;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/SlideshowPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    .line 1184
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f010012

    const v1, 0x7f010028

    .line 1185
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
