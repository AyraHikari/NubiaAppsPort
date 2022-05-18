.class Lcn/nubia/gallery3d/data/CommonService$1;
.super Lcn/nubia/gallery3d/data/CommonInterface$Stub;
.source "CommonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/CommonService;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/CommonService;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcn/nubia/gallery3d/data/CommonService$1;->this$0:Lcn/nubia/gallery3d/data/CommonService;

    invoke-direct {p0}, Lcn/nubia/gallery3d/data/CommonInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraForSelection()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CommonService$1;->this$0:Lcn/nubia/gallery3d/data/CommonService;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/CommonService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->setup(Landroid/content/Context;)V

    const/4 v0, 0x6

    .line 21
    invoke-static {v0}, Lcn/nubia/gallery3d/data/CameraAlbum;->getCameraSelections(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
