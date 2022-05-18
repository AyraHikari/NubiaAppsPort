.class public Lcn/nubia/camera/bb/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/d;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/android/common/ui/RotateLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Lcom/android/common/ui/RotateTextImageView;

.field private g:Lcom/android/common/ui/RotateTextImageView;

.field private h:Lcom/android/common/ui/RotateTextImageView;

.field private i:Lcom/android/common/ui/RotateImageView;

.field private j:Landroid/app/Activity;

.field private k:Lcn/nubia/camera/ad/a;

.field private l:Lcn/nubia/camera/bb/ac;

.field private m:Lcn/nubia/camera/bb/w;

.field private n:Lcn/nubia/camera/q/f;

.field private o:Lcn/nubia/camera/three_a/ui/h;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/bb/ac;Lcn/nubia/camera/q/f;Lcn/nubia/camera/three_a/ui/h;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcn/nubia/camera/bb/s;->p:Landroid/widget/RelativeLayout;

    .line 264
    new-instance v0, Lcn/nubia/camera/bb/s$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/s$1;-><init>(Lcn/nubia/camera/bb/s;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/s;->q:Landroid/view/View$OnClickListener;

    .line 271
    new-instance v0, Lcn/nubia/camera/bb/s$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/s$2;-><init>(Lcn/nubia/camera/bb/s;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/s;->r:Landroid/view/View$OnClickListener;

    .line 278
    new-instance v0, Lcn/nubia/camera/bb/s$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/s$3;-><init>(Lcn/nubia/camera/bb/s;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/s;->s:Landroid/view/View$OnClickListener;

    .line 285
    new-instance v0, Lcn/nubia/camera/bb/s$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/s$4;-><init>(Lcn/nubia/camera/bb/s;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/s;->t:Landroid/view/View$OnClickListener;

    .line 58
    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090284

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 63
    iput-object p1, p0, Lcn/nubia/camera/bb/s;->j:Landroid/app/Activity;

    .line 64
    iput-object p3, p0, Lcn/nubia/camera/bb/s;->k:Lcn/nubia/camera/ad/a;

    .line 65
    iput-object p4, p0, Lcn/nubia/camera/bb/s;->l:Lcn/nubia/camera/bb/ac;

    .line 66
    iput-object p5, p0, Lcn/nubia/camera/bb/s;->n:Lcn/nubia/camera/q/f;

    .line 67
    iput-object p6, p0, Lcn/nubia/camera/bb/s;->o:Lcn/nubia/camera/three_a/ui/h;

    const p1, 0x7f09031d

    .line 69
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/bb/s;->a:Landroid/view/View;

    const p1, 0x7f090360

    .line 70
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/bb/s;->c:Landroid/view/View;

    const p1, 0x7f09028c

    .line 71
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateLayout;

    iput-object p1, p0, Lcn/nubia/camera/bb/s;->b:Lcom/android/common/ui/RotateLayout;

    const p1, 0x7f09028b

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/camera/bb/s;->d:Landroid/widget/ImageView;

    const p1, 0x7f090321

    .line 73
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/bb/s;->e:Landroid/view/View;

    const p1, 0x7f090100

    .line 74
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateTextImageView;

    iput-object p1, p0, Lcn/nubia/camera/bb/s;->f:Lcom/android/common/ui/RotateTextImageView;

    const p1, 0x7f090079

    .line 75
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateTextImageView;

    iput-object p1, p0, Lcn/nubia/camera/bb/s;->g:Lcom/android/common/ui/RotateTextImageView;

    const p1, 0x7f09007d

    .line 76
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/camera/bb/s;->i:Lcom/android/common/ui/RotateImageView;

    const p1, 0x7f090138

    .line 77
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateTextImageView;

    iput-object p1, p0, Lcn/nubia/camera/bb/s;->h:Lcom/android/common/ui/RotateTextImageView;

    const/4 p3, 0x0

    .line 78
    invoke-virtual {p1, p3}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    const p1, 0x7f090362

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/camera/bb/s;->p:Landroid/widget/RelativeLayout;

    .line 81
    iget-object p1, p0, Lcn/nubia/camera/bb/s;->f:Lcom/android/common/ui/RotateTextImageView;

    iget-object p2, p0, Lcn/nubia/camera/bb/s;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcn/nubia/camera/bb/s;->g:Lcom/android/common/ui/RotateTextImageView;

    iget-object p2, p0, Lcn/nubia/camera/bb/s;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lcn/nubia/camera/bb/s;->i:Lcom/android/common/ui/RotateImageView;

    iget-object p2, p0, Lcn/nubia/camera/bb/s;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcn/nubia/camera/bb/s;->h:Lcom/android/common/ui/RotateTextImageView;

    iget-object p2, p0, Lcn/nubia/camera/bb/s;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 186
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/s;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/camera/bb/s;->g()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/s;ZLcn/nubia/camera/bb/w;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/bb/s;->a(ZLcn/nubia/camera/bb/w;)V

    return-void
.end method

.method private a(ZLcn/nubia/camera/bb/w;)V
    .locals 1

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 211
    iget-object p2, p2, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 212
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 216
    :goto_0
    iget-object p2, p0, Lcn/nubia/camera/bb/s;->j:Landroid/app/Activity;

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 217
    iget-object p1, p0, Lcn/nubia/camera/bb/s;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/bb/s;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/camera/bb/s;->f()V

    return-void
.end method

.method private b(Lcn/nubia/camera/bb/w;)V
    .locals 3

    .line 158
    iget-object v0, p1, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->k:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    iget p1, p1, Lcn/nubia/camera/bb/w;->d:I

    invoke-static {v0, v1, p1}, Lcn/nubia/l/a/a;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 168
    invoke-static {p1, v0, v0}, Lcn/nubia/camera/b;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 169
    iget-object v1, p0, Lcn/nubia/camera/bb/s;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    iget-object p1, p0, Lcn/nubia/camera/bb/s;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/bb/s;->j:Landroid/app/Activity;

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object p1

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 175
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 176
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 177
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 178
    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 179
    iget-object p1, p0, Lcn/nubia/camera/bb/s;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/bb/s;)Lcn/nubia/camera/bb/w;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/camera/bb/s;->m:Lcn/nubia/camera/bb/w;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->k:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->g:Lcn/nubia/camera/d/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/e;)V

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->m:Lcn/nubia/camera/bb/w;

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/s;->b(Lcn/nubia/camera/bb/w;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->f:Lcom/android/common/ui/RotateTextImageView;

    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/s;->a(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->i:Lcom/android/common/ui/RotateImageView;

    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/s;->a(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->g:Lcom/android/common/ui/RotateTextImageView;

    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/s;->a(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->l:Lcn/nubia/camera/bb/ac;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->t()V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/bb/s;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/camera/bb/s;->h()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->k:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->g:Lcn/nubia/camera/d/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/e;)V

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->l:Lcn/nubia/camera/bb/ac;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->u()V

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->f:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->h:Lcom/android/common/ui/RotateTextImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->g:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcn/nubia/camera/bb/s;->m:Lcn/nubia/camera/bb/w;

    .line 223
    invoke-direct {p0}, Lcn/nubia/camera/bb/s;->e()V

    .line 224
    invoke-direct {p0}, Lcn/nubia/camera/bb/s;->i()V

    .line 225
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->h:Lcom/android/common/ui/RotateTextImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    return-void
.end method

.method private g()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->m:Lcn/nubia/camera/bb/w;

    const-string v1, "ThirdRecordingReviewControlUI"

    if-nez v0, :cond_0

    const-string v0, "Get no Video info so return"

    .line 230
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 233
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "SingleItemOnly"

    .line 234
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    iget-object v2, p0, Lcn/nubia/camera/bb/s;->m:Lcn/nubia/camera/bb/w;

    iget-object v2, v2, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcn/nubia/camera/bb/s;->m:Lcn/nubia/camera/bb/w;

    iget-object v3, v3, Lcn/nubia/camera/bb/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v2, p0, Lcn/nubia/camera/bb/s;->m:Lcn/nubia/camera/bb/w;

    iget-object v2, v2, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://mms_temp_file/scrapSpace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cn.nubia.video"

    .line 237
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/bb/s;->j:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t view video by cn.nubia.video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/bb/s;->m:Lcn/nubia/camera/bb/w;

    iget-object v3, v3, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcn/nubia/camera/bb/s;->j:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->n:Lcn/nubia/camera/q/f;

    const-string v1, "ui_change_recording"

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/f;->a(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->o:Lcn/nubia/camera/three_a/ui/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/h;->b(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->p:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public a(IZ)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->b:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateLayout;->a(IZ)V

    .line 295
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateImageView;->a(IZ)V

    .line 296
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->f:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateTextImageView;->a(IZ)V

    .line 297
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->g:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateTextImageView;->a(IZ)V

    .line 298
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->h:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateTextImageView;->a(IZ)V

    return-void
.end method

.method public a(Lcn/nubia/camera/an/a;IIII)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcn/nubia/camera/bb/s;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p4, p2

    if-ne p1, p4, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/bb/s;->c:Landroid/view/View;

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int v0, p5, p3

    if-eq p1, v0, :cond_1

    .line 113
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/bb/s;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr p5, p3

    .line 115
    iput p5, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 116
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 118
    iget-object p1, p0, Lcn/nubia/camera/bb/s;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/bb/w;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->k:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iput-object p1, p0, Lcn/nubia/camera/bb/s;->m:Lcn/nubia/camera/bb/w;

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Video info( "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/bb/s;->m:Lcn/nubia/camera/bb/w;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/w;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " )"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThirdRecordingReviewControlUI"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcn/nubia/camera/bb/s;->d()V

    .line 104
    iget-object p1, p0, Lcn/nubia/camera/bb/s;->o:Lcn/nubia/camera/three_a/ui/h;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 105
    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/h;->b(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->h:Lcom/android/common/ui/RotateTextImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/bb/s;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
