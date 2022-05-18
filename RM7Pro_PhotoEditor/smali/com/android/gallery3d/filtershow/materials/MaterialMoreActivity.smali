.class public Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$b;,
        Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/GridView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/android/gallery3d/filtershow/materials/d;

.field private k:Lcom/android/gallery3d/filtershow/materials/b;

.field private l:Landroid/content/Context;

.field private m:Lcom/android/gallery3d/filtershow/materials/f;

.field private n:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;

.field private o:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$b;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/view/View;

.field private u:Z

.field private v:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->d:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->i:Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->j:Lcom/android/gallery3d/filtershow/materials/d;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k:Lcom/android/gallery3d/filtershow/materials/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->l:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->m:Lcom/android/gallery3d/filtershow/materials/f;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->n:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->o:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$b;

    iput v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->p:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->q:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->r:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->s:I

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->u:Z

    new-instance v0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$a;-><init>(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->v:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Lcom/android/gallery3d/filtershow/materials/f;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->m:Lcom/android/gallery3d/filtershow/materials/f;

    return-object p0
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->p(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->v:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->p:I

    return p0
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->q:I

    return p0
.end method

.method static synthetic g(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic h(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic i(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic j(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->r:I

    return p0
.end method

.method static synthetic k(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->s:I

    return p0
.end method

.method static synthetic l(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->g:Ljava/lang/String;

    return-object p0
.end method

.method private m()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "material-type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->g:Ljava/lang/String;

    const-string v1, "category-type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->h:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->i:Z

    return-void
.end method

.method private n()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->f:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->j:Lcom/android/gallery3d/filtershow/materials/d;

    const-class v1, Lcom/android/gallery3d/filtershow/materials/c;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->g:Ljava/lang/String;

    const-string v3, "time"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/materials/d;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->j:Lcom/android/gallery3d/filtershow/materials/d;

    const-class v2, Lcom/android/gallery3d/filtershow/materials/c;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->h:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v5, "time"

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/filtershow/materials/d;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->d:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/materials/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->e:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/materials/c;->d()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->f:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/materials/c;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->d:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private p(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k:Lcom/android/gallery3d/filtershow/materials/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/filtershow/materials/b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->c:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->j:Lcom/android/gallery3d/filtershow/materials/d;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->m:Lcom/android/gallery3d/filtershow/materials/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/materials/b;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/gallery3d/filtershow/materials/d;Lcom/android/gallery3d/filtershow/materials/f;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k:Lcom/android/gallery3d/filtershow/materials/b;

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/b;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/materials/b;->t(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->t:Landroid/view/View;

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080031

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v0, :cond_0

    const v0, 0x7f080034

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b005c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f080031

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->a:Landroid/widget/ImageView;

    const p1, 0x7f080034

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->b:Landroid/widget/TextView;

    const p1, 0x7f0801d5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->c:Landroid/widget/GridView;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->m()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060081

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->p:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060080

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->q:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060088

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->s:I

    iget v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->p:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->r:I

    iput-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->l:Landroid/content/Context;

    new-instance p1, Lcom/android/gallery3d/filtershow/materials/d;

    invoke-direct {p1, p0}, Lcom/android/gallery3d/filtershow/materials/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->j:Lcom/android/gallery3d/filtershow/materials/d;

    new-instance p1, Lcom/android/gallery3d/filtershow/materials/f;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->g:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/gallery3d/filtershow/materials/f;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->m:Lcom/android/gallery3d/filtershow/materials/f;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->j:Lcom/android/gallery3d/filtershow/materials/d;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/materials/f;->i(Lcom/android/gallery3d/filtershow/materials/d;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->n()V

    new-instance p1, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$b;-><init>(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$a;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->o:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$b;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->j:Lcom/android/gallery3d/filtershow/materials/d;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/materials/d;->m(Lcom/android/gallery3d/filtershow/materials/d$c;)V

    new-instance p1, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;

    invoke-direct {p1, p0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;-><init>(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->n:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->c:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->j:Lcom/android/gallery3d/filtershow/materials/d;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->o:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$b;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/materials/d;->n(Lcom/android/gallery3d/filtershow/materials/d$c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->t:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->u:Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k:Lcom/android/gallery3d/filtershow/materials/b;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k:Lcom/android/gallery3d/filtershow/materials/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->u:Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/b;->o()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k:Lcom/android/gallery3d/filtershow/materials/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->u:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/materials/b;->t(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->u:Z

    return-void
.end method

.method public declared-synchronized q()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->o()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->n()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->n:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
