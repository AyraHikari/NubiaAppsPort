.class public Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;
.super Landroid/widget/RelativeLayout;
.source "NotePadSyncContentLayout.java"


# instance fields
.field private mEventHelper:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public hideHeaderOrFooter()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->mEventHelper:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->hideHeaderOrFooter()V

    .line 72
    return-void
.end method

.method public onDataLoadingCompleted(II)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "state"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->mEventHelper:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->stopLoading(II)V

    .line 60
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 36
    const v0, 0x7f0f00d3

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 37
    .local v2, "listView":Landroid/widget/ListView;
    const v0, 0x7f0f00d4

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 38
    .local v4, "footerView":Landroid/view/View;
    const v0, 0x7f0f00d2

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 39
    .local v3, "headerView":Landroid/view/View;
    const v0, 0x7f0f00d1

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 40
    .local v5, "backgroundView":Landroid/view/View;
    new-instance v0, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;

    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;-><init>(Landroid/content/Context;Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->mEventHelper:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;

    .line 42
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->mEventHelper:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->mEventHelper:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCanDragToSynchronization(Z)V
    .locals 1
    .param p1, "canDragToSynchronization"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->mEventHelper:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->setCanDragToSynchronization(Z)V

    .line 76
    return-void
.end method

.method public setIsStackForBottom(Z)V
    .locals 2
    .param p1, "isStackForBottom"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->mEventHelper:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;

    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->setIsStackFromBottom(Landroid/content/Context;Z)V

    .line 80
    return-void
.end method

.method public setLoadDataListener(Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;)V
    .locals 1
    .param p1, "listener"    # Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->mEventHelper:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->setLoadDataListener(Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;)V

    .line 56
    return-void
.end method

.method public startLoadingAnimation()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->mEventHelper:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->startLoadingAnimation()V

    .line 68
    return-void
.end method

.method public updateSyncTip(II)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "state"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->mEventHelper:Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper;->updateSyncTip(II)V

    .line 64
    return-void
.end method
