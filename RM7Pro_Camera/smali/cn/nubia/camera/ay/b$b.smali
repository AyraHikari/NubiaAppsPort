.class Lcn/nubia/camera/ay/b$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ay/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ay/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/ay/b;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/ay/b;Lcn/nubia/camera/ay/b$1;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Lcn/nubia/camera/ay/b$b;-><init>(Lcn/nubia/camera/ay/b;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 336
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    .line 380
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 381
    iget-object v0, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {v0}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ay/a;->c()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    .line 382
    iget-object v2, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {v2}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ay/a;->c()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 383
    iget-object v0, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {v0}, Lcn/nubia/camera/ay/b;->j(Lcn/nubia/camera/ay/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    goto/16 :goto_1

    .line 384
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {v0}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ay/a;->c()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 385
    iget-object p1, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->k(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ay/f;->t()V

    .line 386
    iget-object p1, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->j(Lcn/nubia/camera/ay/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    .line 387
    iget-object p1, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->j(Lcn/nubia/camera/ay/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 388
    iget-object p1, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->j(Lcn/nubia/camera/ay/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    .line 389
    iget-object p1, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->j(Lcn/nubia/camera/ay/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 390
    iget-object p1, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->i(Lcn/nubia/camera/ay/b;)V

    goto/16 :goto_1

    .line 376
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->i(Lcn/nubia/camera/ay/b;)V

    .line 377
    iget-object p1, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/camera/ay/a;->a(Z)V

    goto/16 :goto_1

    .line 373
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->h(Lcn/nubia/camera/ay/b;)V

    goto/16 :goto_1

    .line 338
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {v0}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object v0

    const-string v1, "TrajectoryFragment"

    if-nez v0, :cond_5

    const-string p1, "Run TRAJECTORY_COMPOSITION_CONFIRM_FINISH failed!"

    .line 339
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 342
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {v0}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ay/a;->a()I

    move-result v3

    invoke-static {v0, v3}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;I)V

    .line 343
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 344
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 345
    iget-object v3, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {v3}, Lcn/nubia/camera/ay/b;->b(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/al/c;->d()I

    move-result v3

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "orientation ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 348
    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 351
    iget-object v3, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {v3}, Lcn/nubia/camera/ay/b;->c(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_0

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 358
    :goto_0
    invoke-virtual {v8, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 359
    iget-object v10, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object v3, v0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v10, v3}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 360
    iget-object v3, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {v3}, Lcn/nubia/camera/ay/b;->d(Lcn/nubia/camera/ay/b;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    iget-object v2, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {v2}, Lcn/nubia/camera/ay/b;->d(Lcn/nubia/camera/ay/b;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {v3}, Lcn/nubia/camera/ay/b;->e(Lcn/nubia/camera/ay/b;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_7

    .line 363
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    if-eqz p1, :cond_8

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRAJECTORY_COMPOSITION_CONFIRM_FINISH ret = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p1, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->f(Lcn/nubia/camera/ay/b;)V

    .line 370
    :cond_8
    iget-object p1, p0, Lcn/nubia/camera/ay/b$b;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->g(Lcn/nubia/camera/ay/b;)V

    :cond_9
    :goto_1
    return-void
.end method
