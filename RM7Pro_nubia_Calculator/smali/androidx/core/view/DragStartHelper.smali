.class public Landroidx/core/view/DragStartHelper;
.super Ljava/lang/Object;
.source "DragStartHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DragStartHelper$OnDragStartListener;
    }
.end annotation


# instance fields
.field private mDragging:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/DragStartHelper$OnDragStartListener;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Landroidx/core/view/DragStartHelper$1;

    invoke-direct {v0, p0}, Landroidx/core/view/DragStartHelper$1;-><init>(Landroidx/core/view/DragStartHelper;)V

    iput-object v0, p0, Landroidx/core/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 188
    new-instance v0, Landroidx/core/view/DragStartHelper$2;

    invoke-direct {v0, p0}, Landroidx/core/view/DragStartHelper$2;-><init>(Landroidx/core/view/DragStartHelper;)V

    iput-object v0, p0, Landroidx/core/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 97
    iput-object p1, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    .line 98
    iput-object p2, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 2

    .line 107
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/core/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    iget-object p0, p0, Landroidx/core/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public detach()V
    .locals 2

    .line 117
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 118
    iget-object p0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getTouchPosition(Landroid/graphics/Point;)V
    .locals 1

    .line 178
    iget v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    iget p0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v0, p1, p0}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result p0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x2002

    .line 138
    invoke-static {p2, v2}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p2

    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-boolean p2, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    if-eqz p2, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    iget p2, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    if-ne p2, v0, :cond_2

    iget p2, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    if-ne p2, v1, :cond_2

    goto :goto_0

    .line 151
    :cond_2
    iput v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    .line 152
    iput v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    .line 153
    iget-object p2, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {p2, p1, p0}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    .line 154
    iget-boolean p0, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    return p0

    .line 158
    :pswitch_1
    iput-boolean v3, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    goto :goto_0

    .line 133
    :pswitch_2
    iput v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    .line 134
    iput v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    :cond_3
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
