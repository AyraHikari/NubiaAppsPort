.class public Lcn/nubia/gallery3d/util/MountBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MountBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MountBroadcastReceiver"

    invoke-static {v2, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->setup(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lcn/nubia/gallery3d/data/CameraAlbum;->reloadSelection()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirtyWithRecycledAlbum()V

    .line 22
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    invoke-static {}, Lcn/nubia/gallery3d/util/RecycleHelper;->setupSdRecycledFolder()V

    :cond_2
    return-void
.end method
