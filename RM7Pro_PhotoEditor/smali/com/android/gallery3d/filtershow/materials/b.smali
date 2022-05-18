.class public Lcom/android/gallery3d/filtershow/materials/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/materials/b$e;,
        Lcom/android/gallery3d/filtershow/materials/b$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/PopupWindow;

.field private d:I

.field private e:I

.field private f:Lcom/android/gallery3d/filtershow/materials/d;

.field private g:Lcom/android/gallery3d/filtershow/materials/f;

.field private h:Ljava/lang/String;

.field private i:Landroid/graphics/Bitmap;

.field private j:Lcom/android/gallery3d/filtershow/materials/b$d;

.field private k:Lcom/android/gallery3d/filtershow/materials/c;

.field private l:J

.field private m:Landroid/os/Handler;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/ProgressBar;

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/gallery3d/filtershow/materials/d;Lcom/android/gallery3d/filtershow/materials/f;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->d:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->e:I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->f:Lcom/android/gallery3d/filtershow/materials/d;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->g:Lcom/android/gallery3d/filtershow/materials/f;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->i:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->j:Lcom/android/gallery3d/filtershow/materials/b$d;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->k:Lcom/android/gallery3d/filtershow/materials/c;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/gallery3d/filtershow/materials/b;->l:J

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->m:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->n:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->o:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->p:Landroid/widget/ProgressBar;

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->q:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->r:Z

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/b;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/materials/b;->f:Lcom/android/gallery3d/filtershow/materials/d;

    iput-object p4, p0, Lcom/android/gallery3d/filtershow/materials/b;->g:Lcom/android/gallery3d/filtershow/materials/f;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060084

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060086

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    iput p2, p0, Lcom/android/gallery3d/filtershow/materials/b;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060082

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060085

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/gallery3d/filtershow/materials/b;->e:I

    new-instance p1, Lcom/android/gallery3d/filtershow/materials/b$a;

    invoke-direct {p1, p0}, Lcom/android/gallery3d/filtershow/materials/b$a;-><init>(Lcom/android/gallery3d/filtershow/materials/b;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/b;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/b;->o:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/android/gallery3d/filtershow/materials/b;)Lcom/android/gallery3d/filtershow/materials/d;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/b;->f:Lcom/android/gallery3d/filtershow/materials/d;

    return-object p0
.end method

.method static synthetic d(Lcom/android/gallery3d/filtershow/materials/b;)Lcom/android/gallery3d/filtershow/materials/b$d;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/b;->j:Lcom/android/gallery3d/filtershow/materials/b$d;

    return-object p0
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/b;->p:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/materials/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/gallery3d/filtershow/materials/b;->q:Z

    return p0
.end method

.method static synthetic g(Lcom/android/gallery3d/filtershow/materials/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->q:Z

    return p1
.end method

.method static synthetic h(Lcom/android/gallery3d/filtershow/materials/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->r:Z

    return p1
.end method

.method static synthetic i(Lcom/android/gallery3d/filtershow/materials/b;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/materials/b;->s(F)V

    return-void
.end method

.method static synthetic j(Lcom/android/gallery3d/filtershow/materials/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/b;->r()V

    return-void
.end method

.method static synthetic k(Lcom/android/gallery3d/filtershow/materials/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->s:Z

    return p1
.end method

.method static synthetic l(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/b;->m:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic m(Lcom/android/gallery3d/filtershow/materials/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->l:J

    return-wide v0
.end method

.method static synthetic n(Lcom/android/gallery3d/filtershow/materials/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->l:J

    return-wide p1
.end method

.method private r()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->c:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->k:Lcom/android/gallery3d/filtershow/materials/c;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->f:Lcom/android/gallery3d/filtershow/materials/d;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/b;->j:Lcom/android/gallery3d/filtershow/materials/b$d;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/materials/d;->n(Lcom/android/gallery3d/filtershow/materials/d$c;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->j:Lcom/android/gallery3d/filtershow/materials/b$d;

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->m:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->m:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->n:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/b;->o:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/b;->p:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_3

    const v3, 0x7f0e0070

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->o:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->n:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->o:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->p:Landroid/widget/ProgressBar;

    :cond_3
    return-void
.end method

.method private s(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->a:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private u()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->p:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->p:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0800cd

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const v0, 0x7f0800cf

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->g:Lcom/android/gallery3d/filtershow/materials/f;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->k:Lcom/android/gallery3d/filtershow/materials/c;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->f:Lcom/android/gallery3d/filtershow/materials/d;

    const-class v0, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-static {v0}, Lc/c/a/d/c/f;->b(Ljava/lang/Class;)Lc/c/a/d/c/f;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/b;->k:Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/materials/c;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "="

    invoke-virtual {v0, v3, v4, v2}, Lc/c/a/d/c/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/materials/d;->j(Lc/c/a/d/c/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/materials/c;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->k:Lcom/android/gallery3d/filtershow/materials/c;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->i()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/utils/a;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/b;->u()V

    new-instance p1, Lcom/android/gallery3d/filtershow/materials/b$d;

    invoke-direct {p1, p0}, Lcom/android/gallery3d/filtershow/materials/b$d;-><init>(Lcom/android/gallery3d/filtershow/materials/b;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->j:Lcom/android/gallery3d/filtershow/materials/b$d;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->f:Lcom/android/gallery3d/filtershow/materials/d;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/materials/d;->m(Lcom/android/gallery3d/filtershow/materials/d$c;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->g:Lcom/android/gallery3d/filtershow/materials/f;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->k:Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/materials/f;->e(Lcom/android/gallery3d/filtershow/materials/c;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->k:Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->i()I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->g:Lcom/android/gallery3d/filtershow/materials/f;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->k:Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/materials/f;->h(Lcom/android/gallery3d/filtershow/materials/c;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->n:Landroid/widget/TextView;

    const v0, 0x7f0e0070

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->s:Z

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/b;->o()V

    :cond_4
    :goto_0
    return-void
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->r:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->s:Z

    return v0
.end method

.method public t(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/materials/b;->s:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->r:Z

    check-cast p1, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->getThumbnailPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->h:Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-static {p1, v0, v2}, Lcom/android/gallery3d/filtershow/materials/a;->c(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->i:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0b0072

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const v2, 0x7f0800ce

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0800cd

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v4, 0x7f0800cf

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/materials/b;->n:Landroid/widget/TextView;

    const v4, 0x7f0800d0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/materials/b;->o:Landroid/widget/LinearLayout;

    const v4, 0x7f0800d1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/materials/b;->p:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/materials/b;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/b;->n:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/b;->f:Lcom/android/gallery3d/filtershow/materials/d;

    const-class v3, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-static {v3}, Lc/c/a/d/c/f;->b(Ljava/lang/Class;)Lc/c/a/d/c/f;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/materials/b;->h:Ljava/lang/String;

    const-string v5, "cachePath"

    const-string v6, "="

    invoke-virtual {v3, v5, v6, v4}, Lc/c/a/d/c/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/materials/d;->j(Lc/c/a/d/c/f;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/materials/c;

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/materials/b;->k:Lcom/android/gallery3d/filtershow/materials/c;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/materials/c;->i()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/b;->n:Landroid/widget/TextView;

    const v3, 0x7f0e0061

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/b;->n:Landroid/widget/TextView;

    const v3, 0x7f0e0070

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/b;->k:Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/materials/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/b;->g:Lcom/android/gallery3d/filtershow/materials/f;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/b;->k:Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/materials/f;->j(Lcom/android/gallery3d/filtershow/materials/c;)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->q:Z

    new-instance v2, Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/android/gallery3d/filtershow/materials/b;->d:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/materials/b;->e:I

    invoke-direct {v2, p1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/materials/b;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->c:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/android/gallery3d/filtershow/materials/b$b;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/materials/b$b;-><init>(Lcom/android/gallery3d/filtershow/materials/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/materials/b$c;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/materials/b$c;-><init>(Lcom/android/gallery3d/filtershow/materials/b;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/b;->b:Landroid/view/View;

    const/16 v2, 0x11

    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/materials/b;->s(F)V

    return-void
.end method
