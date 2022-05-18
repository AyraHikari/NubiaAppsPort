.class public Lcn/nubia/video/list/ui/f;
.super Lcn/nubia/video/list/ui/j;
.source "SourceFile"


# static fields
.field private static q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected c:Landroid/widget/ListView;

.field protected d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/support/v7/widget/y;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field protected n:Lb/a/b/c/b/p;

.field protected o:Lb/a/b/c/b/q;

.field protected p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/video/list/ui/f;->q:Ljava/util/ArrayList;

    const-string v1, "NX573J"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcn/nubia/video/list/ui/f;->q:Ljava/util/ArrayList;

    const-string v1, "NX575J"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcn/nubia/video/list/ui/f;->q:Ljava/util/ArrayList;

    const-string v1, "NX569J"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcn/nubia/video/list/ui/f;->q:Ljava/util/ArrayList;

    const-string v1, "NX551J"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/list/ui/f;->c:Landroid/widget/ListView;

    .line 3
    iput-object v0, p0, Lcn/nubia/video/list/ui/f;->d:Landroid/support/v7/widget/RecyclerView;

    .line 4
    iput-object v0, p0, Lcn/nubia/video/list/ui/f;->e:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcn/nubia/video/list/ui/f;->h:Landroid/support/v7/widget/y;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcn/nubia/video/list/ui/f;->p:I

    return-void
.end method

.method static synthetic A(Lcn/nubia/video/list/ui/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/f;->D()V

    return-void
.end method

.method static synthetic B(Lcn/nubia/video/list/ui/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/f;->N()V

    return-void
.end method

.method private C()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private D()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/list/ui/f;->G()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcn/nubia/video/list/ui/f;->R(I)V

    :cond_0
    return-void
.end method

.method private E(Lb/a/b/c/b/m;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.security.privacy.encryptFile.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lb/a/b/c/b/m;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "file_paths"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v1, "file_type"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    invoke-virtual {p1}, Lb/a/b/c/b/f;->u()V

    :cond_0
    return-void
.end method

.method private F()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/list/ui/f;->G()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcn/nubia/video/list/ui/f;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/b/c/b/r;

    invoke-virtual {v0}, Lb/a/b/c/b/r;->d()Lb/a/b/c/b/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/video/list/ui/f;->E(Lb/a/b/c/b/m;)V

    :cond_0
    return-void
.end method

.method private H(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090041

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/video/list/ui/f;->g:Landroid/widget/TextView;

    const v0, 0x7f090113

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/video/list/ui/f;->f:Landroid/widget/TextView;

    const v0, 0x7f090114

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/video/list/ui/f;->e:Landroid/widget/TextView;

    .line 4
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->g:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/video/list/ui/f$f;

    invoke-direct {v0, p0}, Lcn/nubia/video/list/ui/f$f;-><init>(Lcn/nubia/video/list/ui/f;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->f:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/video/list/ui/f$g;

    invoke-direct {v0, p0}, Lcn/nubia/video/list/ui/f$g;-><init>(Lcn/nubia/video/list/ui/f;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private I()V
    .locals 4

    .line 1
    new-instance v0, Lb/a/b/c/b/p;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    iget v3, p0, Lcn/nubia/video/list/ui/f;->p:I

    invoke-direct {v0, v1, v2, v3}, Lb/a/b/c/b/p;-><init>(Landroid/content/Context;Lb/a/b/c/b/f;I)V

    iput-object v0, p0, Lcn/nubia/video/list/ui/f;->n:Lb/a/b/c/b/p;

    .line 2
    new-instance v1, Lcn/nubia/video/list/ui/f$d;

    invoke-direct {v1, p0}, Lcn/nubia/video/list/ui/f$d;-><init>(Lcn/nubia/video/list/ui/f;)V

    invoke-virtual {v0, v1}, Lb/a/b/c/b/p;->y(Lb/a/b/c/b/p$b;)V

    .line 3
    new-instance v0, Lb/a/b/c/b/q;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    iget v3, p0, Lcn/nubia/video/list/ui/f;->p:I

    invoke-direct {v0, v1, v2, v3}, Lb/a/b/c/b/q;-><init>(Landroid/content/Context;Lb/a/b/c/b/f;I)V

    iput-object v0, p0, Lcn/nubia/video/list/ui/f;->o:Lb/a/b/c/b/q;

    .line 4
    new-instance v1, Lcn/nubia/video/list/ui/f$e;

    invoke-direct {v1, p0}, Lcn/nubia/video/list/ui/f$e;-><init>(Lcn/nubia/video/list/ui/f;)V

    invoke-virtual {v0, v1}, Lb/a/b/c/b/q;->c(Lb/a/b/c/b/q$b;)V

    return-void
.end method

.method private J(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090119

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/video/list/ui/f;->i:Landroid/widget/TextView;

    const v0, 0x7f09006b

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/video/list/ui/f;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f09006c

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/video/list/ui/f;->k:Landroid/widget/TextView;

    const v0, 0x7f0900f8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/video/list/ui/f;->l:Landroid/widget/TextView;

    const v0, 0x7f09005b

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/video/list/ui/f;->m:Landroid/widget/TextView;

    .line 6
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->i:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/video/list/ui/f$h;

    invoke-direct {v0, p0}, Lcn/nubia/video/list/ui/f$h;-><init>(Lcn/nubia/video/list/ui/f;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->k:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/video/list/ui/f$i;

    invoke-direct {v0, p0}, Lcn/nubia/video/list/ui/f$i;-><init>(Lcn/nubia/video/list/ui/f;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->l:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/video/list/ui/f$j;

    invoke-direct {v0, p0}, Lcn/nubia/video/list/ui/f$j;-><init>(Lcn/nubia/video/list/ui/f;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->m:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/video/list/ui/f$k;

    invoke-direct {v0, p0}, Lcn/nubia/video/list/ui/f$k;-><init>(Lcn/nubia/video/list/ui/f;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private M()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/list/ui/f;->G()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Lcn/nubia/video/list/ui/e;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/video/list/ui/e;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/b/c/b/r;

    invoke-virtual {v0}, Lb/a/b/c/b/r;->d()Lb/a/b/c/b/m;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/video/list/ui/e;->h(Lb/a/b/c/b/m;)V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->h:Landroid/support/v7/widget/y;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/a0;->g1()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    move v0, v1

    .line 3
    :cond_1
    iget-object v2, p0, Lcn/nubia/video/list/ui/f;->h:Landroid/support/v7/widget/y;

    invoke-virtual {v2}, Landroid/support/v7/widget/a0;->i1()I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 4
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v2, v3, v0, v1}, Lb/a/b/c/b/f;->F(III)V

    :cond_3
    return-void
.end method

.method private O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->d:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcn/nubia/video/list/ui/f$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/list/ui/f$b;-><init>(Lcn/nubia/video/list/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$p;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->n:Lb/a/b/c/b/p;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lcn/nubia/video/list/ui/f$c;

    invoke-direct {v1, p0}, Lcn/nubia/video/list/ui/f$c;-><init>(Lcn/nubia/video/list/ui/f;)V

    invoke-virtual {v0, v1}, Lb/a/b/c/b/a;->r(Lb/a/b/c/b/a$a;)V

    :cond_1
    return-void
.end method

.method private P()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->c:Landroid/widget/ListView;

    new-instance v1, Lcn/nubia/video/list/ui/f$l;

    invoke-direct {v1, p0}, Lcn/nubia/video/list/ui/f$l;-><init>(Lcn/nubia/video/list/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->c:Landroid/widget/ListView;

    new-instance v1, Lcn/nubia/video/list/ui/f$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/list/ui/f$a;-><init>(Lcn/nubia/video/list/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private Q()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/list/ui/f;->G()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "video/*"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "android.intent.extra.STREAM"

    if-le v3, v4, :cond_1

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/a/b/c/b/r;

    .line 9
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v4}, Lb/a/b/c/b/r;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 11
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/a/b/c/b/r;

    .line 15
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lb/a/b/c/b/r;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.SEND"

    .line 17
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    :goto_2
    const v0, 0x7f0f00b0

    .line 19
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 20
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 21
    :catch_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f00ee

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_3
    return-void
.end method

.method private S(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/f;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->j:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private T(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "vertical_list_grid"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lb/a/b/d/e;->n(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->c:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->o:Lb/a/b/c/b/q;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->c:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/list/ui/f;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->n:Lb/a/b/c/b/p;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$f;)V

    :goto_0
    return-void
.end method

.method private U(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/list/ui/f;->e:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic w(Lcn/nubia/video/list/ui/f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/list/ui/f;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/video/list/ui/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/f;->Q()V

    return-void
.end method

.method static synthetic y(Lcn/nubia/video/list/ui/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/f;->F()V

    return-void
.end method

.method static synthetic z(Lcn/nubia/video/list/ui/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/f;->M()V

    return-void
.end method


# virtual methods
.method protected G()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lb/a/b/c/b/r;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "vertical_list_grid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lb/a/b/d/e;->n(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->o:Lb/a/b/c/b/q;

    invoke-virtual {v0}, Lb/a/b/c/b/q;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->n:Lb/a/b/c/b/p;

    invoke-virtual {v0}, Lb/a/b/c/b/p;->t()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected K()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->c:Landroid/widget/ListView;

    iget v1, p0, Lcn/nubia/video/list/ui/f;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->h:Landroid/support/v7/widget/y;

    iget v1, p0, Lcn/nubia/video/list/ui/f;->p:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a0;->E1(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcn/nubia/video/list/ui/f;->e:Landroid/widget/TextView;

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public L(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    invoke-virtual {p1}, Lb/a/b/c/b/f;->u()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected R(I)V
    .locals 0

    return-void
.end method

.method protected V(I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/list/ui/f;->U(I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    invoke-virtual {v0}, Lb/a/b/c/b/f;->J()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->f:Landroid/widget/TextView;

    const v1, 0x7f0f00ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->f:Landroid/widget/TextView;

    const v1, 0x7f0f00dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 5
    iget-object v1, p0, Lcn/nubia/video/list/ui/f;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    iget-object v1, p0, Lcn/nubia/video/list/ui/f;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7
    iget-object v1, p0, Lcn/nubia/video/list/ui/f;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    const/4 v1, 0x1

    if-lez p1, :cond_2

    .line 8
    iget-object v2, p0, Lcn/nubia/video/list/ui/f;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    const/16 v2, 0x12c

    if-lez p1, :cond_3

    if-gt p1, v2, :cond_3

    .line 9
    iget-object v3, p0, Lcn/nubia/video/list/ui/f;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    if-le p1, v2, :cond_4

    .line 10
    iget-object v2, p0, Lcn/nubia/video/list/ui/f;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    if-ne p1, v1, :cond_5

    .line 11
    iget-object v2, p0, Lcn/nubia/video/list/ui/f;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    if-le p1, v1, :cond_6

    .line 12
    iget-object v1, p0, Lcn/nubia/video/list/ui/f;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 13
    :cond_6
    invoke-direct {p0, p1}, Lcn/nubia/video/list/ui/f;->S(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const p3, 0x7f0c0033

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900b1

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcn/nubia/video/list/ui/f;->c:Landroid/widget/ListView;

    const p2, 0x7f090088

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcn/nubia/video/list/ui/f;->d:Landroid/support/v7/widget/RecyclerView;

    .line 5
    new-instance p2, Landroid/support/v7/widget/y;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const/4 v0, 0x2

    invoke-direct {p2, p3, v0}, Landroid/support/v7/widget/y;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/nubia/video/list/ui/f;->h:Landroid/support/v7/widget/y;

    .line 6
    iget-object p3, p0, Lcn/nubia/video/list/ui/f;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 7
    invoke-direct {p0}, Lcn/nubia/video/list/ui/f;->I()V

    .line 8
    invoke-direct {p0, p1}, Lcn/nubia/video/list/ui/f;->H(Landroid/view/View;)V

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/video/list/ui/f;->J(Landroid/view/View;)V

    .line 10
    invoke-direct {p0, p1}, Lcn/nubia/video/list/ui/f;->T(Landroid/view/View;)V

    .line 11
    invoke-direct {p0}, Lcn/nubia/video/list/ui/f;->P()V

    .line 12
    invoke-direct {p0}, Lcn/nubia/video/list/ui/f;->O()V

    .line 13
    invoke-virtual {p0}, Lcn/nubia/video/list/ui/f;->K()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/nubia/video/list/ui/j;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "vertical_list_grid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lb/a/b/d/e;->n(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/list/ui/f;->N()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->o:Lb/a/b/c/b/q;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->d:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/video/list/ui/f;->n:Lb/a/b/c/b/p;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$f;->g()V

    :cond_1
    return-void
.end method
