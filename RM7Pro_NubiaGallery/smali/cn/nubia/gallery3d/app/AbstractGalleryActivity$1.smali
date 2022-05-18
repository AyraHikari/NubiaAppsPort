.class Lcn/nubia/gallery3d/app/AbstractGalleryActivity$1;
.super Landroid/database/ContentObserver;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->initNavigationBarObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;Landroid/os/Handler;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$1;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 121
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$1;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->access$000(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)Lcn/nubia/gallery3d/app/AbstractGalleryActivity$INavVisibilityListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$1;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->access$000(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)Lcn/nubia/gallery3d/app/AbstractGalleryActivity$INavVisibilityListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$1;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    .line 123
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v0

    .line 122
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$INavVisibilityListener;->onNavVisibilityChanged(Z)V

    :cond_0
    return-void
.end method
