.class public Lcom/android/common/c/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/c/f$b;,
        Lcom/android/common/c/f$a;
    }
.end annotation


# instance fields
.field private A:J

.field private B:Lcom/android/common/d/a;

.field private C:Z

.field private D:I

.field private E:Z

.field private F:Landroid/os/ConditionVariable;

.field private G:Lcom/android/common/d/b;

.field private H:I

.field private I:I

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:I

.field private N:I

.field private O:Z

.field private final P:J

.field private Q:Lcom/android/common/c/d;

.field private R:Lcom/android/common/a/b;

.field public final a:Z

.field private final b:Z

.field private final c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/android/common/c/b;

.field private g:Lcom/android/common/c/c;

.field private h:Landroid/view/SurfaceHolder;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Landroid/graphics/SurfaceTexture;

.field private m:Lcom/android/common/b/e;

.field private n:Lcom/android/common/b/l;

.field private o:Lcom/android/common/b/l;

.field private p:Landroid/graphics/Rect;

.field private q:Landroid/graphics/Rect;

.field private r:Landroid/graphics/Rect;

.field private s:I

.field private t:I

.field private u:Lcom/android/common/b/c;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/c/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private w:[Lcom/android/common/c/f$a;

.field private x:Lcom/android/common/b/g;

.field private y:Z

.field private z:Z


# direct methods
.method constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/SurfaceTexture;Lcom/android/common/d/b;ZZ)V
    .locals 5

    const-string v0, "Nubia Render Thread"

    .line 94
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-string v0, "CAMERA_SWITCH_DEBUG"

    const/4 v1, 0x3

    .line 41
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/c/f;->a:Z

    const-string v0, "CAMERA_BLUR_DEBUG"

    .line 42
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/c/f;->b:Z

    const-string v0, "CAMERA_DRAW_DEBUG"

    .line 43
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/c/f;->c:Z

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/common/c/f;->d:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/common/c/f;->e:Z

    .line 47
    new-instance v1, Lcom/android/common/c/b;

    invoke-direct {v1, p0}, Lcom/android/common/c/b;-><init>(Lcom/android/common/c/f;)V

    iput-object v1, p0, Lcom/android/common/c/f;->f:Lcom/android/common/c/b;

    .line 48
    new-instance v1, Lcom/android/common/c/c;

    invoke-direct {v1, p0}, Lcom/android/common/c/c;-><init>(Lcom/android/common/c/f;)V

    iput-object v1, p0, Lcom/android/common/c/f;->g:Lcom/android/common/c/c;

    .line 52
    iput-boolean v0, p0, Lcom/android/common/c/f;->j:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/common/c/f;->k:Z

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/android/common/c/f;->r:Landroid/graphics/Rect;

    const/4 v2, 0x1

    .line 68
    iput v2, p0, Lcom/android/common/c/f;->s:I

    .line 70
    iput v2, p0, Lcom/android/common/c/f;->t:I

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    .line 74
    iput-object v1, p0, Lcom/android/common/c/f;->w:[Lcom/android/common/c/f$a;

    .line 75
    iput-object v1, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    .line 77
    iput-boolean v2, p0, Lcom/android/common/c/f;->y:Z

    .line 78
    iput-boolean v2, p0, Lcom/android/common/c/f;->z:Z

    const-wide/16 v3, 0x0

    .line 80
    iput-wide v3, p0, Lcom/android/common/c/f;->A:J

    .line 81
    new-instance v1, Lcom/android/common/d/a;

    invoke-direct {v1}, Lcom/android/common/d/a;-><init>()V

    iput-object v1, p0, Lcom/android/common/c/f;->B:Lcom/android/common/d/a;

    .line 83
    iput-boolean v0, p0, Lcom/android/common/c/f;->C:Z

    .line 84
    iput v0, p0, Lcom/android/common/c/f;->D:I

    .line 90
    iput-boolean v0, p0, Lcom/android/common/c/f;->E:Z

    .line 115
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/common/c/f;->F:Landroid/os/ConditionVariable;

    .line 202
    iput v0, p0, Lcom/android/common/c/f;->H:I

    .line 204
    iput v0, p0, Lcom/android/common/c/f;->I:I

    .line 205
    iput-boolean v0, p0, Lcom/android/common/c/f;->J:Z

    .line 206
    iput-boolean v0, p0, Lcom/android/common/c/f;->K:Z

    .line 207
    iput-boolean v0, p0, Lcom/android/common/c/f;->L:Z

    .line 209
    iput v0, p0, Lcom/android/common/c/f;->M:I

    .line 210
    iput v0, p0, Lcom/android/common/c/f;->N:I

    .line 211
    iput-boolean v0, p0, Lcom/android/common/c/f;->O:Z

    const-wide/16 v3, 0x12c

    .line 643
    iput-wide v3, p0, Lcom/android/common/c/f;->P:J

    .line 810
    new-instance v1, Lcom/android/common/c/d;

    invoke-direct {v1}, Lcom/android/common/c/d;-><init>()V

    iput-object v1, p0, Lcom/android/common/c/f;->Q:Lcom/android/common/c/d;

    .line 95
    iput-object p1, p0, Lcom/android/common/c/f;->q:Landroid/graphics/Rect;

    .line 96
    iput-object p2, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    .line 97
    iput-object p3, p0, Lcom/android/common/c/f;->l:Landroid/graphics/SurfaceTexture;

    .line 98
    iput-object p4, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    .line 99
    iget-object p1, p0, Lcom/android/common/c/f;->B:Lcom/android/common/d/a;

    invoke-virtual {p1, p2}, Lcom/android/common/d/a;->a(Landroid/graphics/Rect;)V

    .line 100
    iget-object p1, p0, Lcom/android/common/c/f;->Q:Lcom/android/common/c/d;

    iget-object p2, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0}, Lcom/android/common/c/d;->a(Landroid/graphics/Rect;Z)Z

    if-eqz p5, :cond_0

    .line 102
    iput v2, p0, Lcom/android/common/c/f;->M:I

    goto :goto_0

    .line 104
    :cond_0
    iput v0, p0, Lcom/android/common/c/f;->M:I

    .line 106
    :goto_0
    iput-boolean p6, p0, Lcom/android/common/c/f;->z:Z

    return-void
.end method

.method private A()V
    .locals 5

    .line 409
    iget-object v0, p0, Lcom/android/common/c/f;->m:Lcom/android/common/b/e;

    if-eqz v0, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-static {}, Lcom/android/common/b/h;->a()I

    move-result v0

    iput v0, p0, Lcom/android/common/c/f;->i:I

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSurfaceTextureForCamera: mPreviewRect.width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v0, Lcom/android/common/b/e;

    iget v1, p0, Lcom/android/common/c/f;->i:I

    const v2, 0x8d65

    iget-object v3, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    .line 417
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/common/b/e;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/common/c/f;->m:Lcom/android/common/b/e;

    .line 418
    iget-object v0, p0, Lcom/android/common/c/f;->l:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 419
    iget-object v0, p0, Lcom/android/common/c/f;->l:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/android/common/c/f;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    return-void
.end method

.method private B()V
    .locals 2

    const-string v0, "RenderThread"

    const-string v1, "releaseWindowSurface"

    .line 523
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-boolean v0, p0, Lcom/android/common/c/f;->k:Z

    if-eqz v0, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/android/common/c/f;->E()V

    .line 526
    invoke-direct {p0}, Lcom/android/common/c/f;->C()V

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lcom/android/common/c/f;->h:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    .line 528
    iput-boolean v0, p0, Lcom/android/common/c/f;->j:Z

    .line 529
    iget-object v1, p0, Lcom/android/common/c/f;->u:Lcom/android/common/b/c;

    invoke-virtual {v1}, Lcom/android/common/b/c;->d()V

    .line 530
    iget-object v1, p0, Lcom/android/common/c/f;->u:Lcom/android/common/b/c;

    invoke-virtual {v1}, Lcom/android/common/b/c;->e()V

    .line 531
    iput-boolean v0, p0, Lcom/android/common/c/f;->k:Z

    :cond_0
    return-void
.end method

.method private C()V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/android/common/c/f;->m:Lcom/android/common/b/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 537
    iget v2, p0, Lcom/android/common/c/f;->i:I

    aput v2, v0, v1

    invoke-static {v0}, Lcom/android/common/b/h;->a([I)V

    const/4 v0, 0x0

    .line 538
    iput-object v0, p0, Lcom/android/common/c/f;->m:Lcom/android/common/b/e;

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/common/c/f;->l:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    return-void
.end method

.method private D()Z
    .locals 5

    .line 548
    iget-boolean v0, p0, Lcom/android/common/c/f;->k:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/android/common/c/f;->h:Landroid/view/SurfaceHolder;

    const-string v3, "RenderThread"

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "wait for SurfaceHolder"

    .line 551
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return v2

    :cond_0
    :try_start_1
    const-string v0, "createWindowSurface"

    .line 559
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/android/common/c/f;->u:Lcom/android/common/b/c;

    iget-object v3, p0, Lcom/android/common/c/f;->h:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v3}, Lcom/android/common/b/c;->a(Landroid/view/SurfaceHolder;)Landroid/opengl/EGLSurface;

    .line 561
    iget-object v0, p0, Lcom/android/common/c/f;->u:Lcom/android/common/b/c;

    invoke-virtual {v0}, Lcom/android/common/b/c;->c()Z

    .line 562
    invoke-direct {p0}, Lcom/android/common/c/f;->A()V

    .line 563
    iput-boolean v2, p0, Lcom/android/common/c/f;->k:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 565
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 568
    :cond_1
    iget-boolean v0, p0, Lcom/android/common/c/f;->j:Z

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/android/common/c/f;->B:Lcom/android/common/d/a;

    iget-object v3, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    iget-object v4, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/common/d/a;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Lcom/android/common/d/b;)V

    const-wide/16 v3, 0x0

    .line 571
    iput-wide v3, p0, Lcom/android/common/c/f;->A:J

    .line 572
    invoke-direct {p0}, Lcom/android/common/c/f;->L()V

    .line 573
    invoke-direct {p0}, Lcom/android/common/c/f;->B()V

    .line 574
    iput-boolean v1, p0, Lcom/android/common/c/f;->z:Z

    .line 575
    iget-object v0, p0, Lcom/android/common/c/f;->F:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return v2

    :cond_2
    :goto_1
    return v1
.end method

.method private E()V
    .locals 2

    const-string v0, "RenderThread"

    const-string v1, "clearBuffer"

    .line 586
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-virtual {v0}, Lcom/android/common/b/g;->c()V

    .line 588
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 589
    iget-object v0, p0, Lcom/android/common/c/f;->u:Lcom/android/common/b/c;

    invoke-virtual {v0}, Lcom/android/common/b/c;->b()V

    return-void
.end method

.method private F()V
    .locals 8

    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/common/c/f;->A:J

    sub-long/2addr v0, v2

    .line 595
    invoke-direct {p0, v0, v1}, Lcom/android/common/c/f;->b(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 597
    iget-object v4, p0, Lcom/android/common/c/f;->B:Lcom/android/common/d/a;

    iget-object v5, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    invoke-virtual {v4, p0, v5, v3}, Lcom/android/common/d/a;->a(Lcom/android/common/c/f;Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/common/c/f;->r:Landroid/graphics/Rect;

    goto :goto_0

    .line 599
    :cond_0
    iget-object v4, p0, Lcom/android/common/c/f;->Q:Lcom/android/common/c/d;

    invoke-virtual {v4, p0}, Lcom/android/common/c/d;->a(Lcom/android/common/c/f;)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/common/c/f;->r:Landroid/graphics/Rect;

    .line 602
    :goto_0
    iget-object v4, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-virtual {v4}, Lcom/android/common/b/g;->c()V

    .line 603
    iget v4, p0, Lcom/android/common/c/f;->H:I

    const/4 v5, 0x7

    if-eqz v4, :cond_6

    const/4 v6, 0x6

    if-eq v4, v6, :cond_6

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    iget v7, p0, Lcom/android/common/c/f;->M:I

    if-ne v7, v3, :cond_6

    :cond_1
    if-ne v4, v3, :cond_2

    iget-boolean v7, p0, Lcom/android/common/c/f;->K:Z

    if-nez v7, :cond_2

    iget v7, p0, Lcom/android/common/c/f;->M:I

    if-eq v7, v3, :cond_2

    goto :goto_1

    :cond_2
    if-ne v4, v6, :cond_3

    .line 611
    iget v6, p0, Lcom/android/common/c/f;->M:I

    if-eq v6, v3, :cond_5

    :cond_3
    if-eq v4, v5, :cond_5

    if-ne v4, v3, :cond_4

    iget-boolean v6, p0, Lcom/android/common/c/f;->K:Z

    if-nez v6, :cond_4

    iget v6, p0, Lcom/android/common/c/f;->M:I

    if-eq v6, v3, :cond_5

    :cond_4
    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    iget-boolean v4, p0, Lcom/android/common/c/f;->K:Z

    if-nez v4, :cond_7

    iget v4, p0, Lcom/android/common/c/f;->M:I

    if-ne v4, v3, :cond_7

    .line 615
    :cond_5
    iget-boolean v4, p0, Lcom/android/common/c/f;->c:Z

    const-string v6, "realtime draw"

    invoke-virtual {p0, v4, v6}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 616
    iget-object v4, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget-object v6, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-virtual {v4, p0, v6, v3}, Lcom/android/common/d/b;->b(Lcom/android/common/c/f;Lcom/android/common/b/g;Z)V

    goto :goto_2

    .line 607
    :cond_6
    :goto_1
    iget-boolean v4, p0, Lcom/android/common/c/f;->c:Z

    const-string v6, "defalut draw"

    invoke-virtual {p0, v4, v6}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 608
    invoke-direct {p0}, Lcom/android/common/c/f;->J()Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "RenderThread"

    const-string v6, "no render!"

    .line 609
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    .line 620
    invoke-virtual {p0, v0, v1}, Lcom/android/common/c/f;->a(J)Z

    goto :goto_3

    .line 622
    :cond_8
    invoke-direct {p0}, Lcom/android/common/c/f;->G()Z

    move-result v0

    if-nez v0, :cond_9

    .line 625
    invoke-direct {p0}, Lcom/android/common/c/f;->H()Z

    .line 629
    :cond_9
    :goto_3
    monitor-enter p0

    .line 630
    :try_start_0
    iget-boolean v0, p0, Lcom/android/common/c/f;->C:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/common/c/f;->H:I

    if-eqz v0, :cond_a

    if-ne v0, v5, :cond_b

    .line 631
    :cond_a
    iget v0, p0, Lcom/android/common/c/f;->D:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/common/c/f;->D:I

    if-lez v0, :cond_b

    const/4 v0, 0x0

    .line 634
    iput v0, p0, Lcom/android/common/c/f;->D:I

    .line 635
    iput-boolean v0, p0, Lcom/android/common/c/f;->C:Z

    .line 638
    :cond_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private G()Z
    .locals 9

    .line 666
    iget-boolean v0, p0, Lcom/android/common/c/f;->J:Z

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_8

    .line 667
    iget v0, p0, Lcom/android/common/c/f;->H:I

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_7

    .line 689
    :cond_1
    iget-boolean v0, p0, Lcom/android/common/c/f;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch, copied or started mSwitchState:  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/common/c/f;->H:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget-object v1, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    iget v3, p0, Lcom/android/common/c/f;->I:I

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/common/d/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;I)V

    .line 691
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget-object v1, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/d/b;->b(Lcom/android/common/c/f;Lcom/android/common/b/g;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 693
    invoke-virtual {p0, v6}, Lcom/android/common/c/f;->a(Z)V

    .line 694
    iput v4, p0, Lcom/android/common/c/f;->H:I

    goto/16 :goto_4

    .line 696
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/common/c/f;->a(Z)V

    .line 697
    iput v5, p0, Lcom/android/common/c/f;->H:I

    goto :goto_4

    .line 670
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/common/c/f;->L:Z

    if-eqz v0, :cond_4

    .line 671
    iput-boolean v7, p0, Lcom/android/common/c/f;->L:Z

    .line 672
    invoke-direct {p0}, Lcom/android/common/c/f;->I()V

    goto :goto_3

    .line 674
    :cond_4
    iget-boolean v0, p0, Lcom/android/common/c/f;->b:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch copyCurrentTexture SkipDarkFrameRunning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/common/c/f;->C:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; AnimState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/common/c/f;->H:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget-object v3, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    iget-boolean v4, p0, Lcom/android/common/c/f;->C:Z

    if-nez v4, :cond_6

    iget v4, p0, Lcom/android/common/c/f;->H:I

    if-ne v4, v2, :cond_5

    goto :goto_1

    :cond_5
    move v2, v7

    goto :goto_2

    :cond_6
    :goto_1
    move v2, v6

    :goto_2
    invoke-virtual {v0, p0, v3, v2}, Lcom/android/common/d/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Z)V

    .line 677
    monitor-enter p0

    .line 678
    :try_start_0
    iput v1, p0, Lcom/android/common/c/f;->H:I

    .line 679
    iput-boolean v6, p0, Lcom/android/common/c/f;->C:Z

    .line 680
    iput-boolean v7, p0, Lcom/android/common/c/f;->O:Z

    .line 681
    iput v7, p0, Lcom/android/common/c/f;->D:I

    .line 682
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    iget-boolean v0, p0, Lcom/android/common/c/f;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switch, none to copy mSwitchState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/c/f;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 685
    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/common/c/f;->a(Z)V

    :cond_7
    :goto_4
    return v6

    :catchall_0
    move-exception v0

    .line 682
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 702
    :cond_8
    iget v0, p0, Lcom/android/common/c/f;->H:I

    if-ne v0, v5, :cond_a

    iget-boolean v8, p0, Lcom/android/common/c/f;->K:Z

    if-nez v8, :cond_a

    .line 703
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget-object v1, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    iget v3, p0, Lcom/android/common/c/f;->I:I

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/common/d/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;I)V

    .line 704
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget-object v1, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/d/b;->b(Lcom/android/common/c/f;Lcom/android/common/b/g;)I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 706
    iput v4, p0, Lcom/android/common/c/f;->H:I

    goto :goto_5

    .line 708
    :cond_9
    iput v5, p0, Lcom/android/common/c/f;->H:I

    .line 710
    :goto_5
    iget-boolean v1, p0, Lcom/android/common/c/f;->a:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchstart false draw switchState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; animState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/common/c/f;->H:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    return v6

    :cond_a
    if-ne v0, v5, :cond_b

    .line 714
    iget-boolean v2, p0, Lcom/android/common/c/f;->K:Z

    if-nez v2, :cond_e

    :cond_b
    if-eq v0, v4, :cond_e

    if-ne v0, v3, :cond_c

    goto :goto_6

    :cond_c
    if-ne v0, v1, :cond_d

    .line 731
    iget-boolean v0, p0, Lcom/android/common/c/f;->a:Z

    const-string v1, "switch, copy to none"

    invoke-virtual {p0, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 732
    iput v7, p0, Lcom/android/common/c/f;->H:I

    .line 733
    invoke-virtual {p0, v6}, Lcom/android/common/c/f;->a(Z)V

    :cond_d
    return v7

    .line 717
    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget-object v1, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/d/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    .line 718
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget-object v1, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/d/b;->b(Lcom/android/common/c/f;Lcom/android/common/b/g;)I

    move-result v0

    .line 719
    iget-boolean v1, p0, Lcom/android/common/c/f;->a:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch, drawing mSwitchState: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/common/c/f;->H:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "; next switchDrawingState: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    if-ne v0, v4, :cond_f

    .line 721
    iget-boolean v0, p0, Lcom/android/common/c/f;->K:Z

    if-nez v0, :cond_f

    .line 723
    iput v3, p0, Lcom/android/common/c/f;->H:I

    .line 724
    invoke-virtual {p0, v7}, Lcom/android/common/c/f;->a(Z)V

    goto :goto_7

    .line 726
    :cond_f
    iput v7, p0, Lcom/android/common/c/f;->H:I

    .line 727
    invoke-virtual {p0, v6}, Lcom/android/common/c/f;->a(Z)V

    :goto_7
    return v6
.end method

.method private H()Z
    .locals 8

    .line 741
    iget-boolean v0, p0, Lcom/android/common/c/f;->K:Z

    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_9

    .line 742
    iget-boolean v0, p0, Lcom/android/common/c/f;->b:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAnimState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/common/c/f;->H:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 743
    iget v0, p0, Lcom/android/common/c/f;->H:I

    if-eqz v0, :cond_3

    const/16 v6, 0x8

    if-eq v0, v6, :cond_3

    const/4 v6, 0x6

    if-eq v0, v6, :cond_3

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v5, :cond_1

    if-ne v0, v1, :cond_8

    .line 771
    :cond_1
    iget-boolean v0, p0, Lcom/android/common/c/f;->b:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blur start anim, blurState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/common/c/f;->H:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget-object v2, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    iget v4, p0, Lcom/android/common/c/f;->M:I

    iget v6, p0, Lcom/android/common/c/f;->N:I

    invoke-virtual {v0, p0, v2, v4, v6}, Lcom/android/common/d/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;II)V

    .line 773
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget-object v2, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-virtual {v0, p0, v2}, Lcom/android/common/d/b;->b(Lcom/android/common/c/f;Lcom/android/common/b/g;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 775
    invoke-virtual {p0, v5}, Lcom/android/common/c/f;->a(Z)V

    .line 777
    :cond_2
    iput v1, p0, Lcom/android/common/c/f;->H:I

    goto/16 :goto_4

    .line 748
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/common/c/f;->L:Z

    if-eqz v0, :cond_4

    .line 749
    iput-boolean v4, p0, Lcom/android/common/c/f;->L:Z

    .line 750
    invoke-direct {p0}, Lcom/android/common/c/f;->I()V

    goto/16 :goto_3

    .line 752
    :cond_4
    iget-boolean v0, p0, Lcom/android/common/c/f;->b:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blur copyCurrentTexture SkipDarkFrameRunning: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/common/c/f;->C:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; AnimState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/common/c/f;->H:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget-object v1, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    iget-boolean v3, p0, Lcom/android/common/c/f;->C:Z

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/common/c/f;->H:I

    if-ne v3, v2, :cond_5

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_2

    :cond_6
    :goto_1
    move v2, v5

    :goto_2
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/common/d/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Z)V

    .line 756
    iput v5, p0, Lcom/android/common/c/f;->t:I

    .line 758
    monitor-enter p0

    .line 759
    :try_start_0
    iput v5, p0, Lcom/android/common/c/f;->H:I

    .line 760
    iget-boolean v0, p0, Lcom/android/common/c/f;->O:Z

    if-eqz v0, :cond_7

    .line 761
    iput-boolean v5, p0, Lcom/android/common/c/f;->C:Z

    .line 762
    iput-boolean v4, p0, Lcom/android/common/c/f;->O:Z

    .line 763
    iput v4, p0, Lcom/android/common/c/f;->D:I

    .line 765
    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    iget-boolean v0, p0, Lcom/android/common/c/f;->b:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blur copy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/c/f;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; animTimeBlur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    invoke-virtual {v2}, Lcom/android/common/d/b;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 768
    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/common/c/f;->a(Z)V

    :cond_8
    :goto_4
    return v5

    :catchall_0
    move-exception v0

    .line 765
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 781
    :cond_9
    iget v0, p0, Lcom/android/common/c/f;->H:I

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_a

    goto :goto_6

    :cond_a
    if-ne v0, v5, :cond_c

    .line 796
    iget v0, p0, Lcom/android/common/c/f;->M:I

    if-ne v0, v5, :cond_b

    goto :goto_5

    :cond_b
    move v2, v4

    :goto_5
    iput v2, p0, Lcom/android/common/c/f;->H:I

    .line 797
    iget-boolean v0, p0, Lcom/android/common/c/f;->b:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blur copy to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/c/f;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 798
    invoke-virtual {p0, v5}, Lcom/android/common/c/f;->a(Z)V

    :cond_c
    return v4

    .line 783
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget v1, p0, Lcom/android/common/c/f;->M:I

    if-ne v1, v5, :cond_e

    move v1, v5

    goto :goto_7

    :cond_e
    move v1, v4

    :goto_7
    invoke-virtual {v0, p0, v1}, Lcom/android/common/d/b;->a(Lcom/android/common/c/f;Z)V

    .line 784
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget-object v1, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/d/b;->b(Lcom/android/common/c/f;Lcom/android/common/b/g;)I

    move-result v0

    .line 785
    iget-boolean v1, p0, Lcom/android/common/c/f;->b:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blur stop anim: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/common/c/f;->H:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; realTimeBlur: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    invoke-virtual {v7}, Lcom/android/common/d/b;->a()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; blurDrawingState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 788
    iput v3, p0, Lcom/android/common/c/f;->H:I

    .line 789
    invoke-virtual {p0, v4}, Lcom/android/common/c/f;->a(Z)V

    goto :goto_9

    .line 791
    :cond_f
    iget v0, p0, Lcom/android/common/c/f;->M:I

    if-ne v0, v5, :cond_10

    goto :goto_8

    :cond_10
    move v2, v4

    :goto_8
    iput v2, p0, Lcom/android/common/c/f;->H:I

    .line 792
    invoke-virtual {p0, v5}, Lcom/android/common/c/f;->a(Z)V

    :goto_9
    return v5
.end method

.method private I()V
    .locals 5

    .line 832
    iget-object v0, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    monitor-enter v0

    .line 833
    :try_start_0
    invoke-direct {p0}, Lcom/android/common/c/f;->M()[Lcom/android/common/c/f$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 834
    invoke-interface {v4}, Lcom/android/common/c/f$a;->b()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 836
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private J()Z
    .locals 7

    .line 841
    iget-object v0, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    monitor-enter v0

    .line 843
    :try_start_0
    invoke-direct {p0}, Lcom/android/common/c/f;->M()[Lcom/android/common/c/f$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 844
    iget-object v6, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-interface {v5, p0, v6}, Lcom/android/common/c/f$a;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 846
    :cond_0
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private K()Z
    .locals 7

    .line 852
    iget-object v0, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    monitor-enter v0

    .line 853
    :try_start_0
    invoke-direct {p0}, Lcom/android/common/c/f;->M()[Lcom/android/common/c/f$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 854
    iget-object v6, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-interface {v5, p0, v6}, Lcom/android/common/c/f$a;->b(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 856
    :cond_0
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private L()V
    .locals 6

    .line 861
    iget-object v0, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    monitor-enter v0

    .line 862
    :try_start_0
    invoke-direct {p0}, Lcom/android/common/c/f;->M()[Lcom/android/common/c/f$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 863
    iget-object v5, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-interface {v4, p0, v5}, Lcom/android/common/c/f$a;->c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 865
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private M()[Lcom/android/common/c/f$a;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/android/common/c/f;->w:[Lcom/android/common/c/f$a;

    return-object v0
.end method

.method private b(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x12c

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    .line 987
    iget p1, p0, Lcom/android/common/c/f;->H:I

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private y()V
    .locals 2

    const-string v0, "RenderThread"

    const-string v1, "release resources"

    .line 286
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/android/common/d/b;->b()V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/common/c/f;->n:Lcom/android/common/b/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/common/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/common/c/f;->n:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 293
    :cond_1
    invoke-direct {p0}, Lcom/android/common/c/f;->L()V

    .line 294
    iget-object v0, p0, Lcom/android/common/c/f;->B:Lcom/android/common/d/a;

    invoke-virtual {v0}, Lcom/android/common/d/a;->a()V

    .line 295
    iget-object v0, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-virtual {v0}, Lcom/android/common/b/g;->b()V

    .line 296
    iget-object v0, p0, Lcom/android/common/c/f;->R:Lcom/android/common/a/b;

    invoke-virtual {v0}, Lcom/android/common/a/b;->a()V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/android/common/c/f;->n:Lcom/android/common/b/l;

    .line 298
    iput-object v0, p0, Lcom/android/common/c/f;->R:Lcom/android/common/a/b;

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/android/common/c/f;->K:Z

    .line 300
    iput-boolean v0, p0, Lcom/android/common/c/f;->J:Z

    .line 301
    iput v0, p0, Lcom/android/common/c/f;->H:I

    return-void
.end method

.method private z()V
    .locals 1

    .line 402
    new-instance v0, Lcom/android/common/b/c;

    invoke-direct {v0}, Lcom/android/common/b/c;-><init>()V

    iput-object v0, p0, Lcom/android/common/c/f;->u:Lcom/android/common/b/c;

    .line 403
    new-instance v0, Lcom/android/common/b/g;

    invoke-direct {v0}, Lcom/android/common/b/g;-><init>()V

    iput-object v0, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    .line 404
    new-instance v0, Lcom/android/common/a/b;

    invoke-direct {v0}, Lcom/android/common/a/b;-><init>()V

    iput-object v0, p0, Lcom/android/common/c/f;->R:Lcom/android/common/a/b;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 148
    monitor-enter p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 150
    :cond_0
    :try_start_0
    iput p1, p0, Lcom/android/common/c/f;->t:I

    .line 152
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(IIZ)V
    .locals 3

    .line 214
    iget-boolean v0, p0, Lcom/android/common/c/f;->b:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBlur: blurType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; blurWeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; skipDarkFrame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 216
    iput p1, p0, Lcom/android/common/c/f;->M:I

    .line 217
    iput p2, p0, Lcom/android/common/c/f;->N:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 220
    iput-boolean p2, p0, Lcom/android/common/c/f;->L:Z

    .line 223
    :cond_0
    monitor-enter p0

    .line 224
    :try_start_0
    iget-boolean p1, p0, Lcom/android/common/c/f;->K:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 225
    iget p1, p0, Lcom/android/common/c/f;->H:I

    if-eqz p1, :cond_1

    .line 227
    iput-boolean p2, p0, Lcom/android/common/c/f;->C:Z

    .line 228
    iput v0, p0, Lcom/android/common/c/f;->D:I

    .line 230
    :cond_1
    monitor-exit p0

    return-void

    .line 232
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iput-boolean p3, p0, Lcom/android/common/c/f;->O:Z

    .line 235
    iput-boolean p2, p0, Lcom/android/common/c/f;->K:Z

    .line 236
    iput-boolean v0, p0, Lcom/android/common/c/f;->J:Z

    .line 237
    invoke-virtual {p0}, Lcom/android/common/c/f;->m()V

    return-void

    :catchall_0
    move-exception p1

    .line 232
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Landroid/graphics/Rect;Z)V
    .locals 1

    .line 812
    iput-object p1, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    .line 819
    iget-object v0, p0, Lcom/android/common/c/f;->Q:Lcom/android/common/c/d;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/common/c/d;->a(Landroid/graphics/Rect;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 821
    invoke-virtual {p0}, Lcom/android/common/c/f;->m()V

    .line 823
    :cond_1
    monitor-enter p0

    .line 824
    :try_start_0
    iget-object p1, p0, Lcom/android/common/c/f;->m:Lcom/android/common/b/e;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    .line 825
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p2, p0, Lcom/android/common/c/f;->m:Lcom/android/common/b/e;

    invoke-virtual {p2}, Lcom/android/common/b/e;->b()I

    move-result p2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    .line 826
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/common/c/f;->m:Lcom/android/common/b/e;

    invoke-virtual {p2}, Lcom/android/common/b/e;->c()I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 827
    :cond_2
    iget-object p1, p0, Lcom/android/common/c/f;->m:Lcom/android/common/b/e;

    iget-object p2, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object v0, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/common/b/e;->a(II)V

    .line 828
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    monitor-enter p0

    .line 136
    :try_start_0
    iput-object p1, p0, Lcom/android/common/c/f;->l:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/view/SurfaceHolder;)V
    .locals 1

    monitor-enter p0

    .line 110
    :try_start_0
    iput-object p1, p0, Lcom/android/common/c/f;->h:Landroid/view/SurfaceHolder;

    const-string p1, "RenderThread"

    const-string v0, "setSurfaceHolder"

    .line 111
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/android/common/b/l;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/common/c/f;->o:Lcom/android/common/b/l;

    return-void
.end method

.method public a(Lcom/android/common/c/f$a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object p1, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/common/c/f$1;

    invoke-direct {v1, p0}, Lcom/android/common/c/f$1;-><init>(Lcom/android/common/c/f;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 320
    iget-object p1, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/common/c/f$a;

    iput-object p1, p0, Lcom/android/common/c/f;->w:[Lcom/android/common/c/f$a;

    .line 321
    iget-object v1, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 322
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/android/common/c/f$b;)V
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/android/common/c/f;->f:Lcom/android/common/c/b;

    invoke-virtual {v0, p1}, Lcom/android/common/c/b;->a(Lcom/android/common/c/f$b;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 923
    iput-boolean p1, p0, Lcom/android/common/c/f;->y:Z

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "RenderDebugAnim"

    .line 806
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/android/common/c/f;->y:Z

    return v0
.end method

.method public a(J)Z
    .locals 7

    .line 645
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 648
    iget-wide v1, p0, Lcom/android/common/c/f;->A:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v1, v3, p1

    if-gtz v1, :cond_1

    const-wide/16 v5, 0x12c

    cmp-long v1, p1, v5

    if-gez v1, :cond_1

    long-to-float p1, p1

    const/high16 p2, 0x43960000    # 300.0f

    div-float/2addr p1, p2

    .line 653
    invoke-virtual {v0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v2, p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 p1, 0x0

    .line 658
    iget-wide v0, p0, Lcom/android/common/c/f;->A:J

    cmp-long p2, v0, v3

    if-lez p2, :cond_2

    .line 659
    iget-object p1, p0, Lcom/android/common/c/f;->r:Landroid/graphics/Rect;

    .line 661
    :cond_2
    iget-object p2, p0, Lcom/android/common/c/f;->B:Lcom/android/common/d/a;

    iget-object v0, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-virtual {p2, p0, p1, v0, v2}, Lcom/android/common/d/a;->a(Lcom/android/common/c/f;Landroid/graphics/Rect;Lcom/android/common/b/g;F)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/common/c/f;->F:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 122
    monitor-enter p0

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/android/common/c/f;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/android/common/c/f;->h:Landroid/view/SurfaceHolder;

    .line 126
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/android/common/c/f;->j:Z

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v0, p0, Lcom/android/common/c/f;->F:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    const-string v0, "RenderThread"

    const-string v1, "releaseSurfaceHolder"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 130
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(I)V
    .locals 3

    .line 266
    iget-boolean v0, p0, Lcom/android/common/c/f;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSwithCamera, switchStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/common/c/f;->J:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 267
    iget-boolean v0, p0, Lcom/android/common/c/f;->J:Z

    if-eqz v0, :cond_0

    return-void

    .line 270
    :cond_0
    iput p1, p0, Lcom/android/common/c/f;->I:I

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lcom/android/common/c/f;->L:Z

    .line 272
    iput-boolean p1, p0, Lcom/android/common/c/f;->J:Z

    .line 273
    invoke-virtual {p0}, Lcom/android/common/c/f;->m()V

    return-void
.end method

.method public b(Lcom/android/common/c/f$a;)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 329
    iget-object p1, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/common/c/f$a;

    iput-object p1, p0, Lcom/android/common/c/f;->w:[Lcom/android/common/c/f$a;

    .line 330
    iget-object v1, p0, Lcom/android/common/c/f;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 331
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Z)V
    .locals 0

    .line 975
    iput-boolean p1, p0, Lcom/android/common/c/f;->E:Z

    return-void
.end method

.method public b(Lcom/android/common/c/f$b;)Z
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/android/common/c/f;->f:Lcom/android/common/c/b;

    invoke-virtual {v0, p1}, Lcom/android/common/c/b;->b(Lcom/android/common/c/f$b;)Z

    move-result p1

    return p1
.end method

.method public c()Lcom/android/common/b/l;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/common/c/f;->o:Lcom/android/common/b/l;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/android/common/c/f;->s:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/common/c/f;->t:I

    return v0
.end method

.method public f()V
    .locals 2

    .line 241
    iget-boolean v0, p0, Lcom/android/common/c/f;->b:Z

    const-string v1, "stopBlur"

    invoke-virtual {p0, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 242
    iget-boolean v0, p0, Lcom/android/common/c/f;->K:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/android/common/c/f;->K:Z

    .line 246
    invoke-virtual {p0}, Lcom/android/common/c/f;->m()V

    return-void
.end method

.method public g()Z
    .locals 1

    .line 262
    iget v0, p0, Lcom/android/common/c/f;->H:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()V
    .locals 3

    .line 277
    iget-boolean v0, p0, Lcom/android/common/c/f;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSwitchCamera, switchStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/common/c/f;->J:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 278
    iget-boolean v0, p0, Lcom/android/common/c/f;->J:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcom/android/common/c/f;->J:Z

    .line 282
    invoke-virtual {p0}, Lcom/android/common/c/f;->m()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 335
    monitor-enter p0

    const/4 v0, 0x1

    .line 336
    :try_start_0
    iput-boolean v0, p0, Lcom/android/common/c/f;->d:Z

    const/4 v1, 0x0

    .line 337
    iput-boolean v1, p0, Lcom/android/common/c/f;->e:Z

    .line 338
    iput-boolean v0, p0, Lcom/android/common/c/f;->z:Z

    .line 339
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 340
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :try_start_1
    invoke-virtual {p0}, Lcom/android/common/c/f;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 340
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public j()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/android/common/c/f;->d:Z

    return v0
.end method

.method public k()V
    .locals 2

    const-string v0, "RenderThread"

    const-string v1, "Pause Render"

    .line 356
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    monitor-enter p0

    const/4 v0, 0x1

    .line 358
    :try_start_0
    iput-boolean v0, p0, Lcom/android/common/c/f;->e:Z

    .line 359
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 360
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l()V
    .locals 3

    .line 367
    monitor-enter p0

    :try_start_0
    const-string v0, "RenderThread"

    const-string v1, "Resume Render"

    .line 368
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 369
    iput-boolean v0, p0, Lcom/android/common/c/f;->e:Z

    .line 370
    iput-boolean v0, p0, Lcom/android/common/c/f;->K:Z

    .line 371
    iput-boolean v0, p0, Lcom/android/common/c/f;->J:Z

    .line 372
    iget v1, p0, Lcom/android/common/c/f;->M:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x7

    .line 373
    iput v1, p0, Lcom/android/common/c/f;->H:I

    goto :goto_0

    .line 375
    :cond_0
    iput v0, p0, Lcom/android/common/c/f;->H:I

    .line 377
    :goto_0
    iput-boolean v0, p0, Lcom/android/common/c/f;->C:Z

    .line 378
    iput v0, p0, Lcom/android/common/c/f;->D:I

    .line 379
    invoke-virtual {p0, v2}, Lcom/android/common/c/f;->a(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {v0}, Lcom/android/common/d/b;->c()V

    .line 383
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 384
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized m()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 393
    :try_start_0
    iput-boolean v0, p0, Lcom/android/common/c/f;->z:Z

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()V
    .locals 2

    monitor-enter p0

    .line 398
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/c/f;->A:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/android/common/c/f;->l:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 884
    iget v0, p0, Lcom/android/common/c/f;->i:I

    return v0
.end method

.method public q()Lcom/android/common/b/e;
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/android/common/c/f;->m:Lcom/android/common/b/e;

    return-object v0
.end method

.method public r()Landroid/graphics/Rect;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/android/common/c/f;->r:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    :cond_0
    return-object v0
.end method

.method public run()V
    .locals 7

    .line 425
    :try_start_0
    invoke-direct {p0}, Lcom/android/common/c/f;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 432
    :goto_0
    iget-boolean v0, p0, Lcom/android/common/c/f;->d:Z

    if-nez v0, :cond_a

    .line 433
    monitor-enter p0

    .line 434
    :try_start_1
    iget-boolean v0, p0, Lcom/android/common/c/f;->d:Z

    if-eqz v0, :cond_0

    .line 435
    monitor-exit p0

    goto :goto_0

    .line 438
    :cond_0
    invoke-direct {p0}, Lcom/android/common/c/f;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    monitor-exit p0

    goto :goto_0

    .line 443
    :cond_1
    iget-wide v0, p0, Lcom/android/common/c/f;->A:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-gtz v0, :cond_4

    .line 444
    iget-object v0, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    invoke-virtual {v0}, Lcom/android/common/b/g;->c()V

    .line 445
    iget-object v0, p0, Lcom/android/common/c/f;->B:Lcom/android/common/d/a;

    iget-object v5, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1, v5, v6}, Lcom/android/common/d/a;->a(Lcom/android/common/c/f;Landroid/graphics/Rect;Lcom/android/common/b/g;F)Z

    .line 447
    iget v0, p0, Lcom/android/common/c/f;->H:I

    const/4 v5, 0x7

    if-ne v0, v5, :cond_2

    .line 448
    iget-object v0, p0, Lcom/android/common/c/f;->G:Lcom/android/common/d/b;

    iget-object v5, p0, Lcom/android/common/c/f;->x:Lcom/android/common/b/g;

    iget-object v6, p0, Lcom/android/common/c/f;->B:Lcom/android/common/d/a;

    invoke-virtual {v6, p0, v1, v4}, Lcom/android/common/d/a;->a(Lcom/android/common/c/f;Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    const/16 v6, 0x99

    .line 449
    invoke-static {v6, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 448
    invoke-virtual {v0, v5, v1, v6}, Lcom/android/common/d/b;->a(Lcom/android/common/b/g;Landroid/graphics/Rect;I)V

    .line 451
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 452
    iget-object v0, p0, Lcom/android/common/c/f;->u:Lcom/android/common/b/c;

    invoke-virtual {v0}, Lcom/android/common/b/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "RenderThread"

    const-string v1, "wait first frame"

    .line 455
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    const-string v0, "RenderThread"

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exit. First frame arrived "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/common/c/f;->A:J

    cmp-long v2, v5, v2

    if-lez v2, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 459
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 462
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 465
    :cond_4
    iget-boolean v0, p0, Lcom/android/common/c/f;->e:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    :try_start_4
    const-string v0, "RenderThread"

    const-string v1, "thread pause"

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 470
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 472
    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    .line 475
    :cond_5
    iget-object v0, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_6

    .line 479
    :cond_6
    iget-boolean v0, p0, Lcom/android/common/c/f;->y:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/common/c/f;->Q:Lcom/android/common/c/d;

    invoke-virtual {v0}, Lcom/android/common/c/d;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 480
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 481
    :try_start_6
    iget-boolean v0, p0, Lcom/android/common/c/f;->z:Z

    if-eqz v0, :cond_7

    .line 482
    iput-boolean v4, p0, Lcom/android/common/c/f;->z:Z

    .line 492
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 486
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 488
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 490
    :goto_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 492
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v0

    .line 495
    :cond_8
    :goto_4
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 500
    :try_start_c
    iget-object v0, p0, Lcom/android/common/c/f;->l:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    const-string v2, "RenderThread"

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTexImage fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/common/c/f;->a(Lcom/android/common/b/l;)V

    .line 507
    invoke-direct {p0}, Lcom/android/common/c/f;->F()V

    .line 508
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 511
    iget-object v0, p0, Lcom/android/common/c/f;->f:Lcom/android/common/c/b;

    invoke-virtual {v0}, Lcom/android/common/c/b;->a()V

    .line 512
    iget-object v0, p0, Lcom/android/common/c/f;->g:Lcom/android/common/c/c;

    invoke-virtual {v0}, Lcom/android/common/c/c;->a()V

    .line 513
    invoke-direct {p0}, Lcom/android/common/c/f;->K()Z

    .line 514
    iget-object v0, p0, Lcom/android/common/c/f;->u:Lcom/android/common/b/c;

    invoke-virtual {v0}, Lcom/android/common/b/c;->b()V

    goto/16 :goto_0

    .line 476
    :cond_9
    :goto_6
    :try_start_d
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 495
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    .line 516
    :cond_a
    invoke-direct {p0}, Lcom/android/common/c/f;->y()V

    .line 517
    invoke-direct {p0}, Lcom/android/common/c/f;->B()V

    .line 518
    iget-object v0, p0, Lcom/android/common/c/f;->u:Lcom/android/common/b/c;

    invoke-virtual {v0}, Lcom/android/common/b/c;->a()V

    const-string v0, "RenderThread"

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/c/f;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    iget-object v0, p0, Lcom/android/common/c/f;->F:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public s()Landroid/graphics/Rect;
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/android/common/c/f;->q:Landroid/graphics/Rect;

    return-object v0
.end method

.method public t()Landroid/graphics/Rect;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/android/common/c/f;->p:Landroid/graphics/Rect;

    return-object v0
.end method

.method public u()Lcom/android/common/a/b;
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/android/common/c/f;->R:Lcom/android/common/a/b;

    return-object v0
.end method

.method public v()Lcom/android/common/b/c;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/android/common/c/f;->u:Lcom/android/common/b/c;

    return-object v0
.end method

.method public w()Z
    .locals 1

    .line 971
    iget-boolean v0, p0, Lcom/android/common/c/f;->E:Z

    return v0
.end method

.method public x()Z
    .locals 4

    .line 980
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/common/c/f;->A:J

    sub-long/2addr v0, v2

    .line 981
    invoke-direct {p0, v0, v1}, Lcom/android/common/c/f;->b(J)Z

    move-result v0

    return v0
.end method
