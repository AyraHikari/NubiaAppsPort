.class public Lcn/nubia/camera/ax/f;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ax/f$a;,
        Lcn/nubia/camera/ax/f$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/android/common/ui/RotateImageView;

.field private i:Lcom/android/common/ui/RotateImageView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Lcom/android/common/ui/RotateImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:I

.field private o:Lcn/nubia/camera/ax/j;

.field private p:Lcn/nubia/camera/ad/a;

.field private q:Lcn/nubia/camera/ax/b;

.field private r:[B

.field private s:Lcn/nubia/camera/ax/f$a;

.field private t:Lcn/nubia/camera/ax/d;

.field private u:Lcn/nubia/camera/ax/a;

.field private v:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcn/nubia/camera/ax/f;->a:Landroid/widget/ImageView;

    .line 66
    iput-object v0, p0, Lcn/nubia/camera/ax/f;->c:Lcom/android/common/ui/RotateImageView;

    .line 67
    iput-object v0, p0, Lcn/nubia/camera/ax/f;->i:Lcom/android/common/ui/RotateImageView;

    .line 68
    iput-object v0, p0, Lcn/nubia/camera/ax/f;->j:Landroid/widget/RelativeLayout;

    .line 69
    iput-object v0, p0, Lcn/nubia/camera/ax/f;->k:Lcom/android/common/ui/RotateImageView;

    .line 70
    iput-object v0, p0, Lcn/nubia/camera/ax/f;->l:Landroid/widget/TextView;

    .line 71
    iput-object v0, p0, Lcn/nubia/camera/ax/f;->m:Landroid/view/View;

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lcn/nubia/camera/ax/f;->n:I

    .line 78
    iput-object v0, p0, Lcn/nubia/camera/ax/f;->o:Lcn/nubia/camera/ax/j;

    .line 81
    iput-object v0, p0, Lcn/nubia/camera/ax/f;->r:[B

    .line 83
    new-instance v1, Lcn/nubia/camera/ax/f$a;

    invoke-direct {v1, p0, v0}, Lcn/nubia/camera/ax/f$a;-><init>(Lcn/nubia/camera/ax/f;Lcn/nubia/camera/ax/f$1;)V

    iput-object v1, p0, Lcn/nubia/camera/ax/f;->s:Lcn/nubia/camera/ax/f$a;

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/ax/j;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ax/b;)V
    .locals 1

    .line 93
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcn/nubia/camera/ax/f;->a:Landroid/widget/ImageView;

    .line 66
    iput-object p1, p0, Lcn/nubia/camera/ax/f;->c:Lcom/android/common/ui/RotateImageView;

    .line 67
    iput-object p1, p0, Lcn/nubia/camera/ax/f;->i:Lcom/android/common/ui/RotateImageView;

    .line 68
    iput-object p1, p0, Lcn/nubia/camera/ax/f;->j:Landroid/widget/RelativeLayout;

    .line 69
    iput-object p1, p0, Lcn/nubia/camera/ax/f;->k:Lcom/android/common/ui/RotateImageView;

    .line 70
    iput-object p1, p0, Lcn/nubia/camera/ax/f;->l:Landroid/widget/TextView;

    .line 71
    iput-object p1, p0, Lcn/nubia/camera/ax/f;->m:Landroid/view/View;

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcn/nubia/camera/ax/f;->n:I

    .line 78
    iput-object p1, p0, Lcn/nubia/camera/ax/f;->o:Lcn/nubia/camera/ax/j;

    .line 81
    iput-object p1, p0, Lcn/nubia/camera/ax/f;->r:[B

    .line 83
    new-instance v0, Lcn/nubia/camera/ax/f$a;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/ax/f$a;-><init>(Lcn/nubia/camera/ax/f;Lcn/nubia/camera/ax/f$1;)V

    iput-object v0, p0, Lcn/nubia/camera/ax/f;->s:Lcn/nubia/camera/ax/f$a;

    .line 94
    iput-object p2, p0, Lcn/nubia/camera/ax/f;->o:Lcn/nubia/camera/ax/j;

    .line 95
    iput-object p3, p0, Lcn/nubia/camera/ax/f;->p:Lcn/nubia/camera/ad/a;

    .line 96
    iput-object p4, p0, Lcn/nubia/camera/ax/f;->q:Lcn/nubia/camera/ax/b;

    return-void
.end method

.method private a(F)F
    .locals 3

    .line 408
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->p:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 410
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 411
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 412
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return v2
.end method

.method static synthetic a(Lcn/nubia/camera/ax/f;F)F
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/f;->a(F)F

    move-result p0

    return p0
.end method

.method private a([B)Landroid/util/Size;
    .locals 3

    .line 279
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 280
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 281
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 283
    iget-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez p1, :cond_1

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    new-instance p1, Landroid/util/Size;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p1, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a(Lcn/nubia/camera/ax/j;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ax/b;)Lcn/nubia/camera/ax/f;
    .locals 2

    .line 403
    new-instance v0, Lcn/nubia/camera/ax/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcn/nubia/camera/ax/f;-><init>(ILcn/nubia/camera/ax/j;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ax/b;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/ax/f;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/f;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ax/f;)Z
    .locals 0

    .line 60
    invoke-direct {p0}, Lcn/nubia/camera/ax/f;->m()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/ax/f;[B)[B
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/camera/ax/f;->r:[B

    return-object p1
.end method

.method static synthetic b(Lcn/nubia/camera/ax/f;)F
    .locals 0

    .line 60
    iget p0, p0, Lcn/nubia/camera/ax/f;->v:F

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/ax/f;[B)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/f;->b([B)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    .line 211
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ui_change_thirdparty"

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 215
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->c:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    invoke-direct {p0, v2}, Lcn/nubia/camera/ax/f;->c(Z)V

    .line 220
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ax/f;->f(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ax/f;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->c:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 226
    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/f;->c(Z)V

    .line 227
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ax/f;->e(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ax/f;->c(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->z:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_3

    .line 231
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iget v0, p0, Lcn/nubia/camera/ax/f;->n:I

    if-nez v0, :cond_2

    .line 234
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f0306

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f0307

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/ax/f;->l:Landroid/widget/TextView;

    new-array p1, p1, [Ljava/lang/Object;

    .line 239
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0f01db

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    .line 238
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object p1

    .line 244
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 245
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 246
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 247
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 248
    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 249
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 252
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->o:Lcn/nubia/camera/ax/j;

    invoke-virtual {p1}, Lcn/nubia/camera/ax/j;->k()V

    return-void
.end method

.method private b([B)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ax/f;->d()V

    .line 293
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->o:Lcn/nubia/camera/ax/j;

    invoke-virtual {v0}, Lcn/nubia/camera/ax/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v0

    .line 296
    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/f;->a([B)Landroid/util/Size;

    move-result-object v2

    .line 297
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-le v3, v2, :cond_1

    .line 298
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {p1, v2, v0}, Lcn/nubia/camera/b;->a([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/ax/f;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p1, v2, v0}, Lcn/nubia/camera/b;->a([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/ax/f;->b:Landroid/graphics/Bitmap;

    .line 302
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->b:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    return-void

    .line 303
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/ax/f;->n()[B

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/av/a;->a([B)I

    move-result p1

    .line 304
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 307
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->c()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 308
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->c()I

    move-result v1

    :cond_3
    rsub-int v0, v1, 0x168

    add-int/2addr p1, v0

    .line 310
    rem-int/lit16 p1, p1, 0x168

    int-to-float p1, p1

    .line 311
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcn/nubia/camera/ax/f;->b:Landroid/graphics/Bitmap;

    .line 312
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 311
    invoke-virtual {v7, p1, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 313
    iget-object v2, p0, Lcn/nubia/camera/ax/f;->b:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 314
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object p1, p0, Lcn/nubia/camera/ax/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    .line 313
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/ax/f;->b:Landroid/graphics/Bitmap;

    .line 315
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 316
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->a:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/ax/f;)Lcn/nubia/camera/ax/f$a;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/ax/f;->s:Lcn/nubia/camera/ax/f$a;

    return-object p0
.end method

.method private c(Z)V
    .locals 3

    .line 256
    invoke-direct {p0}, Lcn/nubia/camera/ax/f;->m()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/af/a;->z:Lcn/nubia/camera/af/a;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->k:Lcom/android/common/ui/RotateImageView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_1

    .line 257
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->k:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/ax/f;)Lcn/nubia/camera/ax/j;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/ax/f;->o:Lcn/nubia/camera/ax/j;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcn/nubia/camera/ax/f;->b:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0901b7

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/ax/f;->a:Landroid/widget/ImageView;

    const v0, 0x7f090137

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/ax/f;->k:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f09031e

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/ax/f;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f090079

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/ax/f;->c:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f090100

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/ax/f;->i:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f09014b

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/ax/f;->l:Landroid/widget/TextView;

    const v0, 0x7f09031c

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ax/f;->m:Landroid/view/View;

    const v0, 0x7f09031f

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 157
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ax/f;->a(Landroid/view/View;)V

    .line 159
    invoke-direct {p0}, Lcn/nubia/camera/ax/f;->i()V

    .line 160
    invoke-direct {p0}, Lcn/nubia/camera/ax/f;->e()V

    .line 161
    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/f;->e(Landroid/view/View;)V

    .line 163
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/ax/f;->a(Ljava/lang/Object;)V

    .line 164
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->c:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/ax/f;->a(Ljava/lang/Object;)V

    .line 165
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->k:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/ax/f;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 167
    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/f;->c(Z)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/ax/f;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->c:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09016d

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/ax/f;)[B
    .locals 0

    .line 60
    invoke-direct {p0}, Lcn/nubia/camera/ax/f;->n()[B

    move-result-object p0

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->k:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcn/nubia/camera/ax/f$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ax/f$2;-><init>(Lcn/nubia/camera/ax/f;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ax/f;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v0}, Lcn/nubia/camera/ax/f;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private l()V
    .locals 3

    .line 264
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->z:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_1

    .line 265
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget v0, p0, Lcn/nubia/camera/ax/f;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/camera/ax/f;->n:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->q:Lcn/nubia/camera/ax/b;

    sget-object v1, Lcn/nubia/b/i;->d:Lcn/nubia/b/i;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ax/b;->a(Lcn/nubia/b/i;)V

    .line 269
    invoke-direct {p0}, Lcn/nubia/camera/ax/f;->j()V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->t:Lcn/nubia/camera/ax/d;

    iget-object v1, p0, Lcn/nubia/camera/ax/f;->r:[B

    iget-object v2, p0, Lcn/nubia/camera/ax/f;->o:Lcn/nubia/camera/ax/j;

    invoke-virtual {v2}, Lcn/nubia/camera/ax/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ax/d;->a([BLandroid/util/Size;)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->t:Lcn/nubia/camera/ax/d;

    iget-object v1, p0, Lcn/nubia/camera/ax/f;->r:[B

    iget-object v2, p0, Lcn/nubia/camera/ax/f;->o:Lcn/nubia/camera/ax/j;

    invoke-virtual {v2}, Lcn/nubia/camera/ax/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ax/d;->a([BLandroid/util/Size;)V

    :goto_0
    return-void
.end method

.method private m()Z
    .locals 3

    .line 417
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->p:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "autotest"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private n()[B
    .locals 1

    .line 482
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->r:[B

    return-object v0
.end method


# virtual methods
.method protected a(IZ)V
    .locals 0

    .line 501
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 2

    .line 339
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 340
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p4, p2

    if-ne v0, p4, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ax/f;->m:Landroid/view/View;

    .line 341
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v1, p5, p3

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eq v0, p3, :cond_1

    .line 343
    :cond_0
    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr p5, p3

    .line 344
    iput p5, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 345
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 346
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 347
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 p2, 0x17

    if-ne p1, p2, :cond_0

    .line 180
    iget-object p2, p0, Lcn/nubia/camera/ax/f;->t:Lcn/nubia/camera/ax/d;

    iget-object v0, p0, Lcn/nubia/camera/ax/f;->r:[B

    iget-object v1, p0, Lcn/nubia/camera/ax/f;->o:Lcn/nubia/camera/ax/j;

    invoke-virtual {v1}, Lcn/nubia/camera/ax/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcn/nubia/camera/ax/d;->a([BLandroid/util/Size;)V

    .line 182
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/ax/f;->u:Lcn/nubia/camera/ax/a;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/ax/a;->a(I)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 4

    .line 381
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ax/f;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 387
    invoke-direct {p0, v0}, Lcn/nubia/camera/ax/f;->a(F)F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ax/f;->v:F

    .line 389
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->o:Lcn/nubia/camera/ax/j;

    new-instance v1, Lcn/nubia/camera/g/h;

    .line 390
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    new-instance v2, Lcn/nubia/camera/ax/f$b;

    invoke-direct {v2, p0}, Lcn/nubia/camera/ax/f$b;-><init>(Lcn/nubia/camera/ax/f;)V

    const/4 v3, 0x0

    .line 389
    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/ax/j;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    .line 394
    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .line 353
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->c(Ljava/lang/String;)V

    .line 354
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->j:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 355
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    .line 361
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->d(Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lcn/nubia/camera/ax/f;->j:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-direct {p0}, Lcn/nubia/camera/ax/f;->j()V

    const/4 v0, 0x1

    return v0

    .line 325
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->i:Lcom/android/common/ui/RotateImageView;

    if-ne v0, p1, :cond_0

    .line 331
    invoke-direct {p0}, Lcn/nubia/camera/ax/f;->l()V

    goto :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->c:Lcom/android/common/ui/RotateImageView;

    if-ne v0, p1, :cond_1

    .line 333
    invoke-direct {p0}, Lcn/nubia/camera/ax/f;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 103
    iget-boolean p3, p0, Lcn/nubia/camera/ax/f;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c00c3

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 107
    new-instance p2, Lcn/nubia/camera/ax/d;

    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object p3

    invoke-direct {p2, p3}, Lcn/nubia/camera/ax/d;-><init>(Lcn/nubia/camera/ad/a;)V

    iput-object p2, p0, Lcn/nubia/camera/ax/f;->t:Lcn/nubia/camera/ax/d;

    .line 108
    new-instance p2, Lcn/nubia/camera/ax/a;

    invoke-virtual {p0}, Lcn/nubia/camera/ax/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/camera/ax/f;->o:Lcn/nubia/camera/ax/j;

    iget-object v1, p0, Lcn/nubia/camera/ax/f;->q:Lcn/nubia/camera/ax/b;

    invoke-direct {p2, p3, v0, v1}, Lcn/nubia/camera/ax/a;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ax/j;Lcn/nubia/camera/ax/b;)V

    iput-object p2, p0, Lcn/nubia/camera/ax/f;->u:Lcn/nubia/camera/ax/a;

    .line 109
    new-instance p3, Lcn/nubia/camera/ax/f$1;

    invoke-direct {p3, p0}, Lcn/nubia/camera/ax/f$1;-><init>(Lcn/nubia/camera/ax/f;)V

    invoke-virtual {p2, p3}, Lcn/nubia/camera/ax/a;->a(Lcn/nubia/camera/ax/a$a;)V

    .line 120
    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/f;->d(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 133
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 134
    iget-boolean v0, p0, Lcn/nubia/camera/ax/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ax/f;->s:Lcn/nubia/camera/ax/f$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ax/f$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 126
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 127
    iget-boolean v0, p0, Lcn/nubia/camera/ax/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcn/nubia/camera/ax/f;->n:I

    return-void
.end method
