.class public Lcn/nubia/camera/aimoon/b;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/aimoon/h;

.field private b:Lcn/nubia/camera/aimoon/a;

.field private c:Lcn/nubia/camera/aimoon/TeleSearchView;

.field private i:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

.field private j:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

.field private k:Lcn/nubia/camera/aimoon/k;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/android/common/ui/RotateImageView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Lcn/nubia/camera/zoom/arc/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcn/nubia/camera/aimoon/b;->q:Lcn/nubia/camera/zoom/arc/a$a;

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/aimoon/h;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 369
    iput-object p1, p0, Lcn/nubia/camera/aimoon/b;->q:Lcn/nubia/camera/zoom/arc/a$a;

    .line 45
    iput-object p2, p0, Lcn/nubia/camera/aimoon/b;->a:Lcn/nubia/camera/aimoon/h;

    return-void
.end method

.method public static a(Lcn/nubia/camera/aimoon/h;)Lcn/nubia/camera/aimoon/b;
    .locals 2

    .line 49
    new-instance v0, Lcn/nubia/camera/aimoon/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcn/nubia/camera/aimoon/b;-><init>(ILcn/nubia/camera/aimoon/h;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/aimoon/b;)Lcom/android/preference/c;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/h;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/aimoon/b;->a:Lcn/nubia/camera/aimoon/h;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/zoom/arc/a;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/b;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 371
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/b;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Lcn/nubia/camera/aimoon/b$8;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aimoon/b$8;-><init>(Lcn/nubia/camera/aimoon/b;)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/b;->q:Lcn/nubia/camera/zoom/arc/a$a;

    .line 387
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/b;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/b;->q:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 355
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->o:Landroid/widget/TextView;

    const v0, 0x7f0f0259

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 356
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->p:Landroid/widget/TextView;

    const v0, 0x7f0f03c4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 358
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->o:Landroid/widget/TextView;

    const v0, 0x7f0f0258

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 359
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->p:Landroid/widget/TextView;

    const v0, 0x7f0f03c1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/aimoon/b;->i:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 392
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/b;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/b;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/b;->q:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->b(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcn/nubia/camera/aimoon/b;->e(Landroid/view/View;)V

    .line 122
    invoke-direct {p0, p1}, Lcn/nubia/camera/aimoon/b;->f(Landroid/view/View;)V

    .line 123
    invoke-direct {p0, p1}, Lcn/nubia/camera/aimoon/b;->h(Landroid/view/View;)V

    .line 124
    invoke-direct {p0, p1}, Lcn/nubia/camera/aimoon/b;->i(Landroid/view/View;)V

    .line 125
    invoke-direct {p0, p1}, Lcn/nubia/camera/aimoon/b;->g(Landroid/view/View;)V

    .line 127
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/aimoon/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/TeleSearchView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/aimoon/b;->c:Lcn/nubia/camera/aimoon/TeleSearchView;

    return-object p0
.end method

.method private e()Lcn/nubia/camera/zoom/arc/a;
    .locals 1

    .line 398
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f090311

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/aimoon/TeleSearchView;

    iput-object p1, p0, Lcn/nubia/camera/aimoon/b;->c:Lcn/nubia/camera/aimoon/TeleSearchView;

    .line 133
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->c:Lcn/nubia/camera/aimoon/TeleSearchView;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/TeleSearchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 135
    sget v1, Lcn/nubia/camera/aimoon/l;->b:F

    sget v2, Lcn/nubia/camera/aimoon/l;->a:F

    invoke-static {v1, v2}, Lcn/nubia/camera/aimoon/l;->a(FF)F

    move-result v1

    .line 136
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcn/nubia/camera/aimoon/l;->b:F

    sget v4, Lcn/nubia/camera/aimoon/l;->a:F

    invoke-static {v2, v3, v4, v1}, Lcn/nubia/camera/aimoon/l;->a(Landroid/content/Context;FFF)Landroid/graphics/Rect;

    move-result-object v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locRect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AIMoonFragment"

    invoke-static {v3, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 139
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 140
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 141
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 142
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->c:Lcn/nubia/camera/aimoon/TeleSearchView;

    invoke-virtual {p1}, Lcn/nubia/camera/aimoon/TeleSearchView;->requestLayout()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/aimoon/b;->j:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    return-object p0
.end method

.method private f(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f090044

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    iput-object v0, p0, Lcn/nubia/camera/aimoon/b;->i:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    .line 148
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->a(Lcom/android/preference/c;I)V

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->i:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    new-instance v1, Lcn/nubia/camera/aimoon/b$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aimoon/b$1;-><init>(Lcn/nubia/camera/aimoon/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->setValueChange(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$a;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->i:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/widget/RelativeLayout;Lcn/nubia/camera/a/a;)V

    const v0, 0x7f0902fc

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    iput-object p1, p0, Lcn/nubia/camera/aimoon/b;->j:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    .line 159
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->a(Lcom/android/preference/c;I)V

    .line 160
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->j:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/aimoon/b$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aimoon/b$2;-><init>(Lcn/nubia/camera/aimoon/b;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->setValueChange(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$a;)V

    .line 166
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->j:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/widget/RelativeLayout;Lcn/nubia/camera/a/a;)V

    .line 167
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->j:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/aimoon/b$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aimoon/b$3;-><init>(Lcn/nubia/camera/aimoon/b;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->setDrawerListener(Lcom/android/common/ui/f$a;)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/aimoon/b;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/aimoon/b;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method private g(Landroid/view/View;)V
    .locals 2

    .line 186
    new-instance v0, Lcn/nubia/camera/aimoon/k;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p1}, Lcn/nubia/camera/aimoon/k;-><init>(Lcn/nubia/camera/ad/a;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/b;->k:Lcn/nubia/camera/aimoon/k;

    .line 187
    new-instance p1, Lcn/nubia/camera/aimoon/b$4;

    invoke-direct {p1, p0}, Lcn/nubia/camera/aimoon/b$4;-><init>(Lcn/nubia/camera/aimoon/b;)V

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aimoon/k;->a(Lcn/nubia/camera/aimoon/k$a;)V

    .line 219
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->k:Lcn/nubia/camera/aimoon/k;

    new-instance v0, Lcn/nubia/camera/aimoon/b$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aimoon/b$5;-><init>(Lcn/nubia/camera/aimoon/b;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aimoon/k;->a(Lcn/nubia/camera/aimoon/k$b;)V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/aimoon/b;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/aimoon/b;->m:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method private h(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090208

    .line 258
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/aimoon/b;->l:Landroid/widget/TextView;

    .line 259
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    .line 260
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f0258

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0259

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/aimoon/b;)Landroid/widget/LinearLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/aimoon/b;->n:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 402
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/camera/aimoon/b;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0901b9

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/aimoon/b;->m:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f090206

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/camera/aimoon/b;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f090207

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/aimoon/b;->o:Landroid/widget/TextView;

    const v0, 0x7f090205

    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/aimoon/b;->p:Landroid/widget/TextView;

    .line 271
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->m:Lcom/android/common/ui/RotateImageView;

    new-instance v0, Lcn/nubia/camera/aimoon/b$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aimoon/b$6;-><init>(Lcn/nubia/camera/aimoon/b;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->n:Landroid/widget/LinearLayout;

    new-instance v0, Lcn/nubia/camera/aimoon/b$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aimoon/b$7;-><init>(Lcn/nubia/camera/aimoon/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    .line 285
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->u()Lcom/android/preference/c;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/aimoon/b;->c(I)V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/aimoon/b;->b:Lcn/nubia/camera/aimoon/a;

    return-object p0
.end method

.method private j()Z
    .locals 3

    .line 406
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/camera/aimoon/b;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcn/nubia/camera/aimoon/b;)Lcom/android/preference/c;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ai_moon_tip"

    goto :goto_0

    :cond_0
    const-string v0, "super_moon_tip"

    :goto_0
    return-object v0
.end method

.method static synthetic m(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(F)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->b:Lcn/nubia/camera/aimoon/a;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p1}, Lcn/nubia/camera/aimoon/a;->a(F)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 290
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/b;->i()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->k:Lcn/nubia/camera/aimoon/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 297
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->i:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->i:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->f()Z

    move-result p1

    return p1

    .line 301
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->j:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    iget-object p1, p0, Lcn/nubia/camera/aimoon/b;->j:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->f()Z

    move-result p1

    return p1

    .line 304
    :cond_3
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b(I)V
    .locals 4

    .line 317
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->k:Lcn/nubia/camera/aimoon/k;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->i:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->j:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->c:Lcn/nubia/camera/aimoon/TeleSearchView;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/aimoon/TeleSearchView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->b:Lcn/nubia/camera/aimoon/a;

    if-eqz v0, :cond_5

    .line 325
    invoke-virtual {v0, v1}, Lcn/nubia/camera/aimoon/a;->a(Z)V

    .line 326
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->b:Lcn/nubia/camera/aimoon/a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aimoon/a;->a(I)V

    goto/16 :goto_3

    .line 329
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 331
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/b;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 335
    iget-object v3, p0, Lcn/nubia/camera/aimoon/b;->i:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-virtual {v3, v2}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->setVisibility(I)V

    .line 336
    iget-object v3, p0, Lcn/nubia/camera/aimoon/b;->j:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-virtual {v3, v1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Lcn/nubia/camera/aimoon/b;->c:Lcn/nubia/camera/aimoon/TeleSearchView;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/aimoon/TeleSearchView;->setVisibility(I)V

    goto :goto_0

    .line 339
    :cond_2
    iget-object v3, p0, Lcn/nubia/camera/aimoon/b;->i:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-virtual {v3, v1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->setVisibility(I)V

    .line 340
    iget-object v3, p0, Lcn/nubia/camera/aimoon/b;->j:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-virtual {v3, v2}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->setVisibility(I)V

    .line 341
    iget-object v2, p0, Lcn/nubia/camera/aimoon/b;->c:Lcn/nubia/camera/aimoon/TeleSearchView;

    invoke-virtual {v2, v1}, Lcn/nubia/camera/aimoon/TeleSearchView;->setVisibility(I)V

    .line 343
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/aimoon/b;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->u()Lcom/android/preference/c;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result v2

    if-nez v2, :cond_3

    const v2, 0x7f0f0258

    goto :goto_1

    :cond_3
    const v2, 0x7f0f0259

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v1, p0, Lcn/nubia/camera/aimoon/b;->b:Lcn/nubia/camera/aimoon/a;

    if-eqz v1, :cond_5

    .line 345
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/q/i;

    invoke-virtual {v2}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/q/i;

    invoke-virtual {v2}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v2

    goto :goto_2

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v2}, Lcn/nubia/camera/aimoon/a;->a(F)V

    .line 346
    iget-object v1, p0, Lcn/nubia/camera/aimoon/b;->b:Lcn/nubia/camera/aimoon/a;

    invoke-virtual {v1, p1}, Lcn/nubia/camera/aimoon/a;->a(I)V

    .line 347
    iget-object v1, p0, Lcn/nubia/camera/aimoon/b;->b:Lcn/nubia/camera/aimoon/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/aimoon/a;->a(Z)V

    .line 350
    :cond_5
    :goto_3
    invoke-direct {p0, p1}, Lcn/nubia/camera/aimoon/b;->c(I)V

    return-void
.end method

.method public b_(I)V
    .locals 1

    .line 309
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b_(I)V

    .line 310
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->k:Lcn/nubia/camera/aimoon/k;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0, p1}, Lcn/nubia/camera/aimoon/k;->a(I)V

    :cond_0
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
    iget-boolean p3, p0, Lcn/nubia/camera/aimoon/b;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c006c

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/camera/aimoon/b;->d(Landroid/view/View;)V

    .line 61
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/b;->c()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 114
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/b;->d()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 102
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->b:Lcn/nubia/camera/aimoon/a;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/a;->a()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcn/nubia/camera/aimoon/b;->b:Lcn/nubia/camera/aimoon/a;

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->k:Lcn/nubia/camera/aimoon/k;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/k;->b()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 83
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 84
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance v0, Lcn/nubia/camera/aimoon/a;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/aimoon/d;

    invoke-virtual {v2}, Lcn/nubia/camera/aimoon/d;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x5a0

    const/16 v5, 0x438

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/aimoon/a;-><init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/b;->b:Lcn/nubia/camera/aimoon/a;

    .line 88
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/b;->b:Lcn/nubia/camera/aimoon/a;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b;->k:Lcn/nubia/camera/aimoon/k;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/k;->a()V

    .line 91
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/b;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/aimoon/b;->b(I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onStart()V

    .line 68
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/b;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onStop()V

    .line 76
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/b;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
