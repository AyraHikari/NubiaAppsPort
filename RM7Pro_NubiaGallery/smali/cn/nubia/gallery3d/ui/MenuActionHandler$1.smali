.class Lcn/nubia/gallery3d/ui/MenuActionHandler$1;
.super Ljava/lang/Object;
.source "MenuActionHandler.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/MenuActionHandler;->setMenuActionListener(Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/MenuActionHandler;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$000(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 68
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$100(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$100(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcn/nubia/gallery3d/ui/MenuActionHandler$MenuActionListener;->onMenuItemClicked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$200(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    :cond_0
    const/4 v1, 0x0

    const v2, 0x7f090013

    if-eq p1, v2, :cond_5

    const v2, 0x7f090025

    if-eq p1, v2, :cond_5

    const v2, 0x7f09000e

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x7f090014

    if-ne p1, v2, :cond_2

    .line 84
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$000(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    const v2, 0x7f090024

    if-ne p1, v2, :cond_4

    .line 86
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$200(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getHandleAll()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$000(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 89
    :cond_3
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$000(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f000a

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    .line 90
    invoke-static {v3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$200(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v3

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const v2, 0x7f090023

    if-ne p1, v2, :cond_7

    .line 93
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$000(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100115

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 77
    :cond_5
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$200(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getHandleAll()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 78
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$000(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 80
    :cond_6
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$000(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    .line 81
    invoke-static {v3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$200(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v3

    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_7
    :goto_1
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$400(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/MenuExecutor;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/MenuActionHandler$1;->this$0:Lcn/nubia/gallery3d/ui/MenuActionHandler;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->access$300(Lcn/nubia/gallery3d/ui/MenuActionHandler;)Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 98
    throw p1
.end method
