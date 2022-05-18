.class public Lcn/nubia/gallery3d/app/PickerActivity;
.super Lcn/nubia/gallery3d/app/AbstractGalleryActivity;
.source "PickerActivity.java"


# static fields
.field public static final KEY_ALBUM_PATH:Ljava/lang/String; = "album-path"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PickerActivity;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setToolbarLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004e

    .line 39
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/PickerActivity;->setContentView(I)V

    .line 40
    new-instance p1, Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/app/GalleryAppBar;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/PickerActivity;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 52
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PickerActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 46
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PickerActivity;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setToolbarLayout()V

    return-void
.end method
