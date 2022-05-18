.class public Lcn/nubia/gallery3d/data/CommonService;
.super Landroid/app/Service;
.source "CommonService.java"


# instance fields
.field private myBinderStub:Lcn/nubia/gallery3d/data/CommonInterface$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    new-instance v0, Lcn/nubia/gallery3d/data/CommonService$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/data/CommonService$1;-><init>(Lcn/nubia/gallery3d/data/CommonService;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/CommonService;->myBinderStub:Lcn/nubia/gallery3d/data/CommonInterface$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 14
    iget-object p1, p0, Lcn/nubia/gallery3d/data/CommonService;->myBinderStub:Lcn/nubia/gallery3d/data/CommonInterface$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
