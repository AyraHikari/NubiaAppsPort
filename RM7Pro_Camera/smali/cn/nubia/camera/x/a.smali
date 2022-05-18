.class public Lcn/nubia/camera/x/a;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/camera/j/d;
.implements Lcn/nubia/camera/q/g;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# instance fields
.field private a:Lcn/nubia/camera/x/f;

.field private b:Lcom/android/preference/IconListPreference;

.field private c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

.field private i:Lcn/nubia/camera/x/d;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/android/common/ui/ZtemtSlidingDrawer;

.field private m:Lcom/android/common/ui/RotateTextImageView;

.field private n:Lcom/android/common/ui/RotateTextImageView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/ImageView;

.field private q:Lcom/android/preference/IconListPreference;

.field private r:Lcom/android/common/ui/ZtemtSlidingDrawer;

.field private s:Lcom/android/common/ui/RotateTextImageView;

.field private t:Lcom/android/common/ui/RotateTextImageView;

.field private u:Landroid/net/Uri;

.field private v:Landroid/graphics/Bitmap;

.field private w:Lcn/nubia/camera/k/e;

.field private x:Landroid/graphics/Bitmap;

.field private y:Ljava/lang/Boolean;

.field private z:Lcn/nubia/camera/zoom/arc/a$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcn/nubia/camera/x/a;->a:Lcn/nubia/camera/x/f;

    .line 79
    iput-object v0, p0, Lcn/nubia/camera/x/a;->b:Lcom/android/preference/IconListPreference;

    .line 80
    iput-object v0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    .line 81
    iput-object v0, p0, Lcn/nubia/camera/x/a;->i:Lcn/nubia/camera/x/d;

    .line 83
    iput-object v0, p0, Lcn/nubia/camera/x/a;->j:Landroid/widget/RelativeLayout;

    .line 84
    iput-object v0, p0, Lcn/nubia/camera/x/a;->k:Landroid/widget/ImageView;

    .line 85
    iput-object v0, p0, Lcn/nubia/camera/x/a;->l:Lcom/android/common/ui/ZtemtSlidingDrawer;

    .line 86
    iput-object v0, p0, Lcn/nubia/camera/x/a;->m:Lcom/android/common/ui/RotateTextImageView;

    .line 87
    iput-object v0, p0, Lcn/nubia/camera/x/a;->n:Lcom/android/common/ui/RotateTextImageView;

    .line 89
    iput-object v0, p0, Lcn/nubia/camera/x/a;->o:Landroid/widget/RelativeLayout;

    .line 90
    iput-object v0, p0, Lcn/nubia/camera/x/a;->p:Landroid/widget/ImageView;

    .line 91
    iput-object v0, p0, Lcn/nubia/camera/x/a;->q:Lcom/android/preference/IconListPreference;

    .line 92
    iput-object v0, p0, Lcn/nubia/camera/x/a;->r:Lcom/android/common/ui/ZtemtSlidingDrawer;

    .line 93
    iput-object v0, p0, Lcn/nubia/camera/x/a;->s:Lcom/android/common/ui/RotateTextImageView;

    .line 94
    iput-object v0, p0, Lcn/nubia/camera/x/a;->t:Lcom/android/common/ui/RotateTextImageView;

    .line 96
    iput-object v0, p0, Lcn/nubia/camera/x/a;->u:Landroid/net/Uri;

    .line 97
    iput-object v0, p0, Lcn/nubia/camera/x/a;->v:Landroid/graphics/Bitmap;

    .line 98
    iput-object v0, p0, Lcn/nubia/camera/x/a;->w:Lcn/nubia/camera/k/e;

    .line 99
    iput-object v0, p0, Lcn/nubia/camera/x/a;->x:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 100
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/x/a;->y:Ljava/lang/Boolean;

    .line 761
    iput-object v0, p0, Lcn/nubia/camera/x/a;->z:Lcn/nubia/camera/zoom/arc/a$a;

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/x/f;)V
    .locals 1

    .line 108
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcn/nubia/camera/x/a;->a:Lcn/nubia/camera/x/f;

    .line 79
    iput-object p1, p0, Lcn/nubia/camera/x/a;->b:Lcom/android/preference/IconListPreference;

    .line 80
    iput-object p1, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    .line 81
    iput-object p1, p0, Lcn/nubia/camera/x/a;->i:Lcn/nubia/camera/x/d;

    .line 83
    iput-object p1, p0, Lcn/nubia/camera/x/a;->j:Landroid/widget/RelativeLayout;

    .line 84
    iput-object p1, p0, Lcn/nubia/camera/x/a;->k:Landroid/widget/ImageView;

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/x/a;->l:Lcom/android/common/ui/ZtemtSlidingDrawer;

    .line 86
    iput-object p1, p0, Lcn/nubia/camera/x/a;->m:Lcom/android/common/ui/RotateTextImageView;

    .line 87
    iput-object p1, p0, Lcn/nubia/camera/x/a;->n:Lcom/android/common/ui/RotateTextImageView;

    .line 89
    iput-object p1, p0, Lcn/nubia/camera/x/a;->o:Landroid/widget/RelativeLayout;

    .line 90
    iput-object p1, p0, Lcn/nubia/camera/x/a;->p:Landroid/widget/ImageView;

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/x/a;->q:Lcom/android/preference/IconListPreference;

    .line 92
    iput-object p1, p0, Lcn/nubia/camera/x/a;->r:Lcom/android/common/ui/ZtemtSlidingDrawer;

    .line 93
    iput-object p1, p0, Lcn/nubia/camera/x/a;->s:Lcom/android/common/ui/RotateTextImageView;

    .line 94
    iput-object p1, p0, Lcn/nubia/camera/x/a;->t:Lcom/android/common/ui/RotateTextImageView;

    .line 96
    iput-object p1, p0, Lcn/nubia/camera/x/a;->u:Landroid/net/Uri;

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/x/a;->v:Landroid/graphics/Bitmap;

    .line 98
    iput-object p1, p0, Lcn/nubia/camera/x/a;->w:Lcn/nubia/camera/k/e;

    .line 99
    iput-object p1, p0, Lcn/nubia/camera/x/a;->x:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 100
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/x/a;->y:Ljava/lang/Boolean;

    .line 761
    iput-object p1, p0, Lcn/nubia/camera/x/a;->z:Lcn/nubia/camera/zoom/arc/a$a;

    .line 109
    iput-object p2, p0, Lcn/nubia/camera/x/a;->a:Lcn/nubia/camera/x/f;

    return-void
.end method

.method private J()V
    .locals 2

    const-string v0, "ui_change_id_photo"

    .line 447
    invoke-virtual {p0, v0}, Lcn/nubia/camera/x/a;->e(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/x/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/x/c;->f(Z)V

    return-void
.end method

.method private K()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcn/nubia/camera/x/a;->n:Lcom/android/common/ui/RotateTextImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setEnabled(Z)V

    const/16 v0, 0x65

    .line 476
    invoke-direct {p0, v0}, Lcn/nubia/camera/x/a;->c(I)V

    .line 478
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/camera/x/a$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/x/a$5;-><init>(Lcn/nubia/camera/x/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 496
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private L()Landroid/graphics/Bitmap;
    .locals 6

    .line 537
    iget-object v0, p0, Lcn/nubia/camera/x/a;->q:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->g()[I

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/x/a;->q:Lcom/android/preference/IconListPreference;

    invoke-virtual {v1}, Lcom/android/preference/IconListPreference;->n()I

    move-result v1

    aget v0, v0, v1

    .line 538
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcn/nubia/camera/x/a;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/x/a;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lcn/nubia/camera/x/a;->x:Landroid/graphics/Bitmap;

    .line 542
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/x/a;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 543
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 544
    invoke-virtual {v3, v0, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 545
    invoke-virtual {v3, v1, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method private M()V
    .locals 15

    .line 551
    iget-object v0, p0, Lcn/nubia/camera/x/a;->w:Lcn/nubia/camera/k/e;

    if-nez v0, :cond_0

    const-string v0, "IdPhotoFragment"

    const-string v1, "image is null"

    .line 552
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 555
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v10

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 557
    invoke-static {v11, v12}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->Q:Lcn/nubia/camera/af/a;

    invoke-virtual {v2}, Lcn/nubia/camera/af/a;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v9

    .line 559
    iget-object v1, p0, Lcn/nubia/camera/x/a;->w:Lcn/nubia/camera/k/e;

    invoke-virtual {v1}, Lcn/nubia/camera/k/e;->b()I

    move-result v7

    iget-object v1, p0, Lcn/nubia/camera/x/a;->w:Lcn/nubia/camera/k/e;

    invoke-virtual {v1}, Lcn/nubia/camera/k/e;->c()I

    move-result v8

    move-object v1, p0

    move-object v2, v0

    move-object v3, v9

    move-wide v4, v11

    move v6, v10

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/x/a;->a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v13

    .line 561
    new-instance v14, Lcn/nubia/k/b/f;

    .line 562
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    .line 564
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v4

    iget-object v1, p0, Lcn/nubia/camera/x/a;->w:Lcn/nubia/camera/k/e;

    .line 565
    invoke-virtual {v1}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object v5

    .line 566
    invoke-direct {p0, v11, v12}, Lcn/nubia/camera/x/a;->a(J)Landroid/util/SparseArray;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    move-object v1, v14

    move-object v9, v13

    invoke-direct/range {v1 .. v11}, Lcn/nubia/k/b/f;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;)V

    .line 574
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v14, v1}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    return-void
.end method

.method private N()V
    .locals 15

    .line 578
    iget-object v0, p0, Lcn/nubia/camera/x/a;->x:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v0, "IdPhotoFragment"

    const-string v1, "photo is null"

    .line 579
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 583
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->L()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 586
    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 587
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/af/a;->Q:Lcn/nubia/camera/af/a;

    invoke-virtual {v4}, Lcn/nubia/camera/af/a;->a()I

    move-result v4

    invoke-static {v3, v4}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    .line 588
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move-object v7, p0

    move-object v8, v2

    move-object v9, v3

    move-wide v10, v0

    invoke-direct/range {v7 .. v14}, Lcn/nubia/camera/x/a;->a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v10

    .line 590
    new-instance v14, Lcn/nubia/k/b/b;

    .line 591
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 592
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v5

    .line 593
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/camera/x/a;->y:Ljava/lang/Boolean;

    .line 595
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/x/a;->a(J)Landroid/util/SparseArray;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v14

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v0

    invoke-direct/range {v2 .. v13}, Lcn/nubia/k/b/b;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 604
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v14, v1}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    return-void
.end method

.method private O()V
    .locals 1

    .line 655
    iget-object v0, p0, Lcn/nubia/camera/x/a;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/x/a;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lcn/nubia/camera/x/a;->v:Landroid/graphics/Bitmap;

    .line 657
    iput-object v0, p0, Lcn/nubia/camera/x/a;->w:Lcn/nubia/camera/k/e;

    .line 658
    iput-object v0, p0, Lcn/nubia/camera/x/a;->x:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private P()V
    .locals 2

    .line 763
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->d()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    new-instance v0, Lcn/nubia/camera/x/a$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/x/a$7;-><init>(Lcn/nubia/camera/x/a;)V

    iput-object v0, p0, Lcn/nubia/camera/x/a;->z:Lcn/nubia/camera/zoom/arc/a$a;

    .line 779
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->d()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/x/a;->z:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 2

    .line 784
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->d()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->d()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/x/a;->z:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->b(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;
    .locals 2

    .line 608
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 609
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".jpg"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-static {p2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 613
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 618
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 619
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 463
    iget-object v0, p0, Lcn/nubia/camera/x/a;->b:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/x/a;->b:Lcom/android/preference/IconListPreference;

    invoke-virtual {v1}, Lcom/android/preference/IconListPreference;->n()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v1, "\\*"

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 465
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 466
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 468
    iget-object v2, p0, Lcn/nubia/camera/x/a;->i:Lcn/nubia/camera/x/d;

    if-eqz v2, :cond_0

    .line 469
    invoke-virtual {v2, p1, v1, v0}, Lcn/nubia/camera/x/d;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 11

    .line 417
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 419
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "_data"

    .line 420
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0}, Lcn/nubia/camera/x/g;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 422
    invoke-static {v0}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v1

    const/4 v2, 0x0

    .line 423
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 424
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x44870000    # 1080.0f

    if-eqz v1, :cond_0

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_1

    .line 426
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 427
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 428
    invoke-virtual {v9, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x5a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_3

    .line 429
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    .line 430
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 431
    invoke-virtual {v9, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_3
    :goto_0
    int-to-float v0, v1

    .line 433
    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 434
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 436
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0
.end method

.method private a(Lcn/nubia/camera/k/e;)Landroid/graphics/Bitmap;
    .locals 10

    .line 453
    invoke-virtual {p1}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 454
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 455
    invoke-virtual {p1}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/av/a;->a([B)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v8, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 456
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 458
    invoke-direct {p0, p1}, Lcn/nubia/camera/x/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/x/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/camera/x/a;->x:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/x/a;Lcn/nubia/camera/k/e;)Landroid/graphics/Bitmap;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcn/nubia/camera/x/a;->a(Lcn/nubia/camera/k/e;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private a(J)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 625
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 626
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 627
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 628
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 629
    sget v3, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 630
    sget v3, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 631
    sget v3, Lcn/nubia/d/a;->ad:I

    new-instance v4, Lcn/nubia/d/l;

    const/4 v5, 0x0

    aget v2, v2, v5

    const v6, 0x3c23d70a    # 0.01f

    invoke-direct {v4, v2, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    sget v2, Lcn/nubia/d/a;->H:I

    new-instance v3, Lcn/nubia/d/l;

    aget v1, v1, v5

    invoke-direct {v3, v1, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 633
    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 634
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 636
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {v1, v2, p1, p2, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 638
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/x/a;->a(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public static a(Lcn/nubia/camera/x/f;)Lcn/nubia/camera/x/a;
    .locals 2

    .line 113
    new-instance v0, Lcn/nubia/camera/x/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcn/nubia/camera/x/a;-><init>(ILcn/nubia/camera/x/f;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/x/a;)Lcom/android/common/ui/ZtemtSlidingDrawer;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/camera/x/a;->l:Lcom/android/common/ui/ZtemtSlidingDrawer;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/x/a;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/camera/x/a;->y:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 643
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 647
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 649
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 354
    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v1

    .line 355
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 356
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 357
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/a/a;

    invoke-virtual {p2}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object p2

    .line 358
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 359
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/x/a;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcn/nubia/camera/x/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/x/a;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcn/nubia/camera/x/a;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/x/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcn/nubia/camera/x/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/x/a;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/x/a;Lcn/nubia/camera/k/e;)Lcn/nubia/camera/k/e;
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/camera/x/a;->w:Lcn/nubia/camera/k/e;

    return-object p1
.end method

.method private b(I)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcn/nubia/camera/x/a;->q:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->g()[I

    move-result-object v0

    aget p1, v0, p1

    .line 346
    iget-object v0, p0, Lcn/nubia/camera/x/a;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 746
    iget-object v0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 747
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    sget-object v1, Lcn/nubia/camera/af/a;->Q:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/ba/f;->a(ILcn/nubia/camera/af/a;)V

    goto :goto_1

    .line 749
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, Lcn/nubia/camera/af/a;->Q:Lcn/nubia/camera/af/a;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->a(ILcn/nubia/camera/af/a;)V

    :goto_1
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/x/a;)Landroid/graphics/Bitmap;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/camera/x/a;->v:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private c(I)V
    .locals 3

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0f0103

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0f0105

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0f0106

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0f010b

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0f0108

    goto :goto_0

    :pswitch_4
    const p1, 0x7f0f010a

    goto :goto_0

    :pswitch_5
    const p1, 0x7f0f0107

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0104

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0109

    .line 533
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcn/nubia/camera/x/a;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1, v2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;IIZ)V

    return-void

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcn/nubia/camera/x/a;)Lcom/android/common/ui/RotateTextImageView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/camera/x/a;->n:Lcom/android/common/ui/RotateTextImageView;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lcn/nubia/camera/x/a;->e(Landroid/view/View;)V

    .line 248
    invoke-direct {p0, p1}, Lcn/nubia/camera/x/a;->f(Landroid/view/View;)V

    .line 249
    invoke-direct {p0, p1}, Lcn/nubia/camera/x/a;->g(Landroid/view/View;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcn/nubia/camera/x/a;->i:Lcn/nubia/camera/x/d;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcn/nubia/camera/x/d;

    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/x/d;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcn/nubia/camera/x/a;->i:Lcn/nubia/camera/x/d;

    .line 235
    invoke-virtual {v0}, Lcn/nubia/camera/x/d;->g()V

    :cond_0
    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0901ae

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 254
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object v0

    .line 255
    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/x/a;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->o()Z

    move-result p0

    return p0
.end method

.method private f(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0901ad

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/x/a;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901ac

    .line 260
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/x/a;->k:Landroid/widget/ImageView;

    const v0, 0x7f0901aa

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateTextImageView;

    iput-object v0, p0, Lcn/nubia/camera/x/a;->m:Lcom/android/common/ui/RotateTextImageView;

    const v0, 0x7f0901ab

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateTextImageView;

    iput-object p1, p0, Lcn/nubia/camera/x/a;->n:Lcom/android/common/ui/RotateTextImageView;

    .line 263
    iget-object p1, p0, Lcn/nubia/camera/x/a;->m:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {p1, p0}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object p1, p0, Lcn/nubia/camera/x/a;->n:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {p1, p0}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/x/a;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->n()V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/x/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private g(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0901a8

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/x/a;->o:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901a9

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/x/a;->p:Landroid/widget/ImageView;

    const v0, 0x7f0901a6

    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateTextImageView;

    iput-object v0, p0, Lcn/nubia/camera/x/a;->s:Lcom/android/common/ui/RotateTextImageView;

    const v0, 0x7f0901af

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateTextImageView;

    iput-object p1, p0, Lcn/nubia/camera/x/a;->t:Lcom/android/common/ui/RotateTextImageView;

    .line 272
    iget-object p1, p0, Lcn/nubia/camera/x/a;->s:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {p1, p0}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object p1, p0, Lcn/nubia/camera/x/a;->t:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {p1, p0}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/x/a;)Landroid/graphics/Bitmap;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/camera/x/a;->x:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private h(Landroid/view/View;)V
    .locals 3

    .line 277
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_id_photo_size_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    iput-object v0, p0, Lcn/nubia/camera/x/a;->b:Lcom/android/preference/IconListPreference;

    const v0, 0x7f0901b6

    .line 283
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    iput-object v0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    .line 284
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setHandleImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    iget-object v1, p0, Lcn/nubia/camera/x/a;->b:Lcom/android/preference/IconListPreference;

    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(Lcom/android/preference/IconListPreference;Landroid/content/Context;)V

    .line 286
    iget-object v0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    new-instance v1, Lcn/nubia/camera/x/a$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/x/a$1;-><init>(Lcn/nubia/camera/x/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setItemClickListener(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$a;)V

    .line 293
    iget-object v0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/widget/RelativeLayout;Lcn/nubia/camera/a/a;)V

    .line 295
    iget-object v0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    new-instance v1, Lcn/nubia/camera/x/a$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/x/a$2;-><init>(Lcn/nubia/camera/x/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setDrawerListener(Lcom/android/common/ui/f$a;)V

    .line 313
    iget-object v0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/x/a;->b(Z)V

    const v0, 0x7f0901b0

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/ZtemtSlidingDrawer;

    iput-object p1, p0, Lcn/nubia/camera/x/a;->l:Lcom/android/common/ui/ZtemtSlidingDrawer;

    .line 317
    iget-object v0, p0, Lcn/nubia/camera/x/a;->b:Lcom/android/preference/IconListPreference;

    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/common/ui/ZtemtSlidingDrawer;->a(Lcom/android/preference/IconListPreference;Landroid/content/Context;Z)V

    .line 318
    iget-object p1, p0, Lcn/nubia/camera/x/a;->l:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/widget/RelativeLayout;Lcn/nubia/camera/a/a;)V

    .line 319
    iget-object p1, p0, Lcn/nubia/camera/x/a;->l:Lcom/android/common/ui/ZtemtSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/x/a$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/x/a$3;-><init>(Lcn/nubia/camera/x/a;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->setItemClickListener(Lcom/android/common/ui/ZtemtSlidingDrawer$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 3

    .line 328
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/x/a;->r:Lcom/android/common/ui/ZtemtSlidingDrawer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_id_photo_bg_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    iput-object v0, p0, Lcn/nubia/camera/x/a;->q:Lcom/android/preference/IconListPreference;

    const v0, 0x7f0901a7

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/ZtemtSlidingDrawer;

    iput-object p1, p0, Lcn/nubia/camera/x/a;->r:Lcom/android/common/ui/ZtemtSlidingDrawer;

    .line 333
    iget-object v0, p0, Lcn/nubia/camera/x/a;->q:Lcom/android/preference/IconListPreference;

    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/common/ui/ZtemtSlidingDrawer;->a(Lcom/android/preference/IconListPreference;Landroid/content/Context;Z)V

    .line 334
    iget-object p1, p0, Lcn/nubia/camera/x/a;->r:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/widget/RelativeLayout;Lcn/nubia/camera/a/a;)V

    .line 336
    iget-object p1, p0, Lcn/nubia/camera/x/a;->r:Lcom/android/common/ui/ZtemtSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/x/a$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/x/a$4;-><init>(Lcn/nubia/camera/x/a;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->setItemClickListener(Lcom/android/common/ui/ZtemtSlidingDrawer$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/x/a;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->J()V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/x/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/x/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private l()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcn/nubia/camera/x/a;->i:Lcn/nubia/camera/x/d;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcn/nubia/camera/x/d;->a()V

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcn/nubia/camera/x/a;->i:Lcn/nubia/camera/x/d;

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcn/nubia/camera/x/a;->u:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 364
    invoke-direct {p0, v0}, Lcn/nubia/camera/x/a;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/x/a;->v:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 365
    iput-object v1, p0, Lcn/nubia/camera/x/a;->u:Landroid/net/Uri;

    .line 366
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/x/a;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v1, 0x3c0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ui_change_id_photo"

    .line 371
    invoke-virtual {p0, v0}, Lcn/nubia/camera/x/a;->d(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcn/nubia/camera/x/a;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/camera/x/a;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 374
    iget-object v0, p0, Lcn/nubia/camera/x/a;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/camera/x/a;->v:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/x/a;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 375
    iget-object v0, p0, Lcn/nubia/camera/x/a;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x64

    .line 367
    invoke-direct {p0, v0}, Lcn/nubia/camera/x/a;->c(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private n()V
    .locals 2

    const-string v0, "ui_change_id_photo"

    .line 380
    invoke-virtual {p0, v0}, Lcn/nubia/camera/x/a;->c(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcn/nubia/camera/x/a;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 383
    iget-object v0, p0, Lcn/nubia/camera/x/a;->j:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 385
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->O()V

    return-void
.end method

.method private o()Z
    .locals 3

    .line 389
    iget-object v0, p0, Lcn/nubia/camera/x/a;->x:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcn/nubia/camera/x/a;->i:Lcn/nubia/camera/x/d;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcn/nubia/camera/x/d;->h()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/x/a;->c(I)V

    :cond_0
    return v1

    :cond_1
    const-string v0, "ui_change_id_photo"

    .line 396
    invoke-virtual {p0, v0}, Lcn/nubia/camera/x/a;->d(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcn/nubia/camera/x/a;->p:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/camera/x/a;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 399
    iget-object v0, p0, Lcn/nubia/camera/x/a;->q:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->n()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/x/a;->b(I)V

    .line 400
    iget-object v0, p0, Lcn/nubia/camera/x/a;->p:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/camera/x/a;->x:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v2}, Lcn/nubia/camera/x/a;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 401
    iget-object v0, p0, Lcn/nubia/camera/x/a;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method

.method private r()V
    .locals 2

    const-string v0, "ui_change_id_photo"

    .line 407
    invoke-virtual {p0, v0}, Lcn/nubia/camera/x/a;->c(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcn/nubia/camera/x/a;->p:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 410
    iget-object v0, p0, Lcn/nubia/camera/x/a;->o:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 412
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->O()V

    return-void
.end method

.method private s()V
    .locals 2

    const-string v0, "ui_change_id_photo"

    .line 442
    invoke-virtual {p0, v0}, Lcn/nubia/camera/x/a;->f(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/x/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/x/c;->f(Z)V

    return-void
.end method


# virtual methods
.method protected a(IZ)V
    .locals 1

    .line 207
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(IZ)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/x/a;->r:Lcom/android/common/ui/ZtemtSlidingDrawer;

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/ZtemtSlidingDrawer;->a(IZ)V

    .line 214
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/x/a;->s:Lcom/android/common/ui/RotateTextImageView;

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateTextImageView;->a(IZ)V

    .line 217
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/x/a;->t:Lcom/android/common/ui/RotateTextImageView;

    if-eqz v0, :cond_3

    .line 218
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateTextImageView;->a(IZ)V

    .line 221
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/x/a;->l:Lcom/android/common/ui/ZtemtSlidingDrawer;

    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/ZtemtSlidingDrawer;->a(IZ)V

    .line 224
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/x/a;->m:Lcom/android/common/ui/RotateTextImageView;

    if-eqz v0, :cond_5

    .line 225
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateTextImageView;->a(IZ)V

    .line 227
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/x/a;->n:Lcom/android/common/ui/RotateTextImageView;

    if-eqz v0, :cond_6

    .line 228
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateTextImageView;->a(IZ)V

    :cond_6
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    .line 718
    iget-object p1, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    .line 719
    iget-object p1, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/x/a;->b(Z)V

    .line 720
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->d()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 721
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->d()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "ui_change_id_photo"

    invoke-virtual {p1, p2, p3}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 755
    iget-object v0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object p1, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f()Z

    move-result p1

    return p1

    .line 758
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 4

    .line 668
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 672
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->s()V

    .line 674
    new-instance v0, Lcn/nubia/camera/g/h;

    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    .line 675
    new-instance v1, Lcn/nubia/camera/x/a$6;

    invoke-direct {v1, p0}, Lcn/nubia/camera/x/a$6;-><init>(Lcn/nubia/camera/x/a;)V

    .line 693
    iget-object v2, p0, Lcn/nubia/camera/x/a;->a:Lcn/nubia/camera/x/f;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcn/nubia/camera/x/f;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    return-void
.end method

.method public b(ZJJ)V
    .locals 0

    .line 709
    iget-object p1, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setVisibility(I)V

    .line 710
    iget-object p1, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/x/a;->b(Z)V

    .line 711
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->d()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 712
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->d()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    const/16 p2, 0x8

    const-string p3, "ui_change_id_photo"

    invoke-virtual {p1, p2, p3}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Lcn/nubia/camera/zoom/arc/a;
    .locals 1

    .line 790
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 727
    iget-object v0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setEnabled(Z)V

    return-void
.end method

.method protected i_()V
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/x/a;->h(Landroid/view/View;)V

    .line 202
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/x/a;->i(Landroid/view/View;)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 732
    iget-object v0, p0, Lcn/nubia/camera/x/a;->c:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->setEnabled(Z)V

    return-void
.end method

.method public k()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/x/a;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->r()V

    return v1

    .line 172
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/x/a;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->n()V

    return v1

    .line 176
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 703
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/x/a;->u:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 192
    :sswitch_0
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->M()V

    .line 193
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->N()V

    .line 194
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->r()V

    goto :goto_0

    .line 186
    :sswitch_1
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->K()V

    goto :goto_0

    .line 183
    :sswitch_2
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->n()V

    goto :goto_0

    .line 189
    :sswitch_3
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->r()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901a6 -> :sswitch_3
        0x7f0901aa -> :sswitch_2
        0x7f0901ab -> :sswitch_1
        0x7f0901af -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 120
    iget-boolean p3, p0, Lcn/nubia/camera/x/a;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c005f

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Lcn/nubia/camera/x/a;->d(Landroid/view/View;)V

    .line 125
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->P()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    .line 132
    iget-boolean v0, p0, Lcn/nubia/camera/x/a;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 159
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 160
    iget-boolean v0, p0, Lcn/nubia/camera/x/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->Q()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 149
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 150
    iget-boolean v0, p0, Lcn/nubia/camera/x/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->l()V

    .line 154
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->J()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 140
    iget-boolean v0, p0, Lcn/nubia/camera/x/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->e()V

    .line 144
    invoke-direct {p0}, Lcn/nubia/camera/x/a;->m()V

    return-void
.end method

.method public p()V
    .locals 0

    .line 737
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->j()V

    return-void
.end method

.method public q()V
    .locals 0

    .line 742
    invoke-virtual {p0}, Lcn/nubia/camera/x/a;->i()V

    return-void
.end method
