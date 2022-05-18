.class Lcn/nubia/video/mediaeditorview/TimeLineView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/TimeLineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/TimeLineView;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/TimeLineView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureListener - onDown :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLineView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->a(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->o(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/video/mediaeditorview/TimeLineView$d;->f()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->d(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->s(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->u(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/TimeLineView;->x(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/c;

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Lcn/nubia/video/mediaeditorview/c;->m(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v2, v0, p1}, Lcn/nubia/video/mediaeditorview/c;->n(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1, v3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->u(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z

    .line 16
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1, v3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->s(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z

    .line 17
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->o(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->o(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView$d;->e()V

    .line 19
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1, v3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->A(Lcn/nubia/video/mediaeditorview/TimeLineView;I)I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->J()V

    .line 21
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->B(Lcn/nubia/video/mediaeditorview/TimeLineView;)V

    return v3
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureListener - onFling :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TimeLineView"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x451c4000    # 2500.0f

    cmpl-float p1, p1, p2

    const/4 p2, 0x1

    if-ltz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->x(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sget p4, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    sub-int/2addr p1, p4

    .line 5
    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->right:I

    sget v0, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x0

    .line 7
    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p4

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p4}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->right:I

    sget v0, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    :goto_0
    sub-int/2addr p4, v0

    move v5, p1

    move v6, p4

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->e(Lcn/nubia/video/mediaeditorview/TimeLineView;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    neg-float p1, p3

    float-to-int v3, p1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    :cond_2
    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureListener - onLongPress :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLineView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/c;

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/video/mediaeditorview/c;->o(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->k(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->l(Lcn/nubia/video/mediaeditorview/TimeLineView;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->l(Lcn/nubia/video/mediaeditorview/TimeLineView;)Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v3, 0x64

    .line 10
    invoke-virtual {v0, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 11
    invoke-virtual {v2, v1}, Lcn/nubia/video/mediaeditorview/c;->r(Z)V

    .line 12
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->P()V

    .line 13
    instance-of v0, v2, Lcn/nubia/video/mediaeditorview/n;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    new-instance v1, Lcn/nubia/video/mediaeditorview/b;

    move-object v3, v2

    check-cast v3, Lcn/nubia/video/mediaeditorview/n;

    invoke-direct {v1, v3}, Lcn/nubia/video/mediaeditorview/b;-><init>(Lcn/nubia/video/mediaeditorview/n;)V

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->n(Lcn/nubia/video/mediaeditorview/TimeLineView;Lcn/nubia/video/mediaeditorview/b;)Lcn/nubia/video/mediaeditorview/b;

    .line 15
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->p(Lcn/nubia/video/mediaeditorview/TimeLineView;I)I

    .line 16
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->m(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/video/mediaeditorview/b;->c(III)V

    goto :goto_1

    .line 17
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1, v2}, Lcn/nubia/video/mediaeditorview/TimeLineView;->q(Lcn/nubia/video/mediaeditorview/TimeLineView;Lcn/nubia/video/mediaeditorview/c;)Lcn/nubia/video/mediaeditorview/c;

    .line 18
    :goto_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureListener - onScroll :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "TimeLineView"

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->r(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p1

    neg-float p3, p3

    float-to-int p3, p3

    const/16 v1, 0x50

    if-lt p3, v1, :cond_0

    const/16 p3, 0x4f

    goto :goto_0

    :cond_0
    const/16 v1, -0x50

    if-gt p3, v1, :cond_1

    const/16 p3, -0x4f

    .line 5
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/video/mediaeditorview/n;

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x447a0000    # 1000.0f

    if-eqz v1, :cond_5

    const-string p1, "clip VideoTrackShow"

    .line 6
    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->t(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "isPointInHeadClip clip!"

    .line 8
    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p1, p3

    mul-float/2addr p1, v5

    div-float/2addr p1, v4

    .line 9
    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    iget p4, p4, Lcn/nubia/video/mediaeditorview/c;->z:F

    div-float/2addr p1, p4

    float-to-int p1, p1

    .line 10
    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcn/nubia/video/mediaeditorview/c;->b(I)I

    move-result p1

    .line 11
    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    int-to-float v1, p1

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object v6

    iget v6, v6, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr v1, v6

    mul-float/2addr v1, v4

    div-float/2addr v1, v5

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {p4, v1, v0}, Landroid/view/View;->scrollBy(II)V

    if-ltz p3, :cond_3

    goto :goto_1

    :cond_2
    const-string p1, "isPointInEndClip clip!"

    .line 12
    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p1, p3

    mul-float/2addr p1, v5

    div-float/2addr p1, v4

    .line 13
    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    iget p4, p4, Lcn/nubia/video/mediaeditorview/c;->z:F

    div-float/2addr p1, p4

    float-to-int p1, p1

    .line 14
    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcn/nubia/video/mediaeditorview/c;->a(I)I

    move-result p1

    if-ltz p3, :cond_4

    :cond_3
    move v3, p2

    .line 15
    :cond_4
    :goto_1
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->f(Lcn/nubia/video/mediaeditorview/TimeLineView;)V

    .line 16
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_10

    move p3, v0

    .line 17
    :goto_2
    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_10

    .line 18
    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/a;

    invoke-static {p4, v1, v3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->g(Lcn/nubia/video/mediaeditorview/TimeLineView;Lcn/nubia/video/mediaeditorview/a;I)Landroid/graphics/Rect;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 19
    :cond_5
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/video/mediaeditorview/a;

    if-eqz v1, :cond_f

    const-string v1, "clip AudioTrackShow"

    .line 20
    invoke-static {p4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p4

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p4

    .line 22
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->t(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 23
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p3

    .line 24
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v6}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object v7

    iget-object v7, v7, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v7}, Lcn/nubia/video/mediaeditorview/TimeLineView;->h(Lcn/nubia/video/mediaeditorview/TimeLineView;I)I

    move-result v6

    if-gez p3, :cond_8

    if-eqz p4, :cond_8

    move v7, v0

    .line 25
    :goto_3
    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v8}, Lcn/nubia/video/mediaeditorview/TimeLineView;->i(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 26
    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v8}, Lcn/nubia/video/mediaeditorview/TimeLineView;->i(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-le v1, v8, :cond_6

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v8}, Lcn/nubia/video/mediaeditorview/TimeLineView;->i(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-ge v1, v8, :cond_6

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    .line 27
    invoke-static {v8}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v8

    add-int/lit8 v9, p4, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v8}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v9}, Lcn/nubia/video/mediaeditorview/TimeLineView;->i(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    if-ne v8, v9, :cond_6

    .line 28
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->i(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, v8

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 29
    :cond_7
    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v7}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v7

    sub-int/2addr p4, p2

    invoke-virtual {v7, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v7}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-ge v1, v7, :cond_8

    .line 30
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p1

    .line 31
    :cond_8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    if-ne v6, v2, :cond_9

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->j(Lcn/nubia/video/mediaeditorview/TimeLineView;)F

    move-result p1

    goto :goto_4

    :cond_9
    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/c;->k()F

    move-result p1

    .line 32
    :goto_4
    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    int-to-float p3, p3

    mul-float/2addr p3, v5

    div-float/2addr p3, v4

    div-float/2addr p3, p1

    float-to-int p1, p3

    invoke-virtual {p4, p1}, Lcn/nubia/video/mediaeditorview/c;->b(I)I

    move-result p1

    .line 33
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    check-cast p4, Lcn/nubia/video/mediaeditorview/a;

    invoke-static {p3, p4, v3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->g(Lcn/nubia/video/mediaeditorview/TimeLineView;Lcn/nubia/video/mediaeditorview/a;I)Landroid/graphics/Rect;

    goto/16 :goto_7

    .line 34
    :cond_a
    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p3

    .line 35
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object v6

    iget-object v6, v6, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v6}, Lcn/nubia/video/mediaeditorview/TimeLineView;->h(Lcn/nubia/video/mediaeditorview/TimeLineView;I)I

    move-result v3

    if-lez p3, :cond_d

    .line 36
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v6}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, p2

    if-eq p4, v6, :cond_d

    move v6, v0

    .line 37
    :goto_5
    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v7}, Lcn/nubia/video/mediaeditorview/TimeLineView;->i(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 38
    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v7}, Lcn/nubia/video/mediaeditorview/TimeLineView;->i(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-le v1, v7, :cond_b

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v7}, Lcn/nubia/video/mediaeditorview/TimeLineView;->i(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-ge v1, v7, :cond_b

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    .line 39
    invoke-static {v7}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v8, p4, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v7}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v8}, Lcn/nubia/video/mediaeditorview/TimeLineView;->i(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-ne v7, v8, :cond_b

    .line 40
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->i(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v7

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 41
    :cond_c
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v6}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/2addr p4, p2

    invoke-virtual {v6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v6}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-le v1, v6, :cond_d

    .line 42
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    .line 43
    :cond_d
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    if-ne v3, v2, :cond_e

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->j(Lcn/nubia/video/mediaeditorview/TimeLineView;)F

    move-result p1

    goto :goto_6

    :cond_e
    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/c;->k()F

    move-result p1

    .line 44
    :goto_6
    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    int-to-float p3, p3

    mul-float/2addr p3, v5

    div-float/2addr p3, v4

    div-float/2addr p3, p1

    float-to-int p1, p3

    invoke-virtual {p4, p1}, Lcn/nubia/video/mediaeditorview/c;->a(I)I

    move-result p1

    .line 45
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    check-cast p4, Lcn/nubia/video/mediaeditorview/a;

    invoke-static {p3, p4, v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->g(Lcn/nubia/video/mediaeditorview/TimeLineView;Lcn/nubia/video/mediaeditorview/a;I)Landroid/graphics/Rect;

    goto :goto_7

    :cond_f
    move p1, v0

    .line 46
    :cond_10
    :goto_7
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->o(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    move-result-object p3

    if-eqz p3, :cond_12

    .line 47
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->o(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    move-result-object p3

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    iget p4, p4, Lcn/nubia/video/mediaeditorview/c;->s:I

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->t(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z

    move-result v1

    xor-int/2addr v1, p2

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->z(Lcn/nubia/video/mediaeditorview/TimeLineView;)I

    move-result v3

    invoke-interface {p3, p4, v1, p1, v3}, Lcn/nubia/video/mediaeditorview/TimeLineView$d;->b(IIII)V

    .line 48
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1, v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->A(Lcn/nubia/video/mediaeditorview/TimeLineView;I)I

    .line 49
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p1

    instance-of p1, p1, Lcn/nubia/video/mediaeditorview/n;

    if-eqz p1, :cond_12

    .line 50
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 51
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->t(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z

    move-result p3

    if-eqz p3, :cond_11

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/video/mediaeditorview/c;->h()I

    move-result p3

    goto :goto_8

    :cond_11
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/video/mediaeditorview/c;->f()I

    move-result p3

    .line 52
    :goto_8
    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->o(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    move-result-object p4

    invoke-interface {p4, p1, p3, v2, v0}, Lcn/nubia/video/mediaeditorview/TimeLineView$d;->a(IIIZ)V

    .line 53
    :cond_12
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_11

    .line 54
    :cond_13
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->x(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 55
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_14

    return p2

    :cond_14
    float-to-int p1, p3

    .line 56
    sget p3, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p4}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->left:I

    if-lt p3, p4, :cond_17

    sget p3, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    .line 57
    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p4

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p4}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->right:I

    if-gt p3, p4, :cond_17

    .line 58
    sget p3, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    add-int/2addr p3, p4

    add-int/2addr p3, p1

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p4}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->left:I

    if-ge p3, p4, :cond_15

    .line 59
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sget p3, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    :goto_9
    add-int/2addr p3, p4

    sub-int/2addr p1, p3

    goto :goto_a

    .line 60
    :cond_15
    sget p3, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    add-int/2addr p3, p4

    add-int/2addr p3, p1

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p4

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p4}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->right:I

    if-le p3, p4, :cond_16

    .line 61
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sget p3, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    goto :goto_9

    .line 62
    :cond_16
    :goto_a
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p3, p1, v0}, Landroid/view/View;->scrollBy(II)V

    goto/16 :goto_11

    .line 63
    :cond_17
    sget p1, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    if-ge p1, p3, :cond_18

    .line 64
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sget p3, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    :goto_b
    add-int/2addr p3, p4

    sub-int/2addr p1, p3

    goto :goto_c

    .line 65
    :cond_18
    sget p1, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p3

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->right:I

    if-le p1, p3, :cond_19

    .line 66
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sget p3, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    goto :goto_b

    :cond_19
    move p1, v0

    .line 67
    :goto_c
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p3, p1, v0}, Landroid/view/View;->scrollBy(II)V

    goto/16 :goto_11

    .line 68
    :cond_1a
    sget p1, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    add-int/2addr p1, p4

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    iget-object p4, p4, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    if-lt p1, p4, :cond_1d

    sget p1, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    .line 69
    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    add-int/2addr p1, p4

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    iget-object p4, p4, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    if-gt p1, p4, :cond_1d

    .line 70
    sget p1, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    add-int/2addr p1, p4

    int-to-float p1, p1

    add-float/2addr p1, p3

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    iget-object p4, p4, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    cmpg-float p1, p1, p4

    if-gez p1, :cond_1b

    .line 71
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sget p3, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    :goto_d
    add-int/2addr p3, p4

    sub-int/2addr p1, p3

    int-to-float p3, p1

    goto :goto_e

    .line 72
    :cond_1b
    sget p1, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    add-int/2addr p1, p4

    int-to-float p1, p1

    add-float/2addr p1, p3

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p4}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p4

    iget-object p4, p4, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    int-to-float p4, p4

    cmpl-float p1, p1, p4

    if-lez p1, :cond_1c

    .line 73
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sget p3, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    goto :goto_d

    .line 74
    :cond_1c
    :goto_e
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    float-to-int p3, p3

    invoke-virtual {p1, p3, v0}, Landroid/view/View;->scrollBy(II)V

    goto :goto_11

    .line 75
    :cond_1d
    sget p1, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p3

    iget-object p3, p3, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    if-ge p1, p3, :cond_1e

    .line 76
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sget p3, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    :goto_f
    add-int/2addr p3, p4

    sub-int/2addr p1, p3

    goto :goto_10

    .line 77
    :cond_1e
    sget p1, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p3

    iget-object p3, p3, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    if-le p1, p3, :cond_1f

    .line 78
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/mediaeditorview/c;->k:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sget p3, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object p4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result p4

    goto :goto_f

    :cond_1f
    move p1, v0

    .line 79
    :goto_10
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p3, p1, v0}, Landroid/view/View;->scrollBy(II)V

    :goto_11
    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureListener - onShowPress :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TimeLineView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureListener - onSingleTapUp :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLineView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->x(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/video/mediaeditorview/c;->m(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->P()V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v2

    .line 6
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    move v4, v3

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 10
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/video/mediaeditorview/c;

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Lcn/nubia/video/mediaeditorview/c;->o(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PointInSrcRect = true :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 14
    invoke-virtual {v5, v3}, Lcn/nubia/video/mediaeditorview/c;->s(Z)V

    .line 15
    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v5, v3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->y(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z

    .line 16
    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v5, v3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->s(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z

    goto/16 :goto_1

    .line 17
    :cond_2
    invoke-virtual {v5, v2}, Lcn/nubia/video/mediaeditorview/c;->s(Z)V

    .line 18
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v6, v2}, Lcn/nubia/video/mediaeditorview/TimeLineView;->y(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z

    .line 19
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v6, v5}, Lcn/nubia/video/mediaeditorview/TimeLineView;->c(Lcn/nubia/video/mediaeditorview/TimeLineView;Lcn/nubia/video/mediaeditorview/c;)Lcn/nubia/video/mediaeditorview/c;

    .line 20
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v6}, Lcn/nubia/video/mediaeditorview/TimeLineView;->o(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 21
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v6}, Lcn/nubia/video/mediaeditorview/TimeLineView;->o(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v7}, Lcn/nubia/video/mediaeditorview/TimeLineView;->b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;

    move-result-object v7

    iget v7, v7, Lcn/nubia/video/mediaeditorview/c;->s:I

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v8}, Lcn/nubia/video/mediaeditorview/TimeLineView;->getSelectedIndex()I

    move-result v8

    invoke-interface {v6, v7, v8}, Lcn/nubia/video/mediaeditorview/TimeLineView$d;->d(II)V

    .line 22
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIndicatorPosition + getScrollX() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v8}, Landroid/view/View;->getScrollX()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget v6, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_4

    .line 24
    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sget v6, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v10, v5, v6

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startScroll left = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v5}, Lcn/nubia/video/mediaeditorview/TimeLineView;->e(Lcn/nubia/video/mediaeditorview/TimeLineView;)Landroid/widget/Scroller;

    move-result-object v7

    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x64

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    .line 27
    :cond_4
    sget v6, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_6

    .line 28
    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sget v6, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v10, v5, v6

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startScroll right ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v5}, Lcn/nubia/video/mediaeditorview/TimeLineView;->e(Lcn/nubia/video/mediaeditorview/TimeLineView;)Landroid/widget/Scroller;

    move-result-object v7

    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x64

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    .line 31
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PointInSrcRect = false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {v5, v3}, Lcn/nubia/video/mediaeditorview/c;->s(Z)V

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 33
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mHaveEntryShowSelected = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->x(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView$a;->a:Lcn/nubia/video/mediaeditorview/TimeLineView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v2
.end method
