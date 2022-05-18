.class Lcn/nubia/gallery3d/app/AbstractGalleryActivity$2;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/AbstractGalleryActivity$INavVisibilityListener;


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
.method constructor <init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavVisibilityChanged(Z)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->refreshGlrootView(Z)V

    :cond_0
    return-void
.end method
