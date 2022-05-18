.class public Lcn/nubia/gallery3d/app/AlbumInfoPicker;
.super Lcn/nubia/gallery3d/app/PickerActivity;
.source "AlbumInfoPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/PickerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x10

    const v1, 0x7f010029

    const v2, 0x7f010011

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumInfoPicker;->finish()V

    .line 53
    invoke-virtual {p0, v2, v1}, Lcn/nubia/gallery3d/app/AlbumInfoPicker;->overridePendingTransition(II)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumInfoPicker;->finish()V

    .line 49
    invoke-virtual {p0, v2, v1}, Lcn/nubia/gallery3d/app/AlbumInfoPicker;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1001e0

    .line 31
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/AlbumInfoPicker;->setTitle(I)V

    .line 32
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumInfoPicker;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    const-string v0, "is-tab"

    const/4 v1, 0x1

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "get-album"

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumInfoPicker;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "media-path"

    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumInfoPicker;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
