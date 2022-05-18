.class public Lcn/nubia/improve/slideshow/SlideShowEffectActivity;
.super Lcn/nubia/gallery3d/app/AbstractGalleryActivity;
.source "SlideShowEffectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, v1}, Lcn/nubia/improve/slideshow/SlideShowEffectActivity;->setResult(ILandroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectActivity;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setToolbarLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0045

    .line 38
    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/SlideShowEffectActivity;->setContentView(I)V

    .line 40
    new-instance p1, Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/app/GalleryAppBar;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V

    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectActivity;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    .line 41
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 48
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectActivity;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setToolbarLayout()V

    return-void
.end method
