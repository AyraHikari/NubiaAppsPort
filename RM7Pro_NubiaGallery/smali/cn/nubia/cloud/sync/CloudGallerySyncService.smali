.class public Lcn/nubia/cloud/sync/CloudGallerySyncService;
.super Landroid/app/Service;
.source "CloudGallerySyncService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "wanghuajie"

    const-string v0, "CloudGallerySyncService__onBind()"

    .line 19
    invoke-static {p1, v0}, Lcn/nubia/cloud/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance p1, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;

    invoke-direct {p1, p0}, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcn/nubia/cloud/sync/CloudGalleryDbStorage;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "wanghuajie"

    const-string v1, "CloudGallerySyncService__onCreate()"

    .line 12
    invoke-static {v0, v1}, Lcn/nubia/cloud/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
