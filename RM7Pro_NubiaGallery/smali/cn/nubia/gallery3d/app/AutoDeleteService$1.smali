.class Lcn/nubia/gallery3d/app/AutoDeleteService$1;
.super Landroid/os/Handler;
.source "AutoDeleteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AutoDeleteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AutoDeleteService;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AutoDeleteService;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AutoDeleteService$1;->this$0:Lcn/nubia/gallery3d/app/AutoDeleteService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 42
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "AutoDeleteService"

    const-string v0, "delete done"

    .line 44
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AutoDeleteService$1;->this$0:Lcn/nubia/gallery3d/app/AutoDeleteService;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AutoDeleteService;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirtyWithRecycledAlbum()V

    .line 51
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AutoDeleteService$1;->this$0:Lcn/nubia/gallery3d/app/AutoDeleteService;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AutoDeleteService;->stopSelf()V

    return-void
.end method
