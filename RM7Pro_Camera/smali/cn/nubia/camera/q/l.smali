.class public Lcn/nubia/camera/q/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/three_a/ui/h;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/android/common/ui/RotateImageView;

.field private e:Lcom/android/common/ui/RotateImageView;

.field private f:Lcom/android/common/ui/RotateImageView;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/three_a/ui/h;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcn/nubia/camera/q/l;->a:Lcn/nubia/camera/ad/a;

    .line 23
    iput-object v0, p0, Lcn/nubia/camera/q/l;->b:Lcn/nubia/camera/three_a/ui/h;

    .line 24
    iput-object v0, p0, Lcn/nubia/camera/q/l;->c:Landroid/widget/RelativeLayout;

    .line 25
    iput-object v0, p0, Lcn/nubia/camera/q/l;->d:Lcom/android/common/ui/RotateImageView;

    .line 26
    iput-object v0, p0, Lcn/nubia/camera/q/l;->e:Lcom/android/common/ui/RotateImageView;

    .line 27
    iput-object v0, p0, Lcn/nubia/camera/q/l;->f:Lcom/android/common/ui/RotateImageView;

    .line 30
    iput-object p1, p0, Lcn/nubia/camera/q/l;->a:Lcn/nubia/camera/ad/a;

    .line 31
    iput-object p2, p0, Lcn/nubia/camera/q/l;->b:Lcn/nubia/camera/three_a/ui/h;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/q/l;)Lcn/nubia/camera/three_a/ui/h;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/camera/q/l;->b:Lcn/nubia/camera/three_a/ui/h;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 145
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    return-void
.end method

.method private a(II)V
    .locals 2

    .line 141
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/l;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/q/l;II)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/q/l;->a(II)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/q/l;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/camera/q/l;->d:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/q/l;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcn/nubia/camera/q/l;->a()V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/q/l;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/camera/q/l;->e:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/q/l;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/camera/q/l;->f:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/q/l;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lcn/nubia/camera/q/a;)V
    .locals 1

    const v0, 0x7f090322

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/q/l;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f090043

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/q/l;->d:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f090042

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/q/l;->e:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f090056

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/q/l;->f:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f0900ac

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/View;)V

    .line 41
    iget-object p1, p0, Lcn/nubia/camera/q/l;->d:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/q/a;->a(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcn/nubia/camera/q/l;->e:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/q/a;->a(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcn/nubia/camera/q/l;->f:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/q/a;->a(Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/q/l;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/b;->k()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcn/nubia/camera/q/l;->d:Lcom/android/common/ui/RotateImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 49
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/l;->d:Lcom/android/common/ui/RotateImageView;

    new-instance p2, Lcn/nubia/camera/q/l$1;

    invoke-direct {p2, p0}, Lcn/nubia/camera/q/l$1;-><init>(Lcn/nubia/camera/q/l;)V

    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcn/nubia/camera/q/l;->e:Lcom/android/common/ui/RotateImageView;

    new-instance p2, Lcn/nubia/camera/q/l$2;

    invoke-direct {p2, p0}, Lcn/nubia/camera/q/l$2;-><init>(Lcn/nubia/camera/q/l;)V

    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcn/nubia/camera/q/l;->f:Lcom/android/common/ui/RotateImageView;

    new-instance p2, Lcn/nubia/camera/q/l$3;

    invoke-direct {p2, p0}, Lcn/nubia/camera/q/l$3;-><init>(Lcn/nubia/camera/q/l;)V

    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lcn/nubia/camera/q/l;->b:Lcn/nubia/camera/three_a/ui/h;

    new-instance p2, Lcn/nubia/camera/q/l$4;

    invoke-direct {p2, p0}, Lcn/nubia/camera/q/l$4;-><init>(Lcn/nubia/camera/q/l;)V

    invoke-virtual {p1, p2}, Lcn/nubia/camera/three_a/ui/h;->a(Lcn/nubia/camera/three_a/ui/h$a;)V

    .line 100
    iget-object p1, p0, Lcn/nubia/camera/q/l;->b:Lcn/nubia/camera/three_a/ui/h;

    new-instance p2, Lcn/nubia/camera/q/l$5;

    invoke-direct {p2, p0}, Lcn/nubia/camera/q/l$5;-><init>(Lcn/nubia/camera/q/l;)V

    invoke-virtual {p1, p2}, Lcn/nubia/camera/three_a/ui/h;->a(Lcn/nubia/camera/three_a/ui/h$b;)V

    .line 109
    iget-object p1, p0, Lcn/nubia/camera/q/l;->b:Lcn/nubia/camera/three_a/ui/h;

    new-instance p2, Lcn/nubia/camera/q/l$6;

    invoke-direct {p2, p0}, Lcn/nubia/camera/q/l$6;-><init>(Lcn/nubia/camera/q/l;)V

    invoke-virtual {p1, p2}, Lcn/nubia/camera/three_a/ui/h;->a(Lcn/nubia/camera/three_a/ui/h$c;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/q/l;->d:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/l;->e:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/l;->f:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    :cond_2
    return-void
.end method
