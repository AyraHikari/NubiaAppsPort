.class public Lcn/nubia/app/AlertController$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/app/AlertController$c$e;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:[Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public H:Landroid/database/Cursor;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Z

.field public L:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public M:Lcn/nubia/app/AlertController$c$e;

.field public N:Z

.field public O:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/content/DialogInterface$OnClickListener;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Ljava/lang/CharSequence;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Z

.field public p:Landroid/content/DialogInterface$OnCancelListener;

.field public q:Landroid/content/DialogInterface$OnDismissListener;

.field public r:Landroid/content/DialogInterface$OnKeyListener;

.field public s:[Ljava/lang/CharSequence;

.field public t:Landroid/widget/ListAdapter;

.field public u:Landroid/content/DialogInterface$OnClickListener;

.field public v:I

.field public w:Landroid/view/View;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/app/AlertController$c;->c:I

    iput v0, p0, Lcn/nubia/app/AlertController$c;->e:I

    iput-boolean v0, p0, Lcn/nubia/app/AlertController$c;->B:Z

    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/app/AlertController$c;->F:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/app/AlertController$c;->N:Z

    iput-boolean v0, p0, Lcn/nubia/app/AlertController$c;->O:Z

    iput-object p1, p0, Lcn/nubia/app/AlertController$c;->a:Landroid/content/Context;

    iput-boolean v1, p0, Lcn/nubia/app/AlertController$c;->o:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcn/nubia/app/AlertController$c;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method private b(Lcn/nubia/app/AlertController;)V
    .locals 10

    iget-object v0, p0, Lcn/nubia/app/AlertController$c;->b:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcn/nubia/app/AlertController;->r(Lcn/nubia/app/AlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/app/AlertController$RecycleListView;

    iget-boolean v1, p0, Lcn/nubia/app/AlertController$c;->E:Z

    invoke-static {p1, v1}, Lcn/nubia/app/AlertController;->c(Lcn/nubia/app/AlertController;Z)Z

    iget-boolean v1, p0, Lcn/nubia/app/AlertController$c;->D:Z

    invoke-static {p1, v1}, Lcn/nubia/app/AlertController;->d(Lcn/nubia/app/AlertController;Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createListView: mIsSingleChoice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/app/AlertController$c;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMultiChoice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/app/AlertController$c;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlertController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcn/nubia/app/AlertController$c;->D:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/app/AlertController$c;->H:Landroid/database/Cursor;

    if-nez v1, :cond_0

    new-instance v9, Lcn/nubia/app/AlertController$c$a;

    iget-object v3, p0, Lcn/nubia/app/AlertController$c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/app/AlertController;->e(Lcn/nubia/app/AlertController;)I

    move-result v4

    const v5, 0x7f08025f

    iget-object v6, p0, Lcn/nubia/app/AlertController$c;->s:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/app/AlertController$c$a;-><init>(Lcn/nubia/app/AlertController$c;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcn/nubia/app/AlertController$RecycleListView;)V

    goto :goto_2

    :cond_0
    new-instance v9, Lcn/nubia/app/AlertController$c$b;

    iget-object v3, p0, Lcn/nubia/app/AlertController$c;->a:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/app/AlertController$c;->H:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/nubia/app/AlertController$c$b;-><init>(Lcn/nubia/app/AlertController$c;Landroid/content/Context;Landroid/database/Cursor;ZLcn/nubia/app/AlertController$RecycleListView;Lcn/nubia/app/AlertController;)V

    goto :goto_2

    :cond_1
    iget-boolean v1, p0, Lcn/nubia/app/AlertController$c;->E:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcn/nubia/app/AlertController;->f(Lcn/nubia/app/AlertController;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcn/nubia/app/AlertController;->g(Lcn/nubia/app/AlertController;)I

    move-result v1

    :goto_0
    move v4, v1

    iget-object v1, p0, Lcn/nubia/app/AlertController$c;->H:Landroid/database/Cursor;

    const v2, 0x7f08025f

    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/nubia/app/AlertController$c;->t:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcn/nubia/app/AlertController$e;

    iget-object v3, p0, Lcn/nubia/app/AlertController$c;->a:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/app/AlertController$c;->s:[Ljava/lang/CharSequence;

    invoke-direct {v1, v3, v4, v2, v5}, Lcn/nubia/app/AlertController$e;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    :goto_1
    move-object v9, v1

    goto :goto_2

    :cond_4
    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lcn/nubia/app/AlertController$c;->a:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/app/AlertController$c;->H:Landroid/database/Cursor;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/app/AlertController$c;->I:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    new-array v1, v8, [I

    aput v2, v1, v7

    move-object v2, v9

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    :goto_2
    iget-object v1, p0, Lcn/nubia/app/AlertController$c;->M:Lcn/nubia/app/AlertController$c$e;

    if-eqz v1, :cond_5

    invoke-interface {v1, v0}, Lcn/nubia/app/AlertController$c$e;->a(Landroid/widget/ListView;)V

    :cond_5
    invoke-static {p1, v9}, Lcn/nubia/app/AlertController;->h(Lcn/nubia/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    iget v1, p0, Lcn/nubia/app/AlertController$c;->F:I

    invoke-static {p1, v1}, Lcn/nubia/app/AlertController;->i(Lcn/nubia/app/AlertController;I)I

    iget-object v1, p0, Lcn/nubia/app/AlertController$c;->u:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_6

    new-instance v1, Lcn/nubia/app/AlertController$c$c;

    invoke-direct {v1, p0, p1}, Lcn/nubia/app/AlertController$c$c;-><init>(Lcn/nubia/app/AlertController$c;Lcn/nubia/app/AlertController;)V

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcn/nubia/app/AlertController$c;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_7

    new-instance v1, Lcn/nubia/app/AlertController$c$d;

    invoke-direct {v1, p0, v0, p1}, Lcn/nubia/app/AlertController$c$d;-><init>(Lcn/nubia/app/AlertController$c;Lcn/nubia/app/AlertController$RecycleListView;Lcn/nubia/app/AlertController;)V

    goto :goto_3

    :cond_7
    :goto_4
    iget-object v1, p0, Lcn/nubia/app/AlertController$c;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_8
    iget-boolean v1, p0, Lcn/nubia/app/AlertController$c;->E:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_5

    :cond_9
    iget-boolean v1, p0, Lcn/nubia/app/AlertController$c;->D:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_a
    :goto_5
    iget-boolean v1, p0, Lcn/nubia/app/AlertController$c;->N:Z

    iput-boolean v1, v0, Lcn/nubia/app/AlertController$RecycleListView;->a:Z

    invoke-static {p1, v0}, Lcn/nubia/app/AlertController;->j(Lcn/nubia/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/app/AlertController;)V
    .locals 7

    iget-object v0, p0, Lcn/nubia/app/AlertController$c;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcn/nubia/app/AlertController;->H(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/app/AlertController$c;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcn/nubia/app/AlertController;->O(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcn/nubia/app/AlertController$c;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcn/nubia/app/AlertController;->K(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v0, p0, Lcn/nubia/app/AlertController$c;->c:I

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcn/nubia/app/AlertController;->J(I)V

    :cond_3
    iget v0, p0, Lcn/nubia/app/AlertController$c;->e:I

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcn/nubia/app/AlertController;->v(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/app/AlertController;->J(I)V

    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/app/AlertController$c;->O:Z

    invoke-virtual {p1, v0}, Lcn/nubia/app/AlertController;->G(Z)V

    iget-object v0, p0, Lcn/nubia/app/AlertController$c;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcn/nubia/app/AlertController;->M(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcn/nubia/app/AlertController$c;->i:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, -0x1

    iget-object v3, p0, Lcn/nubia/app/AlertController$c;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/nubia/app/AlertController;->F(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_6
    iget-object v0, p0, Lcn/nubia/app/AlertController$c;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    const/4 v2, -0x2

    iget-object v3, p0, Lcn/nubia/app/AlertController$c;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/nubia/app/AlertController;->F(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_7
    iget-object v0, p0, Lcn/nubia/app/AlertController$c;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    const/4 v2, -0x3

    iget-object v3, p0, Lcn/nubia/app/AlertController$c;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/nubia/app/AlertController;->F(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_8
    iget-boolean v0, p0, Lcn/nubia/app/AlertController$c;->K:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/app/AlertController;->L(Z)V

    :cond_9
    iget-object v0, p0, Lcn/nubia/app/AlertController$c;->s:[Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcn/nubia/app/AlertController$c;->H:Landroid/database/Cursor;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcn/nubia/app/AlertController$c;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    :cond_a
    invoke-direct {p0, p1}, Lcn/nubia/app/AlertController$c;->b(Lcn/nubia/app/AlertController;)V

    :cond_b
    iget-object v2, p0, Lcn/nubia/app/AlertController$c;->w:Landroid/view/View;

    if-eqz v2, :cond_d

    iget-boolean v0, p0, Lcn/nubia/app/AlertController$c;->B:Z

    if-eqz v0, :cond_c

    iget v3, p0, Lcn/nubia/app/AlertController$c;->x:I

    iget v4, p0, Lcn/nubia/app/AlertController$c;->y:I

    iget v5, p0, Lcn/nubia/app/AlertController$c;->z:I

    iget v6, p0, Lcn/nubia/app/AlertController$c;->A:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/app/AlertController;->R(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_c
    invoke-virtual {p1, v2}, Lcn/nubia/app/AlertController;->Q(Landroid/view/View;)V

    goto :goto_1

    :cond_d
    iget v0, p0, Lcn/nubia/app/AlertController$c;->v:I

    if-eqz v0, :cond_e

    invoke-virtual {p1, v0}, Lcn/nubia/app/AlertController;->P(I)V

    :cond_e
    :goto_1
    return-void
.end method
