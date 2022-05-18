.class Lcn/nubia/improve/move/AddExecutor$1;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "AddExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/move/AddExecutor;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/move/AddExecutor;


# direct methods
.method constructor <init>(Lcn/nubia/improve/move/AddExecutor;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/improve/move/AddExecutor$1;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$1;->this$0:Lcn/nubia/improve/move/AddExecutor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcn/nubia/improve/move/AddExecutor;->access$400(Lcn/nubia/improve/move/AddExecutor;II)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$1;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {v0}, Lcn/nubia/improve/move/AddExecutor;->access$300(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$1;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {v0}, Lcn/nubia/improve/move/AddExecutor;->access$300(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$1;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {v0}, Lcn/nubia/improve/move/AddExecutor;->access$000(Lcn/nubia/improve/move/AddExecutor;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$1;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {v0}, Lcn/nubia/improve/move/AddExecutor;->access$100(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 94
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$1;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {v0}, Lcn/nubia/improve/move/AddExecutor;->access$200(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppBar()Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/improve/move/AddExecutor$AddProgressListener;

    .line 97
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcn/nubia/improve/move/AddExecutor$AddProgressListener;->onProgressComplete(II)V

    :cond_3
    :goto_0
    return-void
.end method
