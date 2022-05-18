.class Lcn/nubia/gallery3d/app/AlbumSetPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .line 1190
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetPage;Lcn/nubia/gallery3d/app/AlbumSetPage$1;)V
    .locals 0

    .line 1190
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 2

    .line 1198
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$3600(Lcn/nubia/gallery3d/app/AlbumSetPage;I)V

    .line 1199
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$500(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$500(Lcn/nubia/gallery3d/app/AlbumSetPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectAll()V

    :cond_0
    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .line 1193
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->access$3500(Lcn/nubia/gallery3d/app/AlbumSetPage;I)V

    return-void
.end method
