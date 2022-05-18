.class public Lcom/android/gallery3d/filtershow/materials/MaterialActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/materials/MaterialActivity$b;,
        Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;,
        Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ListView;

.field private e:Ljava/lang/String;

.field private f:[[Ljava/lang/String;

.field private g:[[Z

.field private h:[[I

.field private i:Ljava/lang/String;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/android/gallery3d/filtershow/materials/d;

.field private l:Lcom/android/gallery3d/filtershow/materials/f;

.field private m:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;

.field private n:Lcom/android/gallery3d/filtershow/materials/b;

.field private o:Landroid/content/Context;

.field private p:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$b;

.field private q:Landroid/view/View;

.field private r:Z

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->d:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->f:[[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->g:[[Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->h:[[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->j:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->k:Lcom/android/gallery3d/filtershow/materials/d;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->l:Lcom/android/gallery3d/filtershow/materials/f;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->m:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->n:Lcom/android/gallery3d/filtershow/materials/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->o:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->p:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->r:Z

    new-instance v0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;-><init>(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->s:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Lcom/android/gallery3d/filtershow/materials/f;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->l:Lcom/android/gallery3d/filtershow/materials/f;

    return-object p0
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->o:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)[[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->f:[[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)[[Z
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->g:[[Z

    return-object p0
.end method

.method static synthetic g(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)[[I
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->h:[[I

    return-object p0
.end method

.method static synthetic h(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->s:Landroid/os/Handler;

    return-object p0
.end method

.method private i()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "material-type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->i:Ljava/lang/String;

    const-string v1, "border"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0190

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->i:Ljava/lang/String;

    const-string v1, "bubble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e003e

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->i:Ljava/lang/String;

    const-string v1, "sticker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0199

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private j()V
    .locals 11

    const-class v0, Lcom/android/gallery3d/filtershow/materials/c;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->k:Lcom/android/gallery3d/filtershow/materials/d;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->i:Ljava/lang/String;

    const-string v3, "time"

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/gallery3d/filtershow/materials/d;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->k:Lcom/android/gallery3d/filtershow/materials/d;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/filtershow/materials/d;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/2addr v3, v4

    new-array v3, v3, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->f:[[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/2addr v3, v4

    new-array v3, v3, [[Z

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->g:[[Z

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/2addr v3, v4

    new-array v3, v3, [[I

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->h:[[I

    goto :goto_0

    :cond_0
    new-array v3, v4, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->f:[[Ljava/lang/String;

    new-array v3, v4, [[Z

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->g:[[Z

    new-array v3, v4, [[I

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->h:[[I

    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->j:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->f:[[Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    aput-object v5, v3, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->g:[[Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Z

    aput-object v5, v3, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->h:[[I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    aput-object v5, v3, v2

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->f:[[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/materials/c;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->g:[[Z

    aget-object v5, v5, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/materials/c;->d()Z

    move-result v6

    aput-boolean v6, v5, v3

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->h:[[I

    aget-object v5, v5, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/materials/c;->i()I

    move-result v6

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->f:[[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [[Z

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->g:[[Z

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [[I

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->h:[[I

    :cond_2
    move v4, v2

    :cond_3
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->k:Lcom/android/gallery3d/filtershow/materials/d;

    const-class v6, Lcom/android/gallery3d/filtershow/materials/c;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->i:Ljava/lang/String;

    const/4 v10, 0x1

    const-string v9, "time"

    move-object v8, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/gallery3d/filtershow/materials/d;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->f:[[Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    aput-object v5, v1, v4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->g:[[Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Z

    aput-object v5, v1, v4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->h:[[I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    aput-object v5, v1, v4

    move v1, v2

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->f:[[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/materials/c;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->g:[[Z

    aget-object v5, v5, v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/materials/c;->d()Z

    move-result v6

    aput-boolean v6, v5, v1

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->h:[[I

    aget-object v5, v5, v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/materials/c;->i()I

    move-result v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_6
    return-void
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->f:[[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->g:[[Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->h:[[I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private l(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->n:Lcom/android/gallery3d/filtershow/materials/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/filtershow/materials/b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->k:Lcom/android/gallery3d/filtershow/materials/d;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->l:Lcom/android/gallery3d/filtershow/materials/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/materials/b;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/gallery3d/filtershow/materials/d;Lcom/android/gallery3d/filtershow/materials/f;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->n:Lcom/android/gallery3d/filtershow/materials/b;

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->n:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/b;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->n:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/materials/b;->t(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->q:Landroid/view/View;

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized m()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->k()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->j()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->m:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;

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

.method public onBackPressed()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080031

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f080034

    if-eq v0, v1, :cond_1

    const v1, 0x7f08019c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->l(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->o:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0045

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->e:Ljava/lang/String;

    const p1, 0x7f0b0074

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f08020e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->a:Landroid/view/View;

    const p1, 0x7f080031

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->b:Landroid/widget/ImageView;

    const p1, 0x7f080034

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->c:Landroid/widget/TextView;

    const p1, 0x7f0801a2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->d:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->i()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/utils/a;->b(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->o:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;-><init>(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->m:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->d:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    new-instance p1, Lcom/android/gallery3d/filtershow/materials/d;

    invoke-direct {p1, p0}, Lcom/android/gallery3d/filtershow/materials/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->k:Lcom/android/gallery3d/filtershow/materials/d;

    new-instance p1, Lcom/android/gallery3d/filtershow/materials/f;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->i:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/gallery3d/filtershow/materials/f;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->l:Lcom/android/gallery3d/filtershow/materials/f;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->k:Lcom/android/gallery3d/filtershow/materials/d;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/materials/f;->i(Lcom/android/gallery3d/filtershow/materials/d;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->l:Lcom/android/gallery3d/filtershow/materials/f;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/f;->b()V

    new-instance p1, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$b;-><init>(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->p:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$b;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->k:Lcom/android/gallery3d/filtershow/materials/d;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/materials/d;->m(Lcom/android/gallery3d/filtershow/materials/d$c;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->j()V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->q:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->r:Z

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->k()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->s:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->s:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->s:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->l:Lcom/android/gallery3d/filtershow/materials/f;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->m:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->d:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->n:Lcom/android/gallery3d/filtershow/materials/b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->k:Lcom/android/gallery3d/filtershow/materials/d;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->p:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$b;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/materials/d;->n(Lcom/android/gallery3d/filtershow/materials/d$c;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->k:Lcom/android/gallery3d/filtershow/materials/d;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->n:Lcom/android/gallery3d/filtershow/materials/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->r:Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->n:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/b;->o()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->n:Lcom/android/gallery3d/filtershow/materials/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->n:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/materials/b;->t(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->r:Z

    return-void
.end method
