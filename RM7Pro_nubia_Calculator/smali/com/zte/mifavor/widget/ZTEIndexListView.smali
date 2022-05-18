.class public Lcom/zte/mifavor/widget/ZTEIndexListView;
.super Lcom/zte/mifavor/widget/ListView;
.source "ZTEIndexListView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ZTEIndexListView"


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsFastScrollEnabled:Z

.field private mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mIsFastScrollEnabled:Z

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .line 23
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mIsFastScrollEnabled:Z

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .line 23
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mIsFastScrollEnabled:Z

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .line 23
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/ZTEIndexListView;)Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 60
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ListView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    const/4 v0, 0x0

    move v1, v0

    .line 62
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEIndexListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 63
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ZTEIndexListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "ZTEIndexListView"

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "child "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "ZTEIndexListView"

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header,footer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEIndexListView;->getHeaderViewsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEIndexListView;->getFooterViewsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEIndexListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEIndexListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string v1, "ZTEIndexListView"

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEIndexListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_2

    .line 76
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    const-string p1, "ZTEIndexListView"

    const-string v0, "draw error, e = "

    .line 79
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mIsFastScrollEnabled:Z

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/widget/ListView;->onSizeChanged(IIII)V

    .line 130
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEIndexListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/zte/mifavor/widget/ZTEIndexListView$1;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/ZTEIndexListView$1;-><init>(Lcom/zte/mifavor/widget/ZTEIndexListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 110
    :cond_2
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 17
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setAdapter(Landroid/widget/Adapter;)V

    :cond_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    .line 44
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mIsFastScrollEnabled:Z

    .line 45
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mIsFastScrollEnabled:Z

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-nez p1, :cond_1

    .line 47
    new-instance p1, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEIndexListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->hide()V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    :cond_1
    :goto_0
    return-void
.end method

.method public setIndexBarTopMargin(F)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_0

    .line 149
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    :cond_0
    return-void
.end method

.method public showPreviewNotOnScrollBar(Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowPreviewNotOnScrollBar:Z

    :cond_0
    return-void
.end method

.method public showScrollerBar(Z)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    if-eqz v0, :cond_0

    .line 136
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView;->mScroller:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowScrollerBar:Z

    :cond_0
    return-void
.end method
