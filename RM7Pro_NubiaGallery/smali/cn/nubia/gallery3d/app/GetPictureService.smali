.class public Lcn/nubia/gallery3d/app/GetPictureService;
.super Landroid/app/Service;
.source "GetPictureService.java"


# instance fields
.field private myBinder:Lcn/nubia/gallery3d/app/GetPictureInterface$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 11
    new-instance v0, Lcn/nubia/gallery3d/app/GetPictureService$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/GetPictureService$1;-><init>(Lcn/nubia/gallery3d/app/GetPictureService;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GetPictureService;->myBinder:Lcn/nubia/gallery3d/app/GetPictureInterface$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 22
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GetPictureService;->myBinder:Lcn/nubia/gallery3d/app/GetPictureInterface$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 32
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
