.class Landroid/support/v7/widget/b0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/b0;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/b0$e;->a:Landroid/support/v7/widget/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    if-nez p1, :cond_0

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/b0$e;->a:Landroid/support/v7/widget/b0;

    iget-object v1, v1, Landroid/support/v7/widget/b0;->E:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/b0$e;->a:Landroid/support/v7/widget/b0;

    iget-object v1, v1, Landroid/support/v7/widget/b0;->E:Landroid/widget/PopupWindow;

    .line 6
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/b0$e;->a:Landroid/support/v7/widget/b0;

    iget-object v0, v0, Landroid/support/v7/widget/b0;->E:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 7
    iget-object p1, p0, Landroid/support/v7/widget/b0$e;->a:Landroid/support/v7/widget/b0;

    iget-object p2, p1, Landroid/support/v7/widget/b0;->A:Landroid/os/Handler;

    iget-object p1, p1, Landroid/support/v7/widget/b0;->w:Landroid/support/v7/widget/b0$f;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 8
    iget-object p1, p0, Landroid/support/v7/widget/b0$e;->a:Landroid/support/v7/widget/b0;

    iget-object p2, p1, Landroid/support/v7/widget/b0;->A:Landroid/os/Handler;

    iget-object p1, p1, Landroid/support/v7/widget/b0;->w:Landroid/support/v7/widget/b0$f;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
