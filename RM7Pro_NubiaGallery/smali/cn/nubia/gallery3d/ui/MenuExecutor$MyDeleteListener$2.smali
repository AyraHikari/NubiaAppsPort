.class Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$2;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->deleteError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$2;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 887
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$2;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$000(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10007a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 888
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 889
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$2;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$000(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 891
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$2;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1200(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$2;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    iput v2, v0, Lcn/nubia/gallery3d/ui/MenuExecutor;->temp:I

    .line 893
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$2;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1200(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 894
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$2;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1202(Lcn/nubia/gallery3d/ui/MenuExecutor;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;

    .line 895
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$2;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$200(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    :cond_0
    return-void
.end method
