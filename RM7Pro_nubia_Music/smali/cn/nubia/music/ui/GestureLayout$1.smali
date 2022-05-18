.class Lcn/nubia/music/ui/GestureLayout$1;
.super Lcn/nubia/music/ui/GestureDetector$SimpleOnGestureListener;
.source "GestureLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/ui/GestureLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/ui/GestureLayout;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/GestureLayout;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcn/nubia/music/ui/GestureLayout$1;->a:Lcn/nubia/music/ui/GestureLayout;

    invoke-direct {p0}, Lcn/nubia/music/ui/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)I
    .locals 11

    .prologue
    const/high16 v10, 0x42480000    # 50.0f

    const-wide/16 v8, 0x0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    .line 61
    float-to-double v2, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v1, v10

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v10

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    float-to-double v0, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 68
    const/4 v0, 0x2

    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 75
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    const/4 v1, 0x2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcn/nubia/music/ui/GestureLayout$1;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 79
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/music/ui/GestureLayout$1;->a:Lcn/nubia/music/ui/GestureLayout;

    invoke-static {v0}, Lcn/nubia/music/ui/GestureLayout;->access$000(Lcn/nubia/music/ui/GestureLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcn/nubia/music/ui/GestureLayout$1;->a:Lcn/nubia/music/ui/GestureLayout;

    invoke-static {v0}, Lcn/nubia/music/ui/GestureLayout;->access$000(Lcn/nubia/music/ui/GestureLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/ui/GestureLayout$1;->a:Lcn/nubia/music/ui/GestureLayout;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 49
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/music/ui/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/music/ui/GestureLayout$1;->a:Lcn/nubia/music/ui/GestureLayout;

    invoke-static {v0}, Lcn/nubia/music/ui/GestureLayout;->access$100(Lcn/nubia/music/ui/GestureLayout;)Lcn/nubia/music/ui/OnUpAndDownListen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcn/nubia/music/ui/GestureLayout$1;->a:Lcn/nubia/music/ui/GestureLayout;

    invoke-static {v0}, Lcn/nubia/music/ui/GestureLayout;->access$100(Lcn/nubia/music/ui/GestureLayout;)Lcn/nubia/music/ui/OnUpAndDownListen;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/music/ui/OnUpAndDownListen;->onMoveEnd()V

    .line 57
    :cond_0
    return-void
.end method
