.class Lcn/nubia/improve/category/FaceMenuExecutor$1;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "FaceMenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/category/FaceMenuExecutor;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/category/FaceMenuExecutor;


# direct methods
.method constructor <init>(Lcn/nubia/improve/category/FaceMenuExecutor;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/improve/category/FaceMenuExecutor$1;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/category/FaceMenuExecutor$1;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-static {v0}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$000(Lcn/nubia/improve/category/FaceMenuExecutor;)V

    .line 51
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;

    .line 53
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;->onProgressComplete(I)V

    .line 55
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/category/FaceMenuExecutor$1;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-static {p1}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$100(Lcn/nubia/improve/category/FaceMenuExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    :goto_0
    return-void
.end method
