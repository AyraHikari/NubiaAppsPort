.class Lcn/nubia/gallery3d/app/CloudPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "CloudPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/CloudPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CloudPage;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/CloudPage;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/CloudPage;Lcn/nubia/gallery3d/app/CloudPage$1;)V
    .locals 0

    .line 757
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CloudPage$MyLoadingListener;-><init>(Lcn/nubia/gallery3d/app/CloudPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 2

    .line 765
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/CloudPage;->access$2900(Lcn/nubia/gallery3d/app/CloudPage;I)V

    .line 766
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CloudPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/CloudPage;->access$3200(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcn/nubia/gallery3d/data/MediaSet;)V

    .line 767
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CloudPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/gallery3d/ui/MenuActionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/MenuActionHandler;->updateSelectAll()V

    :cond_0
    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .line 760
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$MyLoadingListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/CloudPage;->access$3100(Lcn/nubia/gallery3d/app/CloudPage;I)V

    return-void
.end method
