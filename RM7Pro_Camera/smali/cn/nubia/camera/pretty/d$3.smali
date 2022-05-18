.class Lcn/nubia/camera/pretty/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/d;->a(Ljava/lang/String;Landroid/view/View;IIII)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcn/nubia/camera/pretty/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/d;Landroid/view/View;IIIILjava/lang/String;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcn/nubia/camera/pretty/d$3;->g:Lcn/nubia/camera/pretty/d;

    iput-object p2, p0, Lcn/nubia/camera/pretty/d$3;->a:Landroid/view/View;

    iput p3, p0, Lcn/nubia/camera/pretty/d$3;->b:I

    iput p4, p0, Lcn/nubia/camera/pretty/d$3;->c:I

    iput p5, p0, Lcn/nubia/camera/pretty/d$3;->d:I

    iput p6, p0, Lcn/nubia/camera/pretty/d$3;->e:I

    iput-object p7, p0, Lcn/nubia/camera/pretty/d$3;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 550
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 551
    iget-object v1, p0, Lcn/nubia/camera/pretty/d$3;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 553
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcn/nubia/camera/pretty/d$3;->b:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 554
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcn/nubia/camera/pretty/d$3;->c:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 555
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcn/nubia/camera/pretty/d$3;->d:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 556
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcn/nubia/camera/pretty/d$3;->e:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 558
    iget-object v1, p0, Lcn/nubia/camera/pretty/d$3;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 559
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 561
    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 563
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 564
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 565
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 566
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 569
    :cond_1
    new-instance v4, Lcn/nubia/camera/pretty/d$c;

    iget-object v5, p0, Lcn/nubia/camera/pretty/d$3;->g:Lcn/nubia/camera/pretty/d;

    iget-object v6, p0, Lcn/nubia/camera/pretty/d$3;->f:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/camera/pretty/d$3;->a:Landroid/view/View;

    invoke-direct {v4, v5, v6, v0, v7}, Lcn/nubia/camera/pretty/d$c;-><init>(Lcn/nubia/camera/pretty/d;Ljava/lang/String;Landroid/graphics/Rect;Landroid/view/View;)V

    if-eqz v3, :cond_2

    .line 572
    invoke-virtual {v2, v4}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    .line 574
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :goto_0
    return-void
.end method
