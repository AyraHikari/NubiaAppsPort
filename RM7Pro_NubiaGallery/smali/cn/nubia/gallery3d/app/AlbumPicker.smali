.class public Lcn/nubia/gallery3d/app/AlbumPicker;
.super Lcn/nubia/gallery3d/app/PickerActivity;
.source "AlbumPicker.java"


# static fields
.field public static final KEY_ALBUM_PATH:Ljava/lang/String; = "album-path"

.field public static final KEY_MEDIAITEM_COUNT:Ljava/lang/String; = "mediaitem-count"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1001e0

    .line 33
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/AlbumPicker;->setTitle(I)V

    .line 34
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumPicker;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    const-string v0, "get-album"

    const/4 v1, 0x1

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumPicker;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "media-path"

    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AlbumPicker;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
