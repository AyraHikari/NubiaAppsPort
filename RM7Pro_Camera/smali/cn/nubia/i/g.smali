.class Lcn/nubia/i/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i/g$b;,
        Lcn/nubia/i/g$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Landroid/widget/TextView;

.field private c:Lcn/nubia/i/g$a;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/content/Context;

.field private j:Landroid/view/View;

.field private k:Lcn/nubia/i/e;

.field private l:Lcn/nubia/i/j;

.field private m:Lcn/nubia/i/f;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/i/i;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcn/nubia/i/m;

.field private q:Lcn/nubia/i/c$a;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;Lcn/nubia/i/j;Lcn/nubia/i/e;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/i/g;->n:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/i/g;->o:Ljava/util/ArrayList;

    .line 309
    new-instance v0, Lcn/nubia/i/g$8;

    invoke-direct {v0, p0}, Lcn/nubia/i/g$8;-><init>(Lcn/nubia/i/g;)V

    iput-object v0, p0, Lcn/nubia/i/g;->q:Lcn/nubia/i/c$a;

    .line 44
    iput-object p1, p0, Lcn/nubia/i/g;->j:Landroid/view/View;

    .line 45
    iput-object p2, p0, Lcn/nubia/i/g;->i:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcn/nubia/i/g;->l:Lcn/nubia/i/j;

    .line 47
    iput-object p4, p0, Lcn/nubia/i/g;->k:Lcn/nubia/i/e;

    .line 49
    sget p2, Lcn/nubia/i/q$d;->g:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcn/nubia/i/g;->a:Landroid/widget/GridView;

    .line 50
    sget p2, Lcn/nubia/i/q$d;->i:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/i/g;->b:Landroid/widget/TextView;

    .line 51
    sget p2, Lcn/nubia/i/q$d;->c:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/i/g;->d:Landroid/widget/TextView;

    .line 52
    sget p2, Lcn/nubia/i/q$d;->b:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/i/g;->e:Landroid/view/View;

    .line 53
    sget p2, Lcn/nubia/i/q$d;->a:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/i/g;->f:Landroid/widget/TextView;

    .line 54
    sget p2, Lcn/nubia/i/q$d;->d:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/i/g;->g:Landroid/widget/TextView;

    .line 55
    sget p2, Lcn/nubia/i/q$d;->k:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/i/g;->h:Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lcn/nubia/i/g;->e()V

    .line 58
    invoke-direct {p0}, Lcn/nubia/i/g;->f()V

    .line 59
    invoke-direct {p0}, Lcn/nubia/i/g;->h()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/i/g;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/i/g;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/i/g;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/nubia/i/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/i/g;Ljava/util/ArrayList;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/nubia/i/g;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .line 283
    iget-object v0, p0, Lcn/nubia/i/g;->p:Lcn/nubia/i/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcn/nubia/i/g;->i:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 285
    sget v3, Lcn/nubia/i/q$e;->b:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 286
    sget v3, Lcn/nubia/i/q$d;->p:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/i/g;->i:Landroid/content/Context;

    sget v5, Lcn/nubia/i/q$f;->f:I

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    new-instance v3, Lcn/nubia/i/m$a;

    iget-object v4, p0, Lcn/nubia/i/g;->i:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcn/nubia/i/m$a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcn/nubia/i/g;->i:Landroid/content/Context;

    sget v4, Lcn/nubia/i/q$f;->e:I

    .line 288
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/nubia/i/m$a;->a(Ljava/lang/String;)Lcn/nubia/i/m$a;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/i/g;->i:Landroid/content/Context;

    sget v4, Lcn/nubia/i/q$f;->d:I

    .line 289
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/i/m$a;->b(Ljava/lang/String;)Lcn/nubia/i/m$a;

    move-result-object v0

    new-instance v3, Lcn/nubia/i/g$7;

    invoke-direct {v3, p0}, Lcn/nubia/i/g$7;-><init>(Lcn/nubia/i/g;)V

    .line 290
    invoke-virtual {v0, v3}, Lcn/nubia/i/m$a;->a(Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/i/m$a;

    move-result-object v0

    new-instance v3, Lcn/nubia/i/g$6;

    invoke-direct {v3, p0}, Lcn/nubia/i/g$6;-><init>(Lcn/nubia/i/g;)V

    .line 297
    invoke-virtual {v0, v3}, Lcn/nubia/i/m$a;->b(Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/i/m$a;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcn/nubia/i/m$a;->a()Lcn/nubia/i/m;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/i/g;->p:Lcn/nubia/i/m;

    .line 305
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/g;->p:Lcn/nubia/i/m;

    sget v3, Lcn/nubia/i/q$d;->p:I

    invoke-virtual {v0, v3}, Lcn/nubia/i/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/i/g;->i:Landroid/content/Context;

    sget v4, Lcn/nubia/i/q$f;->f:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object p1, p0, Lcn/nubia/i/g;->p:Lcn/nubia/i/m;

    invoke-virtual {p1}, Lcn/nubia/i/m;->show()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 198
    sget-boolean v0, Lcn/nubia/i/p;->a:Z

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "idA: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FiltersLoadOp"

    invoke-static {v0, p1}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcn/nubia/i/g;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/i/g;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/i/g;)Lcn/nubia/i/g$a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/i/g;->c:Lcn/nubia/i/g$a;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/i/g;)Ljava/util/ArrayList;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/i/g;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/i/g;)Landroid/view/View;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/i/g;->e:Landroid/view/View;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 117
    new-instance v0, Lcn/nubia/i/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/i/g$a;-><init>(Lcn/nubia/i/g;Lcn/nubia/i/g$1;)V

    iput-object v0, p0, Lcn/nubia/i/g;->c:Lcn/nubia/i/g$a;

    .line 118
    iget-object v1, p0, Lcn/nubia/i/g;->a:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/i/g;->a:Landroid/widget/GridView;

    new-instance v1, Lcn/nubia/i/g$1;

    invoke-direct {v1, p0}, Lcn/nubia/i/g$1;-><init>(Lcn/nubia/i/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/i/g;)Lcn/nubia/i/f;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/i/g;->m:Lcn/nubia/i/f;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcn/nubia/i/g;->b:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/i/g$2;

    invoke-direct {v1, p0}, Lcn/nubia/i/g$2;-><init>(Lcn/nubia/i/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcn/nubia/i/g;->f:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/i/g$3;

    invoke-direct {v1, p0}, Lcn/nubia/i/g$3;-><init>(Lcn/nubia/i/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcn/nubia/i/g;->g:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/i/g$4;

    invoke-direct {v1, p0}, Lcn/nubia/i/g$4;-><init>(Lcn/nubia/i/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private g()V
    .locals 8

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    iget-object v1, p0, Lcn/nubia/i/g;->m:Lcn/nubia/i/f;

    invoke-virtual {v1}, Lcn/nubia/i/f;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 211
    :goto_0
    iget-object v5, p0, Lcn/nubia/i/g;->o:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 212
    iget-object v5, p0, Lcn/nubia/i/g;->o:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/i/i;

    .line 213
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcn/nubia/i/i;->d()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 215
    invoke-virtual {v5}, Lcn/nubia/i/i;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 216
    invoke-virtual {v5, v3}, Lcn/nubia/i/i;->b(I)V

    .line 217
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 219
    invoke-virtual {v5, v6}, Lcn/nubia/i/i;->b(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v5, v3}, Lcn/nubia/i/i;->b(I)V

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcn/nubia/i/l;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcn/nubia/i/i;->i()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " OR "

    .line 222
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v4, 0x4

    if-le v1, v4, :cond_2

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string v5, ""

    invoke-virtual {v0, v1, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "; mSelectedPrisma: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/i/g;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FiltersLoadOp"

    invoke-static {v4, v1}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 229
    sget-object v4, Lcn/nubia/i/l;->h:Ljava/lang/String;

    const-string v5, "null"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v4, Lcn/nubia/i/l;->l:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    iget-object v4, p0, Lcn/nubia/i/g;->l:Lcn/nubia/i/j;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcn/nubia/i/g;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v0, v5}, Lcn/nubia/i/j;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 234
    :cond_2
    iget-object v0, p0, Lcn/nubia/i/g;->l:Lcn/nubia/i/j;

    invoke-virtual {v0, v2}, Lcn/nubia/i/j;->a(Ljava/util/ArrayList;)V

    .line 236
    iget-object v0, p0, Lcn/nubia/i/g;->n:Ljava/util/List;

    iget-object v1, p0, Lcn/nubia/i/g;->o:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v0, p0, Lcn/nubia/i/g;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 238
    iget-object v0, p0, Lcn/nubia/i/g;->m:Lcn/nubia/i/f;

    iget-object v1, p0, Lcn/nubia/i/g;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/i/f;->a(Ljava/util/ArrayList;)V

    .line 239
    iget-object v0, p0, Lcn/nubia/i/g;->c:Lcn/nubia/i/g$a;

    invoke-virtual {v0}, Lcn/nubia/i/g$a;->notifyDataSetChanged()V

    .line 241
    iget-object v0, p0, Lcn/nubia/i/g;->b:Landroid/widget/TextView;

    sget v1, Lcn/nubia/i/q$f;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget-object v0, p0, Lcn/nubia/i/g;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcn/nubia/i/g;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object v0, p0, Lcn/nubia/i/g;->c:Lcn/nubia/i/g$a;

    invoke-virtual {v0, v3}, Lcn/nubia/i/g$a;->a(Z)V

    .line 246
    iget-object v0, p0, Lcn/nubia/i/g;->c:Lcn/nubia/i/g$a;

    invoke-virtual {v0}, Lcn/nubia/i/g$a;->notifyDataSetChanged()V

    .line 248
    invoke-direct {p0}, Lcn/nubia/i/g;->i()V

    return-void
.end method

.method static synthetic g(Lcn/nubia/i/g;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcn/nubia/i/g;->g()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/i/g;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/i/g;->n:Ljava/util/List;

    return-object p0
.end method

.method private h()V
    .locals 5

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/nubia/i/l;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcn/nubia/i/l;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v1, p0, Lcn/nubia/i/g;->l:Lcn/nubia/i/j;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/nubia/i/g$5;

    invoke-direct {v2, p0}, Lcn/nubia/i/g$5;-><init>(Lcn/nubia/i/g;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/i/j;->a(Ljava/lang/String;Lcn/nubia/i/a;)V

    return-void
.end method

.method static synthetic i(Lcn/nubia/i/g;)Lcn/nubia/i/c$a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/i/g;->q:Lcn/nubia/i/c$a;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkNoItemState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/i/g;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiltersLoadOp"

    invoke-static {v1, v0}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcn/nubia/i/g;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/i/g;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcn/nubia/i/g;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcn/nubia/i/g;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/g;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic j(Lcn/nubia/i/g;)Lcn/nubia/i/e;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/i/g;->k:Lcn/nubia/i/e;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/i/g;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcn/nubia/i/g;->i()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcn/nubia/i/f;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/nubia/i/g;->m:Lcn/nubia/i/f;

    return-void
.end method

.method public a(Lcn/nubia/i/i;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcn/nubia/i/g;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p1, p0, Lcn/nubia/i/g;->c:Lcn/nubia/i/g$a;

    invoke-virtual {p1}, Lcn/nubia/i/g$a;->notifyDataSetChanged()V

    .line 107
    invoke-direct {p0}, Lcn/nubia/i/g;->i()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/nubia/i/g;->p:Lcn/nubia/i/m;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcn/nubia/i/m;->dismiss()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcn/nubia/i/g;->p:Lcn/nubia/i/m;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcn/nubia/i/m;->dismiss()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcn/nubia/i/g;->p:Lcn/nubia/i/m;

    .line 79
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/g;->c:Lcn/nubia/i/g$a;

    invoke-virtual {v0}, Lcn/nubia/i/g$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcn/nubia/i/g;->c:Lcn/nubia/i/g$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/i/g$a;->a(Z)V

    .line 81
    iget-object v0, p0, Lcn/nubia/i/g;->b:Landroid/widget/TextView;

    sget v1, Lcn/nubia/i/q$f;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v0, p0, Lcn/nubia/i/g;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    iget-object v0, p0, Lcn/nubia/i/g;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcn/nubia/i/g;->c:Lcn/nubia/i/g$a;

    invoke-virtual {v0}, Lcn/nubia/i/g$a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public d()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcn/nubia/i/g;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v1, p0, Lcn/nubia/i/g;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/i/i;

    .line 98
    invoke-virtual {v2}, Lcn/nubia/i/i;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
