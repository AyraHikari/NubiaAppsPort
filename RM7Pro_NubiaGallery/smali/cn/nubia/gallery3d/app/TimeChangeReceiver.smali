.class public Lcn/nubia/gallery3d/app/TimeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangeReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private notifyCameraPage()V
    .locals 3

    .line 29
    sget-object v0, Lcn/nubia/gallery3d/data/CameraAlbum;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    instance-of v1, v0, Lcn/nubia/gallery3d/data/CameraAlbum;

    if-eqz v1, :cond_0

    const-string v1, "TimeChangeReceiver"

    const-string v2, "notifyCameraPage"

    .line 31
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    check-cast v0, Lcn/nubia/gallery3d/data/CameraAlbum;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/CameraAlbum;->needReloadClusters(Z)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TimeChangeReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/improve/ImproveConfig;->isSupportCategory(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/local/all/location"

    .line 35
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/LocationAlbumSet;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TimeChangeReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 20
    iput-object p1, p0, Lcn/nubia/gallery3d/app/TimeChangeReceiver;->mContext:Landroid/content/Context;

    const-string v0, "android.intent.action.TIME_SET"

    if-eq v0, p2, :cond_0

    const-string v0, "android.intent.action.DATE_CHANGED"

    if-ne v0, p2, :cond_1

    :cond_0
    const-string p2, "TimeChangeReceiver"

    const-string v0, "onReceive"

    .line 22
    invoke-static {p2, v0}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {p1}, Lcn/nubia/gallery3d/app/AutoDeleteService;->startDeleteService(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/TimeChangeReceiver;->notifyCameraPage()V

    :cond_1
    return-void
.end method
