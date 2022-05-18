.class Lcn/nubia/gallery3d/app/CameraPage$8;
.super Lcn/nubia/gallery3d/ui/SlotView$SimpleListener;
.source "CameraPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CameraPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CameraPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public isScrollBarShow()Z
    .locals 2

    .line 842
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$1100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 844
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$1100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/ScrollBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onDown(I)V
    .locals 1

    .line 795
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$2600(Lcn/nubia/gallery3d/app/CameraPage;I)V

    return-void
.end method

.method public onHideScrollBar()V
    .locals 2

    .line 828
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$1100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$1100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/ScrollBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$1100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/ScrollBarView;->onHide(Z)V

    :cond_0
    return-void
.end method

.method public onLongTap(I)V
    .locals 1

    .line 810
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->onLongTap(I)V

    return-void
.end method

.method public onScrollPositionChanged(II)V
    .locals 1

    .line 815
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0, p1, p2}, Lcn/nubia/gallery3d/app/CameraPage;->access$2900(Lcn/nubia/gallery3d/app/CameraPage;II)V

    return-void
.end method

.method public onSelectCluster(II)V
    .locals 2

    .line 849
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$3000(Lcn/nubia/gallery3d/app/CameraPage;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$3100(Lcn/nubia/gallery3d/app/CameraPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$3200(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/gallery3d/data/LocationAlbum;

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$3200(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/LocationAlbum;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/data/LocationAlbum;->getPath(II)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    .line 856
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$3200(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/CameraAlbum;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/data/CameraAlbum;->getPath(II)Ljava/util/ArrayList;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_4

    .line 858
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 862
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 863
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 864
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p2, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->select(Ljava/util/ArrayList;I)V

    .line 865
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p1, "CameraPage"

    const-string p2, "onSelectCluster return because of list == null"

    .line 859
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShare()V
    .locals 2

    .line 836
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/nubia/gallery3d/app/CameraPage;->mAllowFadeTexture:Z

    .line 837
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$1800(Lcn/nubia/gallery3d/app/CameraPage;)V

    return-void
.end method

.method public onShowScrollBar()V
    .locals 2

    .line 820
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$1100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$1100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/ScrollBarView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 821
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$1100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/ScrollBarView;->onShow(Z)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1

    .line 805
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$2800(Lcn/nubia/gallery3d/app/CameraPage;I)V

    return-void
.end method

.method public onUnSelectCluster(II)V
    .locals 2

    .line 871
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$3000(Lcn/nubia/gallery3d/app/CameraPage;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$3100(Lcn/nubia/gallery3d/app/CameraPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$3200(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/gallery3d/data/LocationAlbum;

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$3200(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/LocationAlbum;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/data/LocationAlbum;->getPath(II)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    .line 878
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$3200(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/CameraAlbum;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/data/CameraAlbum;->getPath(II)Ljava/util/ArrayList;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_4

    .line 880
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 884
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 885
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 886
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/CameraPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p2, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->unSelect(Ljava/util/ArrayList;I)V

    .line 887
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p1, "CameraPage"

    const-string p2, "onUnSelectCluster return because of list == null"

    .line 881
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUp(Z)V
    .locals 1

    .line 800
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$8;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/CameraPage;->access$2700(Lcn/nubia/gallery3d/app/CameraPage;Z)V

    return-void
.end method
