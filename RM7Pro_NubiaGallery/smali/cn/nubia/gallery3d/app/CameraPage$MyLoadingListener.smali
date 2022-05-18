.class Lcn/nubia/gallery3d/app/CameraPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "CameraPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/CameraPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CameraPage;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 1232
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/CameraPage;Lcn/nubia/gallery3d/app/CameraPage$1;)V
    .locals 0

    .line 1232
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CameraPage$MyLoadingListener;-><init>(Lcn/nubia/gallery3d/app/CameraPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 2

    .line 1240
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/CameraPage;->access$3800(Lcn/nubia/gallery3d/app/CameraPage;I)V

    .line 1241
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$700(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$700(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectAll()V

    :cond_0
    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .line 1235
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/CameraPage;->access$3900(Lcn/nubia/gallery3d/app/CameraPage;I)V

    return-void
.end method
