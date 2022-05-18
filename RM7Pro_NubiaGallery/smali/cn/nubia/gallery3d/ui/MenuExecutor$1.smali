.class Lcn/nubia/gallery3d/ui/MenuExecutor$1;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/MenuExecutor;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/MenuExecutor;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$000(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$600(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$600(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setProgress(I)V

    .line 164
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 165
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    .line 166
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;->onProgressUpdate(I)V

    goto/16 :goto_0

    .line 139
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$000(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->notifyDirtyWithRecycledAlbum()V

    .line 140
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$100(Lcn/nubia/gallery3d/ui/MenuExecutor;)V

    .line 141
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const-string v0, "MenuExecutor"

    const-string v1, "Recycle/Recover failed."

    .line 142
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 145
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    .line 146
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;->onProgressComplete(I)V

    .line 148
    :cond_5
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$000(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 150
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$200(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 151
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$000(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppBar()Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showBlankView(I)V

    .line 152
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$300(Lcn/nubia/gallery3d/ui/MenuExecutor;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 153
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$302(Lcn/nubia/gallery3d/ui/MenuExecutor;Z)Z

    .line 154
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$400(Lcn/nubia/gallery3d/ui/MenuExecutor;)V

    goto :goto_0

    .line 155
    :cond_6
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$500(Lcn/nubia/gallery3d/ui/MenuExecutor;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 156
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$500(Lcn/nubia/gallery3d/ui/MenuExecutor;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 157
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$1;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$502(Lcn/nubia/gallery3d/ui/MenuExecutor;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_7
    :goto_0
    return-void
.end method
