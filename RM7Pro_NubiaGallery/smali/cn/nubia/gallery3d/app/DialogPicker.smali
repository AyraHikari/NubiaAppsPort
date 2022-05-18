.class public Lcn/nubia/gallery3d/app/DialogPicker;
.super Lcn/nubia/gallery3d/app/PickerActivity;
.source "DialogPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 27
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/DialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    .line 30
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/DialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    new-instance v1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    const/4 v2, 0x0

    const-string v3, "get_multi_content"

    .line 34
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 35
    iget-object v2, p0, Lcn/nubia/gallery3d/app/DialogPicker;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setGetContentConfig()V

    xor-int/lit8 v2, v0, 0x1

    const-string v4, "get-content"

    .line 36
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "max_num"

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "type-bits"

    .line 39
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/DialogPicker;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "media-path"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is-tab"

    .line 41
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/DialogPicker;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v0, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
