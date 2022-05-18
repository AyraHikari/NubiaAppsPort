.class Lcn/nubia/gallery3d/app/AlbumPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumPage;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 1460
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/AlbumPage;Lcn/nubia/gallery3d/app/AlbumPage$1;)V
    .locals 0

    .line 1460
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumPage$MyLoadingListener;-><init>(Lcn/nubia/gallery3d/app/AlbumPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 2

    .line 1468
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$4700(Lcn/nubia/gallery3d/app/AlbumPage;I)V

    .line 1469
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$700(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$700(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectAll()V

    :cond_0
    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .line 1463
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$4800(Lcn/nubia/gallery3d/app/AlbumPage;I)V

    return-void
.end method
