.class Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;
.super Ljava/lang/Object;
.source "AlbumView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/move/AlbumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAlbumViewGestureListener"
.end annotation


# instance fields
.field private isDown:Z

.field final synthetic this$0:Lcn/nubia/improve/move/AlbumView;


# direct methods
.method private constructor <init>(Lcn/nubia/improve/move/AlbumView;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/improve/move/AlbumView;Lcn/nubia/improve/move/AlbumView$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;-><init>(Lcn/nubia/improve/move/AlbumView;)V

    return-void
.end method

.method private cancelDown(Z)V
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->isDown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->isDown:Z

    .line 122
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    iget-object v0, v0, Lcn/nubia/improve/move/AlbumView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onUp(Z)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 133
    invoke-static {}, Lcn/nubia/improve/move/AlbumView;->access$200()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    .line 135
    invoke-direct {p0, p1}, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->cancelDown(Z)V

    .line 136
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v0}, Lcn/nubia/improve/move/AlbumView;->access$300(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getScrollLimit()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    .line 138
    :cond_1
    iget-object v1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v1}, Lcn/nubia/improve/move/AlbumView;->access$400(Lcn/nubia/improve/move/AlbumView;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move p3, p4

    .line 139
    :goto_0
    iget-object p4, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {p4}, Lcn/nubia/improve/move/AlbumView;->access$500(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/ScrollerHelper;

    move-result-object p4

    neg-float p3, p3

    float-to-int p3, p3

    invoke-virtual {p4, p3, p1, v0}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->fling(III)V

    .line 140
    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {p1}, Lcn/nubia/improve/move/AlbumView;->access$600(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/UserInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {p1}, Lcn/nubia/improve/move/AlbumView;->access$700(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/UserInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 141
    :cond_3
    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-virtual {p1}, Lcn/nubia/improve/move/AlbumView;->invalidate()V

    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x1

    .line 196
    invoke-direct {p0, v0}, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->cancelDown(Z)V

    .line 197
    iget-object v1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v1}, Lcn/nubia/improve/move/AlbumView;->access$2700(Lcn/nubia/improve/move/AlbumView;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v1, v0}, Lcn/nubia/improve/move/AlbumView;->access$902(Lcn/nubia/improve/move/AlbumView;Z)Z

    .line 199
    invoke-static {}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    move-result-object v1

    const-string v2, "cn.nubia.gallery3d"

    const-string v3, "gallery_swipe_select"

    invoke-virtual {v1, v2, v3}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-virtual {v1}, Lcn/nubia/improve/move/AlbumView;->lockRendering()V

    .line 202
    :try_start_0
    iget-object v1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v1}, Lcn/nubia/improve/move/AlbumView;->access$2800(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotIndexByPosition(FF)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 205
    iget-object v1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v1}, Lcn/nubia/improve/move/AlbumView;->access$2900(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v0}, Lcn/nubia/improve/move/AlbumView;->access$3000(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->actionLongPress(I)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    iget-object v0, v0, Lcn/nubia/improve/move/AlbumView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onLongTap(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-virtual {p1}, Lcn/nubia/improve/move/AlbumView;->unlockRendering()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-virtual {v0}, Lcn/nubia/improve/move/AlbumView;->unlockRendering()V

    .line 214
    throw p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 148
    invoke-static {}, Lcn/nubia/improve/move/AlbumView;->access$800()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    .line 149
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {p1}, Lcn/nubia/improve/move/AlbumView;->access$900(Lcn/nubia/improve/move/AlbumView;)Z

    move-result p1

    if-eqz p1, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x0

    .line 153
    invoke-direct {p0, p1}, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->cancelDown(Z)V

    .line 155
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v0}, Lcn/nubia/improve/move/AlbumView;->access$1000(Lcn/nubia/improve/move/AlbumView;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move p3, p4

    .line 156
    :goto_0
    iget-object p4, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {p4}, Lcn/nubia/improve/move/AlbumView;->access$1200(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/ScrollerHelper;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    .line 157
    invoke-static {v0}, Lcn/nubia/improve/move/AlbumView;->access$1100(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getScrollLimit()I

    move-result v0

    .line 156
    invoke-virtual {p4, p3, p1, v0}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->startScroll(III)I

    move-result p1

    .line 158
    iget-object p3, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    iget p3, p3, Lcn/nubia/improve/move/AlbumView;->mOverscrollEffect:I

    if-nez p3, :cond_3

    if-eqz p1, :cond_3

    .line 159
    iget-object p3, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {p3}, Lcn/nubia/improve/move/AlbumView;->access$1300(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/Paper;

    move-result-object p3

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Lcn/nubia/gallery3d/ui/Paper;->overScroll(F)V

    .line 164
    :cond_3
    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-virtual {p1}, Lcn/nubia/improve/move/AlbumView;->invalidate()V

    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-virtual {v0}, Lcn/nubia/improve/move/AlbumView;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 108
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->isDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    .line 109
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v1}, Lcn/nubia/improve/move/AlbumView;->access$100(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotIndexByPosition(FF)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->isDown:Z

    .line 112
    iget-object v1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    iget-object v1, v1, Lcn/nubia/improve/move/AlbumView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {v1, p1}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onDown(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :cond_1
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 116
    throw p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0}, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->cancelDown(Z)V

    .line 171
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v0}, Lcn/nubia/improve/move/AlbumView;->access$1400(Lcn/nubia/improve/move/AlbumView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 172
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v0}, Lcn/nubia/improve/move/AlbumView;->access$1500(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 173
    iget-object v2, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v2}, Lcn/nubia/improve/move/AlbumView;->access$1600(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;

    move-result-object v2

    instance-of v2, v2, Lcn/nubia/gallery3d/ui/layout/CameraLayout;

    const/4 v3, -0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v2}, Lcn/nubia/improve/move/AlbumView;->access$1700(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;

    move-result-object v2

    instance-of v2, v2, Lcn/nubia/gallery3d/ui/layout/LocationLayout;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v2}, Lcn/nubia/improve/move/AlbumView;->access$1800(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;

    move-result-object v2

    instance-of v2, v2, Lcn/nubia/gallery3d/ui/layout/AlbumLayout;

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    .line 174
    invoke-static {v2}, Lcn/nubia/improve/move/AlbumView;->access$1900(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v2}, Lcn/nubia/improve/move/AlbumView;->access$2000(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    .line 175
    invoke-static {v2}, Lcn/nubia/improve/move/AlbumView;->access$2000(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    .line 176
    invoke-static {v2}, Lcn/nubia/improve/move/AlbumView;->access$2000(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->isInMultiSelectionMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 178
    iget-object v2, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v2}, Lcn/nubia/improve/move/AlbumView;->access$2200(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v5, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v5}, Lcn/nubia/improve/move/AlbumView;->access$2100(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/ClusterHeader;

    move-result-object v5

    invoke-virtual {v2, v4, p1, v5}, Lcn/nubia/gallery3d/ui/layout/Layout;->getClusterIndexByPosition(FFLcn/nubia/gallery3d/ui/ClusterHeader;)I

    move-result p1

    if-eq p1, v3, :cond_2

    .line 180
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {v0}, Lcn/nubia/improve/move/AlbumView;->access$2300(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->actionSelectCluster(I)V

    goto :goto_0

    :cond_2
    if-eq v0, v3, :cond_4

    .line 182
    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    iget-object p1, p1, Lcn/nubia/improve/move/AlbumView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onSingleTapUp(I)V

    .line 183
    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {p1}, Lcn/nubia/improve/move/AlbumView;->access$2400(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->actionSinpleTap(I)V

    goto :goto_0

    :cond_3
    if-eq v0, v3, :cond_4

    .line 186
    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    iget-object p1, p1, Lcn/nubia/improve/move/AlbumView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onSingleTapUp(I)V

    .line 187
    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {p1}, Lcn/nubia/improve/move/AlbumView;->access$2500(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {p1}, Lcn/nubia/improve/move/AlbumView;->access$2000(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {p1}, Lcn/nubia/improve/move/AlbumView;->access$2000(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 188
    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;->this$0:Lcn/nubia/improve/move/AlbumView;

    invoke-static {p1}, Lcn/nubia/improve/move/AlbumView;->access$2600(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->actionSinpleTap(I)V

    :cond_4
    :goto_0
    return v1
.end method
