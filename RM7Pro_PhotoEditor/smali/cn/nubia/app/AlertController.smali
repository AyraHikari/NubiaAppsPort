.class public Lcn/nubia/app/AlertController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/app/AlertController$e;,
        Lcn/nubia/app/AlertController$c;,
        Lcn/nubia/app/AlertController$RecycleListView;,
        Lcn/nubia/app/AlertController$d;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/view/View;

.field private H:Z

.field private I:Landroid/widget/ListAdapter;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:I

.field private final U:Landroid/os/Handler;

.field private final V:Landroid/view/View$OnClickListener;

.field private W:I

.field private X:I

.field private Y:I

.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/DialogInterface;

.field private final c:Landroid/view/Window;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/widget/Button;

.field private o:Ljava/lang/CharSequence;

.field private p:Landroid/os/Message;

.field private q:I

.field private r:Landroid/widget/Button;

.field private s:Ljava/lang/CharSequence;

.field private t:Landroid/os/Message;

.field private u:I

.field private v:Landroid/widget/Button;

.field private w:Ljava/lang/CharSequence;

.field private x:Landroid/os/Message;

.field private y:I

.field private z:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/app/AlertController;->m:Z

    iput v0, p0, Lcn/nubia/app/AlertController;->A:I

    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/app/AlertController;->J:I

    iput v0, p0, Lcn/nubia/app/AlertController;->T:I

    new-instance v0, Lcn/nubia/app/AlertController$a;

    invoke-direct {v0, p0}, Lcn/nubia/app/AlertController$a;-><init>(Lcn/nubia/app/AlertController;)V

    iput-object v0, p0, Lcn/nubia/app/AlertController;->V:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/app/AlertController;->b:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    new-instance p1, Lcn/nubia/app/AlertController$d;

    invoke-direct {p1, p2}, Lcn/nubia/app/AlertController$d;-><init>(Landroid/content/DialogInterface;)V

    iput-object p1, p0, Lcn/nubia/app/AlertController;->U:Landroid/os/Handler;

    invoke-virtual {p0}, Lcn/nubia/app/AlertController;->C()V

    const p1, 0x7f0701b6

    invoke-virtual {p0, p1, p1, p1}, Lcn/nubia/app/AlertController;->N(III)V

    return-void
.end method

.method private B()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/app/AlertController;->s:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/app/AlertController;->o:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/app/AlertController;->w:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/app/AlertController;->n:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/app/AlertController;->Y:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/nubia/app/AlertController;->r:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/app/AlertController;->W:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/nubia/app/AlertController;->v:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/app/AlertController;->X:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/app/AlertController;->s:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/app/AlertController;->o:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/app/AlertController;->n:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/app/AlertController;->Y:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/nubia/app/AlertController;->r:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/app/AlertController;->W:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method private D()I
    .locals 3

    iget v0, p0, Lcn/nubia/app/AlertController;->L:I

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/app/AlertController;->K:I

    return v0

    :cond_0
    iget v1, p0, Lcn/nubia/app/AlertController;->T:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcn/nubia/app/AlertController;->K:I

    return v0
.end method

.method private E(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/View;

    new-array v2, v0, [Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p5, :cond_0

    aput-object p1, v1, v3

    aput-boolean v3, v2, v3

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne p5, v5, :cond_1

    move-object p2, v6

    :cond_1
    aput-object p2, v1, p1

    iget-object p2, p0, Lcn/nubia/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz p2, :cond_2

    move p2, v4

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    aput-boolean p2, v2, p1

    add-int/2addr p1, v4

    if-eqz p6, :cond_3

    aput-object p3, v1, p1

    iget-boolean p2, p0, Lcn/nubia/app/AlertController;->H:Z

    aput-boolean p2, v2, p1

    add-int/lit8 p1, p1, 0x1

    :cond_3
    if-eqz p7, :cond_4

    aput-object p4, v1, p1

    aput-boolean v4, v2, p1

    :cond_4
    move p1, v3

    move p2, p1

    move-object p3, v6

    :goto_2
    const p4, 0x7f0701d6

    if-ge v3, v0, :cond_7

    aget-object p5, v1, v3

    if-nez p5, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p3, p4}, Landroid/view/View;->setBackgroundResource(I)V

    move p1, v4

    :cond_6
    aget-boolean p2, v2, v3

    move-object p3, p5

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {p3, p4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_8
    iget-object p1, p0, Lcn/nubia/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz p1, :cond_9

    iget-object p2, p0, Lcn/nubia/app/AlertController;->I:Landroid/widget/ListAdapter;

    if-eqz p2, :cond_9

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p1, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget p2, p0, Lcn/nubia/app/AlertController;->J:I

    const/4 p3, -0x1

    if-le p2, p3, :cond_9

    invoke-virtual {p1, p2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_9
    return-void
.end method

.method private I(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const p2, 0x7f0801e8

    invoke-virtual {p1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcn/nubia/app/AlertController;->S:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private S()Z
    .locals 11

    iget-object v0, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/app/AlertController;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/app/AlertController;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/nubia/app/AlertController;->o:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/app/AlertController;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/app/AlertController;->n:Landroid/widget/Button;

    iget-object v4, p0, Lcn/nubia/app/AlertController;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcn/nubia/app/AlertController;->q:I

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcn/nubia/app/AlertController;->n:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcn/nubia/app/AlertController;->n:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v5, 0x7f08006d

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcn/nubia/app/AlertController;->r:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/app/AlertController;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcn/nubia/app/AlertController;->s:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcn/nubia/app/AlertController;->r:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcn/nubia/app/AlertController;->r:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/app/AlertController;->s:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcn/nubia/app/AlertController;->u:I

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcn/nubia/app/AlertController;->r:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    :cond_3
    iget-object v4, p0, Lcn/nubia/app/AlertController;->r:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iget-object v4, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v5, 0x7f08006f

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcn/nubia/app/AlertController;->v:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/app/AlertController;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcn/nubia/app/AlertController;->w:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcn/nubia/app/AlertController;->v:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcn/nubia/app/AlertController;->v:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/app/AlertController;->w:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcn/nubia/app/AlertController;->y:I

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcn/nubia/app/AlertController;->v:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    :cond_5
    iget-object v4, p0, Lcn/nubia/app/AlertController;->v:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    :goto_2
    invoke-direct {p0}, Lcn/nubia/app/AlertController;->B()V

    if-ne v0, v2, :cond_6

    iget-object v4, p0, Lcn/nubia/app/AlertController;->n:Landroid/widget/Button;

    :goto_3
    invoke-direct {p0, v4}, Lcn/nubia/app/AlertController;->u(Landroid/widget/Button;)V

    goto :goto_4

    :cond_6
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    iget-object v4, p0, Lcn/nubia/app/AlertController;->r:Landroid/widget/Button;

    goto :goto_3

    :cond_7
    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    iget-object v4, p0, Lcn/nubia/app/AlertController;->v:Landroid/widget/Button;

    goto :goto_3

    :cond_8
    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    iget-object v4, p0, Lcn/nubia/app/AlertController;->r:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/app/AlertController;->n:Landroid/widget/Button;

    invoke-direct {p0, v4, v5}, Lcn/nubia/app/AlertController;->y(Landroid/widget/Button;Landroid/widget/Button;)V

    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v3

    :goto_5
    iget-object v4, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v5, 0x7f080071

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v0, :cond_b

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v9, v2, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v9, v3

    new-array v10, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v10, v3

    const-string v6, "setCloseOnTouchOutsideIfNotSet"

    invoke-static/range {v5 .. v10}, Lcn/nubia/app/d;->e(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    :cond_b
    return v0
.end method

.method private T(Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcn/nubia/app/AlertController;->z:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v0, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v2, 0x7f0801c4

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/app/AlertController;->F:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcn/nubia/app/AlertController;->e:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/nubia/app/AlertController;->z:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcn/nubia/app/AlertController;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/nubia/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcn/nubia/app/AlertController;->z:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcn/nubia/app/AlertController;->z:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v2, p0, Lcn/nubia/app/AlertController;->f:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v0, 0x7f0801e2

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private U()Z
    .locals 7

    iget-object v0, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcn/nubia/app/AlertController;->g:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcn/nubia/app/AlertController;->h:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v3, p0, Lcn/nubia/app/AlertController;->h:I

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v1}, Lcn/nubia/app/AlertController;->t(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const/high16 v4, 0x20000

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v4, 0x7f0800c7

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Lcn/nubia/app/AlertController;->m:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcn/nubia/app/AlertController;->i:I

    iget v4, p0, Lcn/nubia/app/AlertController;->j:I

    iget v5, p0, Lcn/nubia/app/AlertController;->k:I

    iget v6, p0, Lcn/nubia/app/AlertController;->l:I

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_5
    iget-object v1, p0, Lcn/nubia/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    :goto_1
    return v2
.end method

.method private V()V
    .locals 3

    iget-object v0, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v2, 0x7f0801e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v2, Lcn/nubia/app/AlertController$b;

    invoke-direct {v2, p0, v1}, Lcn/nubia/app/AlertController$b;-><init>(Lcn/nubia/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private W(Landroid/view/ViewGroup;)Z
    .locals 8

    iget-object v0, p0, Lcn/nubia/app/AlertController;->G:Landroid/view/View;

    const v1, 0x7f080270

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcn/nubia/app/AlertController;->G:Landroid/view/View;

    invoke-virtual {p1, v2, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v7, 0x7f08017a

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/app/AlertController;->C:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/nubia/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/app/AlertController;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/nubia/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/nubia/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcn/nubia/app/AlertController;->I:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/app/AlertController;->Q:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/app/AlertController;->R:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcn/nubia/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcn/nubia/app/AlertController;->D:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v0, p0, Lcn/nubia/app/AlertController;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcn/nubia/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupTitle: verMarginTop = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", verMarginBottom = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "AlertController"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_1
    iget p1, p0, Lcn/nubia/app/AlertController;->A:I

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcn/nubia/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcn/nubia/app/AlertController;->B:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcn/nubia/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcn/nubia/app/AlertController;->D:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcn/nubia/app/AlertController;->D:Landroid/widget/TextView;

    :goto_2
    iget-object v0, p0, Lcn/nubia/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lcn/nubia/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcn/nubia/app/AlertController;->E:Landroid/widget/TextView;

    goto :goto_2

    :cond_c
    :goto_3
    iget-object p1, p0, Lcn/nubia/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/nubia/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v4, v5

    :goto_4
    return v4
.end method

.method private X()V
    .locals 10

    iget-object v0, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x7f080099

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcn/nubia/app/AlertController;->T(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0}, Lcn/nubia/app/AlertController;->S()Z

    move-result v8

    iget-object v1, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v2, 0x7f080276

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcn/nubia/app/AlertController;->W(Landroid/view/ViewGroup;)Z

    move-result v6

    iget-object v1, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v3, 0x7f0800c8

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcn/nubia/app/AlertController;->U()Z

    move-result v7

    invoke-direct {p0, v8, v7, v2, v0}, Lcn/nubia/app/AlertController;->s(ZZLandroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    move-object v1, p0

    move-object v3, v0

    move-object v4, v9

    invoke-direct/range {v1 .. v8}, Lcn/nubia/app/AlertController;->E(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    invoke-direct {p0, v0, v9}, Lcn/nubia/app/AlertController;->I(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/app/AlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcn/nubia/app/AlertController;->n:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/app/AlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcn/nubia/app/AlertController;->p:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/app/AlertController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/nubia/app/AlertController;->Q:Z

    return p1
.end method

.method static synthetic d(Lcn/nubia/app/AlertController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/nubia/app/AlertController;->R:Z

    return p1
.end method

.method static synthetic e(Lcn/nubia/app/AlertController;)I
    .locals 0

    iget p0, p0, Lcn/nubia/app/AlertController;->N:I

    return p0
.end method

.method static synthetic f(Lcn/nubia/app/AlertController;)I
    .locals 0

    iget p0, p0, Lcn/nubia/app/AlertController;->O:I

    return p0
.end method

.method static synthetic g(Lcn/nubia/app/AlertController;)I
    .locals 0

    iget p0, p0, Lcn/nubia/app/AlertController;->P:I

    return p0
.end method

.method static synthetic h(Lcn/nubia/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Lcn/nubia/app/AlertController;->I:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic i(Lcn/nubia/app/AlertController;I)I
    .locals 0

    iput p1, p0, Lcn/nubia/app/AlertController;->J:I

    return p1
.end method

.method static synthetic j(Lcn/nubia/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcn/nubia/app/AlertController;->f:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic k(Lcn/nubia/app/AlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcn/nubia/app/AlertController;->r:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/app/AlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcn/nubia/app/AlertController;->t:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/app/AlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcn/nubia/app/AlertController;->v:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/app/AlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcn/nubia/app/AlertController;->x:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/app/AlertController;)Landroid/content/DialogInterface;
    .locals 0

    iget-object p0, p0, Lcn/nubia/app/AlertController;->b:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/app/AlertController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcn/nubia/app/AlertController;->U:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/app/AlertController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/app/AlertController;)I
    .locals 0

    iget p0, p0, Lcn/nubia/app/AlertController;->M:I

    return p0
.end method

.method private s(ZZLandroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 5

    const/16 v0, 0x8

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x7f0801e1

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcn/nubia/app/AlertController;->G:Landroid/view/View;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcn/nubia/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const v1, 0x7f0600c2

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcn/nubia/app/AlertController;->x()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_5

    if-nez p2, :cond_5

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1, v4, p2, v4, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcn/nubia/app/AlertController;->x()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    :goto_0
    invoke-virtual {p1, v4, p2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcn/nubia/app/AlertController;->x()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_3

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600a9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const p2, 0x7f0801e8

    invoke-virtual {p1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-boolean p2, p0, Lcn/nubia/app/AlertController;->S:Z

    if-eqz p2, :cond_4

    move v0, v4

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method static t(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/app/AlertController;->t(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private u(Landroid/widget/Button;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0}, Lcn/nubia/app/AlertController;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600bc

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private x()Z
    .locals 2

    iget v0, p0, Lcn/nubia/app/AlertController;->K:I

    const v1, 0x7f0b0088

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private y(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 6

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0}, Lcn/nubia/app/AlertController;->x()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600bf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v3, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600a7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v0, v4, v3, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v5, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public A(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcn/nubia/app/AlertController;->z:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method C()V
    .locals 1

    const v0, 0x7f0b0087

    iput v0, p0, Lcn/nubia/app/AlertController;->K:I

    const v0, 0x7f0b008b

    iput v0, p0, Lcn/nubia/app/AlertController;->M:I

    const v0, 0x7f0b008d

    iput v0, p0, Lcn/nubia/app/AlertController;->N:I

    const v0, 0x7f0b008e

    iput v0, p0, Lcn/nubia/app/AlertController;->O:I

    const v0, 0x7f0b008c

    iput v0, p0, Lcn/nubia/app/AlertController;->P:I

    return-void
.end method

.method public F(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object p4, p0, Lcn/nubia/app/AlertController;->U:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    iput-object p2, p0, Lcn/nubia/app/AlertController;->o:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcn/nubia/app/AlertController;->p:Landroid/os/Message;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object p2, p0, Lcn/nubia/app/AlertController;->s:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcn/nubia/app/AlertController;->t:Landroid/os/Message;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lcn/nubia/app/AlertController;->w:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcn/nubia/app/AlertController;->x:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method public G(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/nubia/app/AlertController;->S:Z

    return-void
.end method

.method public H(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/app/AlertController;->G:Landroid/view/View;

    return-void
.end method

.method public J(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/app/AlertController;->B:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcn/nubia/app/AlertController;->A:I

    iget-object v0, p0, Lcn/nubia/app/AlertController;->C:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public K(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcn/nubia/app/AlertController;->B:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/app/AlertController;->A:I

    iget-object v0, p0, Lcn/nubia/app/AlertController;->C:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public L(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/nubia/app/AlertController;->H:Z

    return-void
.end method

.method public M(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcn/nubia/app/AlertController;->e:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcn/nubia/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method N(III)V
    .locals 0

    iput p1, p0, Lcn/nubia/app/AlertController;->W:I

    iput p2, p0, Lcn/nubia/app/AlertController;->X:I

    iput p3, p0, Lcn/nubia/app/AlertController;->Y:I

    return-void
.end method

.method public O(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcn/nubia/app/AlertController;->d:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcn/nubia/app/AlertController;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcn/nubia/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public P(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/app/AlertController;->g:Landroid/view/View;

    iput p1, p0, Lcn/nubia/app/AlertController;->h:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/app/AlertController;->m:Z

    return-void
.end method

.method public Q(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/app/AlertController;->g:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lcn/nubia/app/AlertController;->h:I

    iput-boolean p1, p0, Lcn/nubia/app/AlertController;->m:Z

    return-void
.end method

.method public R(Landroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/app/AlertController;->g:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lcn/nubia/app/AlertController;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/nubia/app/AlertController;->m:Z

    iput p2, p0, Lcn/nubia/app/AlertController;->i:I

    iput p3, p0, Lcn/nubia/app/AlertController;->j:I

    iput p4, p0, Lcn/nubia/app/AlertController;->k:I

    iput p5, p0, Lcn/nubia/app/AlertController;->l:I

    return-void
.end method

.method public v(I)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcn/nubia/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-direct {p0}, Lcn/nubia/app/AlertController;->D()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    invoke-direct {p0}, Lcn/nubia/app/AlertController;->X()V

    invoke-direct {p0}, Lcn/nubia/app/AlertController;->V()V

    return-void
.end method

.method public z(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcn/nubia/app/AlertController;->z:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
