.class Lcn/nubia/gallery3d/app/AlbumPage$8;
.super Lcn/nubia/gallery3d/ui/SlotView$SimpleListener;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public isScrollBarShow()Z
    .locals 2

    .line 1021
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$4200(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1023
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$4200(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/ScrollBarView;

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

    .line 983
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$3800(Lcn/nubia/gallery3d/app/AlbumPage;I)V

    return-void
.end method

.method public onHideScrollBar()V
    .locals 0

    return-void
.end method

.method public onLongTap(I)V
    .locals 1

    .line 998
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->onLongTap(I)V

    return-void
.end method

.method public onScrollPositionChanged(II)V
    .locals 1

    .line 1003
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0, p1, p2}, Lcn/nubia/gallery3d/app/AlbumPage;->access$4100(Lcn/nubia/gallery3d/app/AlbumPage;II)V

    return-void
.end method

.method public onSelectCluster(II)V
    .locals 2

    .line 1027
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$4300(Lcn/nubia/gallery3d/app/AlbumPage;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1031
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1900(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/gallery3d/data/LocalAllAlbum;

    if-eqz v1, :cond_1

    .line 1032
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1900(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/LocalAllAlbum;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->getPath(II)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    .line 1034
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_2

    goto :goto_0

    .line 1038
    :cond_2
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object p2, p2, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1039
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object p2, p2, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 1040
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object p2, p2, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p2, v0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->select(Ljava/util/ArrayList;I)V

    .line 1041
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$000(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p1, "AlbumPage"

    const-string p2, "onSelectCluster return because of list == null"

    .line 1035
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShare()V
    .locals 1

    .line 1016
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$2400(Lcn/nubia/gallery3d/app/AlbumPage;)V

    return-void
.end method

.method public onShowScrollBar()V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1

    .line 993
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$4000(Lcn/nubia/gallery3d/app/AlbumPage;I)V

    return-void
.end method

.method public onUnSelectCluster(II)V
    .locals 2

    .line 1047
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$4300(Lcn/nubia/gallery3d/app/AlbumPage;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1051
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1900(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/gallery3d/data/LocalAllAlbum;

    if-eqz v1, :cond_1

    .line 1052
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumPage;->access$1900(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/LocalAllAlbum;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/data/LocalAllAlbum;->getPath(II)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    .line 1054
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_2

    goto :goto_0

    .line 1058
    :cond_2
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object p2, p2, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1059
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object p2, p2, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 1060
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    iget-object p2, p2, Lcn/nubia/gallery3d/app/AlbumPage;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p2, v0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->unSelect(Ljava/util/ArrayList;I)V

    .line 1061
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$000(Lcn/nubia/gallery3d/app/AlbumPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p1, "AlbumPage"

    const-string p2, "onUnSelectCluster return because of list == null"

    .line 1055
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUp(Z)V
    .locals 1

    .line 988
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumPage$8;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$3900(Lcn/nubia/gallery3d/app/AlbumPage;Z)V

    return-void
.end method
