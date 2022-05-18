.class public Lcn/nubia/video/commonui/app/AlertController$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/commonui/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/commonui/app/AlertController$c$e;
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

.field public M:Lcn/nubia/video/commonui/app/AlertController$c$e;

.field public N:Z

.field public O:Z

.field public P:F

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->c:I

    .line 3
    iput v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->e:I

    .line 4
    iput-boolean v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->B:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->F:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->N:Z

    .line 7
    iput-boolean v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->O:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    iput v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->P:F

    .line 9
    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->a:Landroid/content/Context;

    .line 10
    iput-boolean v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->o:Z

    const-string v0, "layout_inflater"

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method private b(Lcn/nubia/video/commonui/app/AlertController;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->b:Landroid/view/LayoutInflater;

    .line 2
    invoke-static {p1}, Lcn/nubia/video/commonui/app/AlertController;->r(Lcn/nubia/video/commonui/app/AlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/commonui/app/AlertController$RecycleListView;

    .line 3
    iget-boolean v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->E:Z

    invoke-static {p1, v1}, Lcn/nubia/video/commonui/app/AlertController;->c(Lcn/nubia/video/commonui/app/AlertController;Z)Z

    .line 4
    iget-boolean v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->D:Z

    invoke-static {p1, v1}, Lcn/nubia/video/commonui/app/AlertController;->d(Lcn/nubia/video/commonui/app/AlertController;Z)Z

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createListView: mIsSingleChoice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/video/commonui/app/AlertController$c;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMultiChoice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/video/commonui/app/AlertController$c;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlertController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-boolean v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->D:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->H:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 8
    new-instance v9, Lcn/nubia/video/commonui/app/AlertController$c$a;

    iget-object v3, p0, Lcn/nubia/video/commonui/app/AlertController$c;->a:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Lcn/nubia/video/commonui/app/AlertController;->e(Lcn/nubia/video/commonui/app/AlertController;)I

    move-result v4

    sget v5, Lb/a/b/a/e;->G:I

    iget-object v6, p0, Lcn/nubia/video/commonui/app/AlertController$c;->s:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/video/commonui/app/AlertController$c$a;-><init>(Lcn/nubia/video/commonui/app/AlertController$c;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcn/nubia/video/commonui/app/AlertController$RecycleListView;)V

    goto :goto_2

    .line 10
    :cond_0
    new-instance v9, Lcn/nubia/video/commonui/app/AlertController$c$b;

    iget-object v3, p0, Lcn/nubia/video/commonui/app/AlertController$c;->a:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController$c;->H:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcn/nubia/video/commonui/app/AlertController$c$b;-><init>(Lcn/nubia/video/commonui/app/AlertController$c;Landroid/content/Context;Landroid/database/Cursor;ZLcn/nubia/video/commonui/app/AlertController$RecycleListView;Lcn/nubia/video/commonui/app/AlertController;)V

    goto :goto_2

    .line 11
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->E:Z

    if-eqz v1, :cond_2

    .line 12
    invoke-static {p1}, Lcn/nubia/video/commonui/app/AlertController;->f(Lcn/nubia/video/commonui/app/AlertController;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcn/nubia/video/commonui/app/AlertController;->g(Lcn/nubia/video/commonui/app/AlertController;)I

    move-result v1

    :goto_0
    move v4, v1

    .line 13
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->H:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 14
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->t:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcn/nubia/video/commonui/app/AlertController$e;

    iget-object v2, p0, Lcn/nubia/video/commonui/app/AlertController$c;->a:Landroid/content/Context;

    sget v3, Lb/a/b/a/e;->G:I

    iget-object v5, p0, Lcn/nubia/video/commonui/app/AlertController$c;->s:[Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v4, v3, v5}, Lcn/nubia/video/commonui/app/AlertController$e;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    :goto_1
    move-object v9, v1

    goto :goto_2

    .line 15
    :cond_4
    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lcn/nubia/video/commonui/app/AlertController$c;->a:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/video/commonui/app/AlertController$c;->H:Landroid/database/Cursor;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->I:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v6, v2

    new-array v7, v8, [I

    sget v1, Lb/a/b/a/e;->G:I

    aput v1, v7, v2

    move-object v2, v9

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 16
    :goto_2
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->M:Lcn/nubia/video/commonui/app/AlertController$c$e;

    if-eqz v1, :cond_5

    .line 17
    invoke-interface {v1, v0}, Lcn/nubia/video/commonui/app/AlertController$c$e;->a(Landroid/widget/ListView;)V

    .line 18
    :cond_5
    invoke-static {p1, v9}, Lcn/nubia/video/commonui/app/AlertController;->h(Lcn/nubia/video/commonui/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 19
    iget v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->F:I

    invoke-static {p1, v1}, Lcn/nubia/video/commonui/app/AlertController;->i(Lcn/nubia/video/commonui/app/AlertController;I)I

    .line 20
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->u:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_6

    .line 21
    new-instance v1, Lcn/nubia/video/commonui/app/AlertController$c$c;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/commonui/app/AlertController$c$c;-><init>(Lcn/nubia/video/commonui/app/AlertController$c;Lcn/nubia/video/commonui/app/AlertController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_3

    .line 22
    :cond_6
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_7

    .line 23
    new-instance v1, Lcn/nubia/video/commonui/app/AlertController$c$d;

    invoke-direct {v1, p0, v0, p1}, Lcn/nubia/video/commonui/app/AlertController$c$d;-><init>(Lcn/nubia/video/commonui/app/AlertController$c;Lcn/nubia/video/commonui/app/AlertController$RecycleListView;Lcn/nubia/video/commonui/app/AlertController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 24
    :cond_7
    :goto_3
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_8

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 26
    :cond_8
    iget-boolean v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->E:Z

    if-eqz v1, :cond_9

    .line 27
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_4

    .line 28
    :cond_9
    iget-boolean v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->D:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 30
    :cond_a
    :goto_4
    iget-boolean v1, p0, Lcn/nubia/video/commonui/app/AlertController$c;->N:Z

    iput-boolean v1, v0, Lcn/nubia/video/commonui/app/AlertController$RecycleListView;->a:Z

    .line 31
    invoke-static {p1, v0}, Lcn/nubia/video/commonui/app/AlertController;->j(Lcn/nubia/video/commonui/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/video/commonui/app/AlertController;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/AlertController;->I(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/AlertController;->Q(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/AlertController;->L(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_2
    iget v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->c:I

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/AlertController;->K(I)V

    .line 9
    :cond_3
    iget v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->e:I

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/AlertController;->v(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/AlertController;->K(I)V

    .line 11
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->O:Z

    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/AlertController;->H(Z)V

    .line 12
    iget v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->P:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_5

    .line 13
    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/AlertController;->N(F)V

    .line 14
    :cond_5
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/AlertController;->O(Ljava/lang/CharSequence;)V

    .line 16
    :cond_6
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->i:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, -0x1

    .line 17
    iget-object v3, p0, Lcn/nubia/video/commonui/app/AlertController$c;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/nubia/video/commonui/app/AlertController;->G(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 18
    :cond_7
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    const/4 v2, -0x2

    .line 19
    iget-object v3, p0, Lcn/nubia/video/commonui/app/AlertController$c;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/nubia/video/commonui/app/AlertController;->G(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 20
    :cond_8
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    const/4 v2, -0x3

    .line 21
    iget-object v3, p0, Lcn/nubia/video/commonui/app/AlertController$c;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/nubia/video/commonui/app/AlertController;->G(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 22
    :cond_9
    iget-boolean v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->K:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/AlertController;->M(Z)V

    .line 24
    :cond_a
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->s:[Ljava/lang/CharSequence;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->H:Landroid/database/Cursor;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    .line 25
    :cond_b
    invoke-direct {p0, p1}, Lcn/nubia/video/commonui/app/AlertController$c;->b(Lcn/nubia/video/commonui/app/AlertController;)V

    .line 26
    :cond_c
    iget-object v2, p0, Lcn/nubia/video/commonui/app/AlertController$c;->w:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 27
    iget-boolean v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->B:Z

    if-eqz v0, :cond_d

    .line 28
    iget v3, p0, Lcn/nubia/video/commonui/app/AlertController$c;->x:I

    iget v4, p0, Lcn/nubia/video/commonui/app/AlertController$c;->y:I

    iget v5, p0, Lcn/nubia/video/commonui/app/AlertController$c;->z:I

    iget v6, p0, Lcn/nubia/video/commonui/app/AlertController$c;->A:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/video/commonui/app/AlertController;->T(Landroid/view/View;IIII)V

    goto :goto_1

    .line 29
    :cond_d
    invoke-virtual {p1, v2}, Lcn/nubia/video/commonui/app/AlertController;->S(Landroid/view/View;)V

    goto :goto_1

    .line 30
    :cond_e
    iget v0, p0, Lcn/nubia/video/commonui/app/AlertController$c;->v:I

    if-eqz v0, :cond_f

    .line 31
    invoke-virtual {p1, v0}, Lcn/nubia/video/commonui/app/AlertController;->R(I)V

    :cond_f
    :goto_1
    return-void
.end method
