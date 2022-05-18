.class Lcn/nubia/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i/f$b;,
        Lcn/nubia/i/f$a;
    }
.end annotation


# instance fields
.field a:Landroid/animation/AnimatorSet;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn/nubia/i/e;

.field private e:Lcn/nubia/i/d;

.field private f:Lcn/nubia/i/h;

.field private g:Lcn/nubia/i/j;

.field private h:Lcn/nubia/i/g;

.field private i:Landroid/content/Context;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/GridView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Lcn/nubia/i/f$a;

.field private q:Lcn/nubia/i/m;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcn/nubia/i/i;

.field private w:Lcn/nubia/i/c$a;

.field private x:Lcn/nubia/i/c$a;

.field private y:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;Lcn/nubia/i/j;Lcn/nubia/i/e;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/i/f;->b:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/i/f;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcn/nubia/i/f;->r:Z

    .line 59
    iput-boolean v0, p0, Lcn/nubia/i/f;->s:Z

    .line 60
    iput-boolean v0, p0, Lcn/nubia/i/f;->t:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/i/f;->u:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcn/nubia/i/f;->v:Lcn/nubia/i/i;

    .line 461
    new-instance v0, Lcn/nubia/i/f$9;

    invoke-direct {v0, p0}, Lcn/nubia/i/f$9;-><init>(Lcn/nubia/i/f;)V

    iput-object v0, p0, Lcn/nubia/i/f;->w:Lcn/nubia/i/c$a;

    .line 468
    new-instance v0, Lcn/nubia/i/f$10;

    invoke-direct {v0, p0}, Lcn/nubia/i/f$10;-><init>(Lcn/nubia/i/f;)V

    iput-object v0, p0, Lcn/nubia/i/f;->x:Lcn/nubia/i/c$a;

    .line 573
    new-instance v0, Lcn/nubia/i/f$2;

    invoke-direct {v0, p0}, Lcn/nubia/i/f$2;-><init>(Lcn/nubia/i/f;)V

    iput-object v0, p0, Lcn/nubia/i/f;->y:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcn/nubia/i/f;->j:Landroid/view/View;

    .line 67
    iput-object p4, p0, Lcn/nubia/i/f;->d:Lcn/nubia/i/e;

    .line 68
    new-instance p1, Lcn/nubia/i/d;

    invoke-static {p2}, Lcn/nubia/i/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4, p3}, Lcn/nubia/i/d;-><init>(Ljava/lang/String;Lcn/nubia/i/j;)V

    iput-object p1, p0, Lcn/nubia/i/f;->e:Lcn/nubia/i/d;

    .line 69
    iput-object p3, p0, Lcn/nubia/i/f;->g:Lcn/nubia/i/j;

    .line 70
    iput-object p2, p0, Lcn/nubia/i/f;->i:Landroid/content/Context;

    .line 71
    iget-object p1, p0, Lcn/nubia/i/f;->j:Landroid/view/View;

    sget p2, Lcn/nubia/i/q$d;->w:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcn/nubia/i/f;->m:Landroid/widget/GridView;

    .line 72
    iget-object p1, p0, Lcn/nubia/i/f;->j:Landroid/view/View;

    sget p2, Lcn/nubia/i/q$d;->l:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/i/f;->k:Landroid/view/View;

    .line 73
    iget-object p1, p0, Lcn/nubia/i/f;->j:Landroid/view/View;

    sget p2, Lcn/nubia/i/q$d;->m:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/i/f;->l:Landroid/widget/TextView;

    .line 74
    iget-object p1, p0, Lcn/nubia/i/f;->j:Landroid/view/View;

    sget p2, Lcn/nubia/i/q$d;->n:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/i/f;->n:Landroid/view/View;

    .line 75
    iget-object p1, p0, Lcn/nubia/i/f;->j:Landroid/view/View;

    sget p2, Lcn/nubia/i/q$d;->v:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/i/f;->o:Landroid/widget/TextView;

    .line 77
    invoke-direct {p0}, Lcn/nubia/i/f;->e()V

    .line 78
    invoke-direct {p0}, Lcn/nubia/i/f;->f()V

    .line 80
    invoke-direct {p0}, Lcn/nubia/i/f;->k()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/i/f;)Lcn/nubia/i/d;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->e:Lcn/nubia/i/d;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/i/f;Lcn/nubia/i/i;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/i/f;->b(Lcn/nubia/i/i;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/i/f;Ljava/util/ArrayList;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/i/f;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Lcn/nubia/i/i;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcn/nubia/i/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    iget-object p1, p0, Lcn/nubia/i/f;->p:Lcn/nubia/i/f$a;

    invoke-virtual {p1}, Lcn/nubia/i/f$a;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/i/f;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcn/nubia/i/f;->r:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/i/f;)Lcn/nubia/i/f$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->p:Lcn/nubia/i/f$a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/i/f;Lcn/nubia/i/i;)Lcn/nubia/i/i;
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/i/f;->v:Lcn/nubia/i/i;

    return-object p1
.end method

.method static synthetic b(Lcn/nubia/i/f;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/i/f;->u:Ljava/util/ArrayList;

    return-object p1
.end method

.method private b(Lcn/nubia/i/i;)V
    .locals 2

    .line 191
    iput-object p1, p0, Lcn/nubia/i/f;->v:Lcn/nubia/i/i;

    .line 192
    iget-object p1, p0, Lcn/nubia/i/f;->q:Lcn/nubia/i/m;

    if-nez p1, :cond_0

    .line 193
    iget-object p1, p0, Lcn/nubia/i/f;->i:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 194
    sget v0, Lcn/nubia/i/q$e;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 195
    new-instance v0, Lcn/nubia/i/m$a;

    iget-object v1, p0, Lcn/nubia/i/f;->i:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcn/nubia/i/m$a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Lcn/nubia/i/f$5;

    invoke-direct {p1, p0}, Lcn/nubia/i/f$5;-><init>(Lcn/nubia/i/f;)V

    .line 196
    invoke-virtual {v0, p1}, Lcn/nubia/i/m$a;->a(Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/i/m$a;

    move-result-object p1

    new-instance v0, Lcn/nubia/i/f$4;

    invoke-direct {v0, p0}, Lcn/nubia/i/f$4;-><init>(Lcn/nubia/i/f;)V

    .line 213
    invoke-virtual {p1, v0}, Lcn/nubia/i/m$a;->b(Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/i/m$a;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Lcn/nubia/i/m$a;->a()Lcn/nubia/i/m;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/i/f;->q:Lcn/nubia/i/m;

    .line 221
    :cond_0
    iget-object p1, p0, Lcn/nubia/i/f;->q:Lcn/nubia/i/m;

    invoke-virtual {p1}, Lcn/nubia/i/m;->show()V

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "FilterUnLoadOp"

    const-string v1, "loadDataFromNetWork"

    .line 321
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 323
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "model"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_version_code"

    const-string v1, "100"

    .line 324
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v0, Lcn/nubia/i/h;

    iget-object v1, p0, Lcn/nubia/i/f;->i:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/i/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/nubia/i/f$7;

    invoke-direct {v5, p0}, Lcn/nubia/i/f$7;-><init>(Lcn/nubia/i/f;)V

    iget-object v7, p0, Lcn/nubia/i/f;->c:Ljava/util/ArrayList;

    iget-object v8, p0, Lcn/nubia/i/f;->g:Lcn/nubia/i/j;

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcn/nubia/i/h;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcn/nubia/i/a;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/i/j;)V

    iput-object v0, p0, Lcn/nubia/i/f;->f:Lcn/nubia/i/h;

    return-void
.end method

.method static synthetic b(Lcn/nubia/i/f;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcn/nubia/i/f;->t:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/i/f;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/i/f;Lcn/nubia/i/i;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/i/f;->a(Lcn/nubia/i/i;)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/i/f;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/i/f;->j()V

    return-void
.end method

.method static synthetic e(Lcn/nubia/i/f;)Lcn/nubia/i/c$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->x:Lcn/nubia/i/c$a;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 154
    new-instance v0, Lcn/nubia/i/f$a;

    invoke-direct {v0, p0}, Lcn/nubia/i/f$a;-><init>(Lcn/nubia/i/f;)V

    iput-object v0, p0, Lcn/nubia/i/f;->p:Lcn/nubia/i/f$a;

    .line 155
    iget-object v1, p0, Lcn/nubia/i/f;->m:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v0, p0, Lcn/nubia/i/f;->m:Landroid/widget/GridView;

    new-instance v1, Lcn/nubia/i/f$3;

    invoke-direct {v1, p0}, Lcn/nubia/i/f$3;-><init>(Lcn/nubia/i/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/i/f;)Lcn/nubia/i/m;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->q:Lcn/nubia/i/m;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcn/nubia/i/f;->g:Lcn/nubia/i/j;

    new-instance v1, Lcn/nubia/i/f$6;

    invoke-direct {v1, p0}, Lcn/nubia/i/f$6;-><init>(Lcn/nubia/i/f;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcn/nubia/i/j;->a(Ljava/lang/String;Lcn/nubia/i/a;)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/i/f;)Lcn/nubia/i/i;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->v:Lcn/nubia/i/i;

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 311
    sget-boolean v0, Lcn/nubia/i/p;->a:Z

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcn/nubia/i/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/i/i;

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcn/nubia/i/i;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterUnLoadOp"

    invoke-static {v1, v0}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private h()V
    .locals 3

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkNoItemState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/i/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterUnLoadOp"

    invoke-static {v1, v0}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcn/nubia/i/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcn/nubia/i/f;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/f;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    :goto_0
    iget-object v0, p0, Lcn/nubia/i/f;->o:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/i/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic h(Lcn/nubia/i/f;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/i/f;->i()V

    return-void
.end method

.method private i()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcn/nubia/i/f;->a:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcn/nubia/i/f;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 423
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/f;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method static synthetic i(Lcn/nubia/i/f;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcn/nubia/i/f;->r:Z

    return p0
.end method

.method static synthetic j(Lcn/nubia/i/f;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method private j()V
    .locals 7

    .line 428
    iget-object v0, p0, Lcn/nubia/i/f;->a:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    const/16 v0, 0xdc

    .line 430
    iget-object v1, p0, Lcn/nubia/i/f;->k:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcn/nubia/i/f;->k:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    fill-array-data v6, :array_1

    invoke-static {v1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 432
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcn/nubia/i/f;->a:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 433
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 435
    iget-object v0, p0, Lcn/nubia/i/f;->a:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/nubia/i/f$8;

    invoke-direct {v1, p0}, Lcn/nubia/i/f$8;-><init>(Lcn/nubia/i/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/f;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
    .end array-data

    :array_1
    .array-data 4
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic k(Lcn/nubia/i/f;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->k:Landroid/view/View;

    return-object p0
.end method

.method private k()V
    .locals 3

    .line 564
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 565
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcn/nubia/i/f;->i:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/i/f;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic l(Lcn/nubia/i/f;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->u:Ljava/util/ArrayList;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcn/nubia/i/f;->i:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/i/f;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic m(Lcn/nubia/i/f;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/i/f;)Lcn/nubia/i/c$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->w:Lcn/nubia/i/c$a;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/i/f;)Lcn/nubia/i/e;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->d:Lcn/nubia/i/e;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/i/f;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/i/f;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/i/f;->g()V

    return-void
.end method

.method static synthetic r(Lcn/nubia/i/f;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/i/f;->h()V

    return-void
.end method

.method static synthetic s(Lcn/nubia/i/f;)Lcn/nubia/i/h;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->f:Lcn/nubia/i/h;

    return-object p0
.end method

.method static synthetic t(Lcn/nubia/i/f;)Lcn/nubia/i/g;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/i/f;->h:Lcn/nubia/i/g;

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/i/f;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcn/nubia/i/f;->s:Z

    return p0
.end method

.method static synthetic v(Lcn/nubia/i/f;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcn/nubia/i/f;->t:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcn/nubia/i/g;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcn/nubia/i/f;->h:Lcn/nubia/i/g;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcn/nubia/i/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-object p1, p0, Lcn/nubia/i/f;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/i/f$1;

    invoke-direct {v0, p0}, Lcn/nubia/i/f$1;-><init>(Lcn/nubia/i/f;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 144
    iget-object p1, p0, Lcn/nubia/i/f;->p:Lcn/nubia/i/f$a;

    invoke-virtual {p1}, Lcn/nubia/i/f$a;->notifyDataSetChanged()V

    .line 145
    invoke-direct {p0}, Lcn/nubia/i/f;->h()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcn/nubia/i/f;->s:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcn/nubia/i/f;->q:Lcn/nubia/i/m;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcn/nubia/i/m;->dismiss()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcn/nubia/i/f;->e:Lcn/nubia/i/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcn/nubia/i/d;->a()V

    .line 101
    iput-object v1, p0, Lcn/nubia/i/f;->e:Lcn/nubia/i/d;

    .line 103
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/f;->q:Lcn/nubia/i/m;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lcn/nubia/i/m;->dismiss()V

    .line 105
    iput-object v1, p0, Lcn/nubia/i/f;->q:Lcn/nubia/i/m;

    .line 107
    :cond_1
    iget-object v0, p0, Lcn/nubia/i/f;->f:Lcn/nubia/i/h;

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Lcn/nubia/i/h;->a()V

    .line 109
    iput-object v1, p0, Lcn/nubia/i/f;->f:Lcn/nubia/i/h;

    :cond_2
    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcn/nubia/i/f;->t:Z

    .line 112
    invoke-direct {p0}, Lcn/nubia/i/f;->i()V

    .line 113
    iput-object v1, p0, Lcn/nubia/i/f;->a:Landroid/animation/AnimatorSet;

    .line 114
    invoke-direct {p0}, Lcn/nubia/i/f;->l()V

    return-void
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcn/nubia/i/f;->u:Ljava/util/ArrayList;

    return-object v0
.end method
