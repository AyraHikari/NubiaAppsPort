.class public Lcn/nubia/camera/prisma/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/camera/prisma/a;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field private c:Lcom/android/common/ui/RotateTextImageView;

.field private d:Lcom/android/common/ui/RotateTextImageView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/graphics/Bitmap;

.field private g:Lcn/nubia/camera/prisma/a;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcn/nubia/camera/prisma/i;->a:Landroid/widget/ImageView;

    .line 20
    iput-object v0, p0, Lcn/nubia/camera/prisma/i;->b:Landroid/view/View;

    .line 21
    iput-object v0, p0, Lcn/nubia/camera/prisma/i;->c:Lcom/android/common/ui/RotateTextImageView;

    .line 22
    iput-object v0, p0, Lcn/nubia/camera/prisma/i;->d:Lcom/android/common/ui/RotateTextImageView;

    .line 23
    iput-object v0, p0, Lcn/nubia/camera/prisma/i;->e:Landroid/widget/RelativeLayout;

    .line 24
    iput-object v0, p0, Lcn/nubia/camera/prisma/i;->f:Landroid/graphics/Bitmap;

    .line 25
    iput-object v0, p0, Lcn/nubia/camera/prisma/i;->g:Lcn/nubia/camera/prisma/a;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcn/nubia/camera/prisma/i;->h:I

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/i;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09026a

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/prisma/i;->a:Landroid/widget/ImageView;

    const v0, 0x7f090268

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/prisma/i;->b:Landroid/view/View;

    const v0, 0x7f090269

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/prisma/i;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f09026b

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateTextImageView;

    iput-object v0, p0, Lcn/nubia/camera/prisma/i;->c:Lcom/android/common/ui/RotateTextImageView;

    const v0, 0x7f090266

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateTextImageView;

    iput-object p1, p0, Lcn/nubia/camera/prisma/i;->d:Lcom/android/common/ui/RotateTextImageView;

    .line 39
    iget-object p1, p0, Lcn/nubia/camera/prisma/i;->c:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {p1, p0}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p1, p0, Lcn/nubia/camera/prisma/i;->d:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {p1, p0}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 113
    iput p1, p0, Lcn/nubia/camera/prisma/i;->h:I

    .line 114
    iget-object p1, p0, Lcn/nubia/camera/prisma/i;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 115
    iget v0, p0, Lcn/nubia/camera/prisma/i;->h:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->c:Lcom/android/common/ui/RotateTextImageView;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateTextImageView;->a(IZ)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->d:Lcom/android/common/ui/RotateTextImageView;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateTextImageView;->a(IZ)V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->g:Lcn/nubia/camera/prisma/a;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p1}, Lcn/nubia/camera/prisma/a;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/prisma/a;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/camera/prisma/i;->g:Lcn/nubia/camera/prisma/a;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lcn/nubia/camera/prisma/i;->f:Landroid/graphics/Bitmap;

    .line 50
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    iget-object p1, p0, Lcn/nubia/camera/prisma/i;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcn/nubia/camera/prisma/i;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcn/nubia/camera/prisma/i;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->g:Lcn/nubia/camera/prisma/a;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Lcn/nubia/camera/prisma/a;->d()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/prisma/i;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    iput-object v2, p0, Lcn/nubia/camera/prisma/i;->f:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090266

    if-eq p1, v0, :cond_1

    const v0, 0x7f09026b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/prisma/i;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/prisma/i;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/i;->d()V

    :goto_0
    return-void
.end method
