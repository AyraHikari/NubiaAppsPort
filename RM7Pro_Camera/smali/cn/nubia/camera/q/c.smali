.class public Lcn/nubia/camera/q/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/q/g;
.implements Lcn/nubia/camera/z/e;


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Lcom/android/common/ui/RotateImageView;

.field private g:Lcom/android/common/ui/RotateImageView;

.field private h:Lcom/android/common/ui/RotateImageView;

.field private i:Lcom/android/common/ui/RotateImageView;

.field private j:Z


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;ZZZLandroid/view/ViewGroup;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcn/nubia/camera/q/c;->b:Z

    .line 39
    iput-boolean v1, p0, Lcn/nubia/camera/q/c;->c:Z

    .line 40
    iput-boolean v1, p0, Lcn/nubia/camera/q/c;->d:Z

    .line 41
    iput-object v0, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    .line 42
    iput-object v0, p0, Lcn/nubia/camera/q/c;->f:Lcom/android/common/ui/RotateImageView;

    .line 43
    iput-object v0, p0, Lcn/nubia/camera/q/c;->g:Lcom/android/common/ui/RotateImageView;

    .line 44
    iput-object v0, p0, Lcn/nubia/camera/q/c;->h:Lcom/android/common/ui/RotateImageView;

    .line 45
    iput-object v0, p0, Lcn/nubia/camera/q/c;->i:Lcom/android/common/ui/RotateImageView;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcn/nubia/camera/q/c;->j:Z

    .line 49
    iput-object p1, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    .line 50
    iput-boolean p2, p0, Lcn/nubia/camera/q/c;->b:Z

    .line 51
    iput-boolean p3, p0, Lcn/nubia/camera/q/c;->c:Z

    .line 52
    iput-boolean p4, p0, Lcn/nubia/camera/q/c;->d:Z

    .line 53
    invoke-direct {p0, p5}, Lcn/nubia/camera/q/c;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 7

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0041

    const/4 v2, 0x0

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    .line 116
    invoke-direct {p0}, Lcn/nubia/camera/q/c;->e()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 117
    iget-object p1, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    iget-object p1, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    iget-object v0, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 124
    iget-object p1, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    const v0, 0x7f090087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    if-ne v0, v3, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 127
    iget-object v3, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 132
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->m()Ljava/lang/String;

    move-result-object p1

    .line 133
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_1
    iget-object v3, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v2

    .line 135
    :goto_2
    iget-object v4, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v2

    .line 137
    :cond_5
    iget-object v4, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    const v5, 0x7f09039e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/common/ui/RotateImageView;

    iput-object v4, p0, Lcn/nubia/camera/q/c;->f:Lcom/android/common/ui/RotateImageView;

    .line 138
    iget-object v4, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    const v5, 0x7f0902ed

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/common/ui/RotateImageView;

    iput-object v4, p0, Lcn/nubia/camera/q/c;->g:Lcom/android/common/ui/RotateImageView;

    .line 139
    iget-object v4, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    const v5, 0x7f090151

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/common/ui/RotateImageView;

    iput-object v4, p0, Lcn/nubia/camera/q/c;->h:Lcom/android/common/ui/RotateImageView;

    .line 140
    iget-object v4, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    const v5, 0x7f090312

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/common/ui/RotateImageView;

    iput-object v4, p0, Lcn/nubia/camera/q/c;->i:Lcom/android/common/ui/RotateImageView;

    .line 142
    iget-object v4, p0, Lcn/nubia/camera/q/c;->f:Lcom/android/common/ui/RotateImageView;

    iget-boolean v5, p0, Lcn/nubia/camera/q/c;->b:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    if-eqz p1, :cond_6

    move v5, v6

    goto :goto_3

    :cond_6
    move v5, v1

    :goto_3
    invoke-virtual {v4, v5}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 143
    iget-object v4, p0, Lcn/nubia/camera/q/c;->g:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_7

    move v5, v6

    goto :goto_4

    :cond_7
    move v5, v1

    :goto_4
    invoke-virtual {v4, v5}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 144
    iget-object v4, p0, Lcn/nubia/camera/q/c;->h:Lcom/android/common/ui/RotateImageView;

    iget-boolean v5, p0, Lcn/nubia/camera/q/c;->c:Z

    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    move v5, v6

    goto :goto_5

    :cond_8
    move v5, v1

    :goto_5
    invoke-virtual {v4, v5}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 145
    iget-object v4, p0, Lcn/nubia/camera/q/c;->i:Lcom/android/common/ui/RotateImageView;

    iget-boolean v5, p0, Lcn/nubia/camera/q/c;->d:Z

    if-eqz v5, :cond_9

    if-eqz v2, :cond_9

    move v1, v6

    :cond_9
    invoke-virtual {v4, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_a

    .line 148
    invoke-direct {p0, v4, v6, v6, v6}, Lcn/nubia/camera/q/c;->a(ZZZZ)V

    goto :goto_6

    .line 149
    :cond_a
    iget-object v1, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 150
    invoke-direct {p0, v6, v4, v6, v6}, Lcn/nubia/camera/q/c;->a(ZZZZ)V

    goto :goto_6

    .line 151
    :cond_b
    iget-object v1, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 152
    invoke-direct {p0, v6, v6, v4, v6}, Lcn/nubia/camera/q/c;->a(ZZZZ)V

    goto :goto_6

    .line 153
    :cond_c
    iget-object v1, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 154
    invoke-direct {p0, v6, v6, v6, v4}, Lcn/nubia/camera/q/c;->a(ZZZZ)V

    .line 157
    :cond_d
    :goto_6
    iget-object v1, p0, Lcn/nubia/camera/q/c;->f:Lcom/android/common/ui/RotateImageView;

    new-instance v4, Lcn/nubia/camera/q/c$1;

    invoke-direct {v4, p0, p1}, Lcn/nubia/camera/q/c$1;-><init>(Lcn/nubia/camera/q/c;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcn/nubia/camera/q/c;->g:Lcom/android/common/ui/RotateImageView;

    new-instance v4, Lcn/nubia/camera/q/c$2;

    invoke-direct {v4, p0, v0}, Lcn/nubia/camera/q/c$2;-><init>(Lcn/nubia/camera/q/c;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcn/nubia/camera/q/c;->h:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcn/nubia/camera/q/c$3;

    invoke-direct {v1, p0, v3, p1}, Lcn/nubia/camera/q/c$3;-><init>(Lcn/nubia/camera/q/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object p1, p0, Lcn/nubia/camera/q/c;->i:Lcom/android/common/ui/RotateImageView;

    new-instance v0, Lcn/nubia/camera/q/c$4;

    invoke-direct {v0, p0, v2}, Lcn/nubia/camera/q/c$4;-><init>(Lcn/nubia/camera/q/c;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/q/c;ZZZZ)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/q/c;->a(ZZZZ)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 268
    invoke-direct {p0}, Lcn/nubia/camera/q/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private a(ZZZZ)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcn/nubia/camera/q/c;->f:Lcom/android/common/ui/RotateImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f0802cb

    goto :goto_0

    :cond_0
    const p1, 0x7f0802ca

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 254
    iget-object p1, p0, Lcn/nubia/camera/q/c;->g:Lcom/android/common/ui/RotateImageView;

    if-eqz p2, :cond_1

    const p2, 0x7f0802c7

    goto :goto_1

    :cond_1
    const p2, 0x7f0802c6

    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 255
    iget-object p1, p0, Lcn/nubia/camera/q/c;->h:Lcom/android/common/ui/RotateImageView;

    if-eqz p3, :cond_2

    const p2, 0x7f0802c5

    goto :goto_2

    :cond_2
    const p2, 0x7f0802c4

    :goto_2
    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 256
    iget-object p1, p0, Lcn/nubia/camera/q/c;->i:Lcom/android/common/ui/RotateImageView;

    if-eqz p4, :cond_3

    const p2, 0x7f0802c9

    goto :goto_3

    :cond_3
    const p2, 0x7f0802c8

    :goto_3
    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/q/c;I)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/c;->b(I)Z

    move-result p0

    return p0
.end method

.method private b(I)Z
    .locals 3

    .line 243
    iget-object v0, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-static {v0}, Lcn/nubia/camera/bb/ad;->d(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 246
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-static {v2}, Lcn/nubia/camera/bb/ad;->b(Lcn/nubia/camera/ad/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xbb9

    invoke-static {p1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private e()Z
    .locals 4

    .line 276
    iget-boolean v0, p0, Lcn/nubia/camera/q/c;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 279
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->a()I

    move-result v0

    .line 280
    iget-object v2, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 281
    iget-boolean v2, p0, Lcn/nubia/camera/q/c;->b:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/ba/b;->a(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-boolean v2, p0, Lcn/nubia/camera/q/c;->c:Z

    if-eqz v2, :cond_2

    .line 282
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/ba/b;->a(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcn/nubia/camera/q/c;->d:Z

    if-eqz v2, :cond_4

    .line 283
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/ba/b;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    return v1

    .line 285
    :cond_5
    iget-boolean v2, p0, Lcn/nubia/camera/q/c;->b:Z

    if-eqz v2, :cond_6

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/ba/b;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v3

    :cond_6
    return v1
.end method


# virtual methods
.method public a()Lcom/android/common/ui/RotateImageView;
    .locals 1

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/q/c;->f:Lcom/android/common/ui/RotateImageView;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 260
    invoke-direct {p0}, Lcn/nubia/camera/q/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/c;->e:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    const/16 p1, 0x8

    .line 65
    invoke-virtual {p0, p1}, Lcn/nubia/camera/q/c;->a(I)V

    return-void
.end method

.method public b()Lcom/android/common/ui/RotateImageView;
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/q/c;->g:Lcom/android/common/ui/RotateImageView;

    return-object v0
.end method

.method public b(ZJJ)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcn/nubia/camera/q/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcn/nubia/camera/q/c;->a(I)V

    :cond_0
    return-void
.end method

.method public c()Lcom/android/common/ui/RotateImageView;
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/q/c;->h:Lcom/android/common/ui/RotateImageView;

    return-object v0
.end method

.method public d()Lcom/android/common/ui/RotateImageView;
    .locals 1

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/q/c;->i:Lcom/android/common/ui/RotateImageView;

    return-object v0
.end method

.method public g_()V
    .locals 1

    const/16 v0, 0x8

    .line 80
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/c;->a(I)V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/c;->a(Z)V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/c;->a(Z)V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/c;->a(I)V

    return-void
.end method
