.class public Lcn/nubia/improve/move/AlbumView;
.super Lcn/nubia/gallery3d/ui/SlotView;
.source "AlbumView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;
    }
.end annotation


# instance fields
.field private final OFFSET:I

.field private deltaX:F

.field private deltaY:F

.field private final mAlbumViewGestureDetector:Landroid/view/GestureDetector;

.field private mDownNotInSelectionMode:Z

.field private mEnterQuicklySelection:Z

.field private mScrollUpDownFlag:Z

.field private mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

.field private preX:F

.field private preY:F


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V
    .locals 3

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/SlotView;-><init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcn/nubia/improve/move/AlbumView;->preX:F

    .line 19
    iput v0, p0, Lcn/nubia/improve/move/AlbumView;->preY:F

    .line 20
    iput v0, p0, Lcn/nubia/improve/move/AlbumView;->deltaX:F

    .line 21
    iput v0, p0, Lcn/nubia/improve/move/AlbumView;->deltaY:F

    const/16 v0, 0xa

    .line 22
    iput v0, p0, Lcn/nubia/improve/move/AlbumView;->OFFSET:I

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcn/nubia/improve/move/AlbumView;->mEnterQuicklySelection:Z

    .line 25
    iput-boolean v0, p0, Lcn/nubia/improve/move/AlbumView;->mScrollUpDownFlag:Z

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcn/nubia/improve/move/AlbumView;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 29
    new-instance v1, Landroid/view/GestureDetector;

    .line 30
    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;

    invoke-direct {v2, p0, v0}, Lcn/nubia/improve/move/AlbumView$MyAlbumViewGestureListener;-><init>(Lcn/nubia/improve/move/AlbumView;Lcn/nubia/improve/move/AlbumView$1;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcn/nubia/improve/move/AlbumView;->mAlbumViewGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/improve/move/AlbumView;-><init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V

    .line 35
    iput-object p2, p0, Lcn/nubia/improve/move/AlbumView;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 36
    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    iget-object p2, p0, Lcn/nubia/improve/move/AlbumView;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1, p2}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->setSelectionManager(Lcn/nubia/gallery3d/ui/SelectionManager;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/improve/move/AlbumView;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcn/nubia/improve/move/AlbumView;->WIDE:Z

    return p0
.end method

.method static synthetic access$1100(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/ScrollerHelper;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/Paper;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mPaper:Lcn/nubia/gallery3d/ui/Paper;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/improve/move/AlbumView;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcn/nubia/improve/move/AlbumView;->mDownInScrolling:Z

    return p0
.end method

.method static synthetic access$1500(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 15
    sget-boolean v0, Lcn/nubia/improve/move/AlbumView;->mGestureLock:Z

    return v0
.end method

.method static synthetic access$2000(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/SelectionManager;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/ClusterHeader;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mClusterHeader:Lcn/nubia/gallery3d/ui/ClusterHeader;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    return-object p0
.end method

.method static synthetic access$2400(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    return-object p0
.end method

.method static synthetic access$2500(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    return-object p0
.end method

.method static synthetic access$2600(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    return-object p0
.end method

.method static synthetic access$2700(Lcn/nubia/improve/move/AlbumView;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcn/nubia/improve/move/AlbumView;->mDownInScrolling:Z

    return p0
.end method

.method static synthetic access$2800(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    return-object p0
.end method

.method static synthetic access$2900(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/layout/Layout;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    return-object p0
.end method

.method static synthetic access$3000(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/improve/move/AlbumView;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcn/nubia/improve/move/AlbumView;->WIDE:Z

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/ScrollerHelper;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/UserInteractionListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mUIListener:Lcn/nubia/gallery3d/ui/UserInteractionListener;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/improve/move/AlbumView;)Lcn/nubia/gallery3d/ui/UserInteractionListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/improve/move/AlbumView;->mUIListener:Lcn/nubia/gallery3d/ui/UserInteractionListener;

    return-object p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 15
    sget-boolean v0, Lcn/nubia/improve/move/AlbumView;->mGestureLock:Z

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/improve/move/AlbumView;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcn/nubia/improve/move/AlbumView;->mEnterQuicklySelection:Z

    return p0
.end method

.method static synthetic access$902(Lcn/nubia/improve/move/AlbumView;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcn/nubia/improve/move/AlbumView;->mEnterQuicklySelection:Z

    return p1
.end method


# virtual methods
.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 41
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView;->mUIListener:Lcn/nubia/gallery3d/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView;->mUIListener:Lcn/nubia/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    .line 43
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView;->mAlbumViewGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto/16 :goto_1

    .line 54
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcn/nubia/improve/move/AlbumView;->preY:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/improve/move/AlbumView;->deltaY:F

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcn/nubia/improve/move/AlbumView;->preX:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/improve/move/AlbumView;->deltaX:F

    .line 59
    iget-boolean v2, p0, Lcn/nubia/improve/move/AlbumView;->mEnterQuicklySelection:Z

    if-nez v2, :cond_7

    .line 60
    iget v2, p0, Lcn/nubia/improve/move/AlbumView;->deltaY:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v4, v2, v3

    const/high16 v5, -0x3ee00000    # -10.0f

    if-gtz v4, :cond_3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_4

    .line 61
    :cond_3
    iput-boolean v1, p0, Lcn/nubia/improve/move/AlbumView;->mScrollUpDownFlag:Z

    .line 63
    :cond_4
    iget-boolean v2, p0, Lcn/nubia/improve/move/AlbumView;->mScrollUpDownFlag:Z

    if-nez v2, :cond_7

    cmpl-float v2, v0, v3

    if-gtz v2, :cond_5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_7

    .line 65
    :cond_5
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    if-ltz v0, :cond_7

    .line 67
    iput-boolean v1, p0, Lcn/nubia/improve/move/AlbumView;->mEnterQuicklySelection:Z

    .line 69
    iget-object v2, p0, Lcn/nubia/improve/move/AlbumView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    if-eqz v2, :cond_6

    .line 70
    iget-object v2, p0, Lcn/nubia/improve/move/AlbumView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    invoke-virtual {v2, v0}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->actionLongPress(I)Z

    move-result v2

    goto :goto_0

    :cond_6
    move v2, v1

    :goto_0
    if-eqz v2, :cond_7

    .line 73
    iget-object v2, p0, Lcn/nubia/improve/move/AlbumView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {v2, v0}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onSingleTapUp(I)V

    .line 79
    :cond_7
    iget-boolean v0, p0, Lcn/nubia/improve/move/AlbumView;->mEnterQuicklySelection:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcn/nubia/improve/move/AlbumView;->mDownNotInSelectionMode:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 80
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    iget-object v2, p0, Lcn/nubia/improve/move/AlbumView;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->getMaxSelectionCount()I

    move-result v2

    if-ge v0, v2, :cond_b

    iget v0, p0, Lcn/nubia/improve/move/AlbumView;->deltaX:F

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v3, v0, v2

    if-gtz v3, :cond_8

    const/high16 v3, -0x3f600000    # -5.0f

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_8

    iget v0, p0, Lcn/nubia/improve/move/AlbumView;->deltaY:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_8

    cmpg-float v0, v0, v3

    if-gez v0, :cond_b

    .line 83
    :cond_8
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    invoke-virtual {p0}, Lcn/nubia/improve/move/AlbumView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->actionMove(Landroid/view/MotionEvent;I)Z

    .line 84
    invoke-virtual {p0}, Lcn/nubia/improve/move/AlbumView;->invalidate()V

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcn/nubia/improve/move/AlbumView;->mScrollUpDownFlag:Z

    .line 89
    iput-boolean p1, p0, Lcn/nubia/improve/move/AlbumView;->mEnterQuicklySelection:Z

    .line 90
    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onHideScrollBar()V

    .line 91
    iget-object p1, p0, Lcn/nubia/improve/move/AlbumView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    invoke-virtual {p1}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->actionUp()V

    goto :goto_1

    .line 47
    :cond_a
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcn/nubia/improve/move/AlbumView;->mDownInScrolling:Z

    .line 48
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcn/nubia/improve/move/AlbumView;->mDownNotInSelectionMode:Z

    .line 49
    iget-object v0, p0, Lcn/nubia/improve/move/AlbumView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->forceFinished()V

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/nubia/improve/move/AlbumView;->preX:F

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/nubia/improve/move/AlbumView;->preY:F

    :cond_b
    :goto_1
    return v1
.end method
