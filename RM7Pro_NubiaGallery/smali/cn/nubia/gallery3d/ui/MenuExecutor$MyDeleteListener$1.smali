.class Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$1;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->deleteDone()V
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

    .line 860
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$1;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 863
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$1;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1200(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    const/16 v1, 0x80

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$1;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    iget v2, v0, Lcn/nubia/gallery3d/ui/MenuExecutor;->temp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcn/nubia/gallery3d/ui/MenuExecutor;->temp:I

    .line 865
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$1;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1200(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setProgress(I)V

    .line 866
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$1;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1200(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->getMax()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 867
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$1;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$000(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 869
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$1;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    const/4 v1, 0x0

    iput v1, v0, Lcn/nubia/gallery3d/ui/MenuExecutor;->temp:I

    .line 870
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$1;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1200(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 871
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$1;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1202(Lcn/nubia/gallery3d/ui/MenuExecutor;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;

    .line 872
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$1;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$200(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 875
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener$1;->this$1:Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$000(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method
