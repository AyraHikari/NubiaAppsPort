.class public Lcn/nubia/camera/ai/a;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"


# instance fields
.field private a:Lcom/android/common/ui/RotateLayout;

.field private b:Landroid/widget/TextView;

.field private c:F

.field private i:Lcn/nubia/camera/ai/f;

.field private j:Z

.field private k:Lcn/nubia/camera/q/c;

.field private l:Lcn/nubia/camera/k/ab$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcn/nubia/camera/ai/a;->a:Lcom/android/common/ui/RotateLayout;

    .line 33
    iput-object v0, p0, Lcn/nubia/camera/ai/a;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcn/nubia/camera/ai/a;->c:F

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcn/nubia/camera/ai/a;->j:Z

    .line 120
    new-instance v0, Lcn/nubia/camera/ai/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ai/a$1;-><init>(Lcn/nubia/camera/ai/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ai/a;->l:Lcn/nubia/camera/k/ab$a;

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/ai/f;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcn/nubia/camera/ai/a;->a:Lcom/android/common/ui/RotateLayout;

    .line 33
    iput-object p1, p0, Lcn/nubia/camera/ai/a;->b:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcn/nubia/camera/ai/a;->c:F

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcn/nubia/camera/ai/a;->j:Z

    .line 120
    new-instance p1, Lcn/nubia/camera/ai/a$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/ai/a$1;-><init>(Lcn/nubia/camera/ai/a;)V

    iput-object p1, p0, Lcn/nubia/camera/ai/a;->l:Lcn/nubia/camera/k/ab$a;

    .line 45
    iput-object p2, p0, Lcn/nubia/camera/ai/a;->i:Lcn/nubia/camera/ai/f;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ai/a;)F
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/camera/ai/a;->c:F

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/ai/a;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcn/nubia/camera/ai/a;->c:F

    return p1
.end method

.method public static a(Lcn/nubia/camera/ai/f;)Lcn/nubia/camera/ai/a;
    .locals 2

    .line 49
    new-instance v0, Lcn/nubia/camera/ai/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcn/nubia/camera/ai/a;-><init>(ILcn/nubia/camera/ai/f;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/ai/a;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcn/nubia/camera/ai/a;->j:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/ai/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcn/nubia/camera/ai/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/ai/a;)Lcn/nubia/camera/ai/f;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/camera/ai/a;->i:Lcn/nubia/camera/ai/f;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090220

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcn/nubia/camera/ai/a;->a:Lcom/android/common/ui/RotateLayout;

    const v0, 0x7f090221

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/ai/a;->b:Landroid/widget/TextView;

    return-void
.end method

.method private i()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcn/nubia/camera/ai/a;->b:Landroid/widget/TextView;

    const v1, 0x7f0f030f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    iget-object v0, p0, Lcn/nubia/camera/ai/a;->a:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcn/nubia/camera/ai/a;->b:Landroid/widget/TextView;

    const v1, 0x7f0f0310

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcn/nubia/camera/ai/a;->a:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a(IZ)V
    .locals 5

    .line 97
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 99
    iget-object v0, p0, Lcn/nubia/camera/ai/a;->a:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/ai/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb4

    const/4 v2, 0x0

    const/16 v3, 0xc

    const/16 v4, 0xa

    if-eq p1, v1, :cond_1

    .line 102
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 103
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-nez p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcn/nubia/camera/ai/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ai/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v1, v3}, Lcn/nubia/camera/ba/f;->a(ILandroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/camera/ai/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x2a

    .line 107
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 111
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    invoke-virtual {p0}, Lcn/nubia/camera/ai/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ai/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v1, v3}, Lcn/nubia/camera/ba/f;->a(ILandroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/camera/ai/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 115
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/ai/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/ai/a;->a:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateLayout;->a(IZ)V

    :cond_2
    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    .line 197
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/an/a;IIII)V

    .line 198
    iget-object p1, p0, Lcn/nubia/camera/ai/a;->a:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p1}, Lcom/android/common/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 199
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr p5, p3

    .line 200
    iput p5, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 201
    iget-object p2, p0, Lcn/nubia/camera/ai/a;->a:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p2, p1}, Lcom/android/common/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(I)V
    .locals 6

    if-nez p1, :cond_0

    .line 169
    invoke-direct {p0}, Lcn/nubia/camera/ai/a;->i()V

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ai/a;->j()V

    .line 173
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ai/a;->k:Lcn/nubia/camera/q/c;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/q/c;->a(ZJJ)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcn/nubia/camera/ai/a;->j:Z

    return v0
.end method

.method public d()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcn/nubia/camera/ai/a;->j()V

    return-void
.end method

.method public e()V
    .locals 8

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/ai/a;->a:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 182
    iget-object v2, p0, Lcn/nubia/camera/ai/a;->k:Lcn/nubia/camera/q/c;

    const/4 v3, 0x1

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/q/c;->b(ZJJ)V

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 56
    iget-boolean p3, p0, Lcn/nubia/camera/ai/a;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c0077

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/camera/ai/a;->d(Landroid/view/View;)V

    .line 61
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, v0, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/ai/a;->k:Lcn/nubia/camera/q/c;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 68
    iget-boolean v0, p0, Lcn/nubia/camera/ai/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ai/a;->k:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 158
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 159
    iget-object v0, p0, Lcn/nubia/camera/ai/a;->i:Lcn/nubia/camera/ai/f;

    iget-object v1, p0, Lcn/nubia/camera/ai/a;->l:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ai/f;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/ai/a;->a:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 161
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .line 77
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 78
    iget-boolean v0, p0, Lcn/nubia/camera/ai/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ai/a;->i:Lcn/nubia/camera/ai/f;

    iget-object v1, p0, Lcn/nubia/camera/ai/a;->l:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ai/f;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 82
    iget-object v2, p0, Lcn/nubia/camera/ai/a;->k:Lcn/nubia/camera/q/c;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/q/c;->b(ZJJ)V

    return-void
.end method
