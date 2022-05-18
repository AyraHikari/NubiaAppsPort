.class public Lcn/nubia/video/commonui/app/AlertController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/commonui/app/AlertController$e;,
        Lcn/nubia/video/commonui/app/AlertController$c;,
        Lcn/nubia/video/commonui/app/AlertController$RecycleListView;,
        Lcn/nubia/video/commonui/app/AlertController$d;
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

.field H:Landroid/view/View;

.field private I:Z

.field private J:Landroid/widget/ListAdapter;

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:F

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field private final a:Landroid/content/Context;

.field private final a0:Landroid/os/Handler;

.field private final b:Landroid/content/DialogInterface;

.field private final b0:Landroid/view/View$OnClickListener;

.field private final c:Landroid/view/Window;

.field private c0:I

.field private d:Ljava/lang/CharSequence;

.field private d0:I

.field private e:Ljava/lang/CharSequence;

.field private e0:I

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/commonui/app/AlertController;->m:Z

    .line 3
    iput v0, p0, Lcn/nubia/video/commonui/app/AlertController;->A:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcn/nubia/video/commonui/app/AlertController;->K:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    iput v1, p0, Lcn/nubia/video/commonui/app/AlertController;->U:F

    .line 6
    iput v0, p0, Lcn/nubia/video/commonui/app/AlertController;->Z:I

    .line 7
    new-instance v0, Lcn/nubia/video/commonui/app/AlertController$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/commonui/app/AlertController$a;-><init>(Lcn/nubia/video/commonui/app/AlertController;)V

    iput-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->b0:Landroid/view/View$OnClickListener;

    .line 8
    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcn/nubia/video/commonui/app/AlertController;->b:Landroid/content/DialogInterface;

    .line 10
    iput-object p3, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    .line 11
    new-instance p1, Lcn/nubia/video/commonui/app/AlertController$d;

    invoke-direct {p1, p2}, Lcn/nubia/video/commonui/app/AlertController$d;-><init>(Landroid/content/DialogInterface;)V

    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->a0:Landroid/os/Handler;

    .line 12
    invoke-virtual {p0}, Lcn/nubia/video/commonui/app/AlertController;->C()V

    .line 13
    sget p1, Lb/a/b/a/d;->a:I

    invoke-virtual {p0, p1, p1, p1}, Lcn/nubia/video/commonui/app/AlertController;->P(III)V

    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->s:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->o:Ljava/lang/CharSequence;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->w:Ljava/lang/CharSequence;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->n:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/video/commonui/app/AlertController;->e0:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->r:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/video/commonui/app/AlertController;->c0:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->v:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/video/commonui/app/AlertController;->d0:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->s:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->o:Ljava/lang/CharSequence;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->n:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/video/commonui/app/AlertController;->e0:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 14
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->r:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/video/commonui/app/AlertController;->c0:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private D()I
    .locals 3

    .line 1
    iget v0, p0, Lcn/nubia/video/commonui/app/AlertController;->M:I

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcn/nubia/video/commonui/app/AlertController;->L:I

    return v0

    .line 3
    :cond_0
    iget v1, p0, Lcn/nubia/video/commonui/app/AlertController;->Z:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v0

    .line 4
    :cond_1
    iget v0, p0, Lcn/nubia/video/commonui/app/AlertController;->L:I

    return v0
.end method

.method private F(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 8

    .line 1
    sget v0, Lb/a/b/a/d;->b:I

    const/4 v1, 0x4

    new-array v2, v1, [Landroid/view/View;

    new-array v3, v1, [Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p5, :cond_0

    aput-object p1, v2, v4

    aput-boolean v4, v3, v4

    move p1, v5

    goto :goto_0

    :cond_0
    move p1, v4

    .line 2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-ne p5, v6, :cond_1

    move-object p2, v7

    :cond_1
    aput-object p2, v2, p1

    .line 3
    iget-object p2, p0, Lcn/nubia/video/commonui/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz p2, :cond_2

    move p2, v5

    goto :goto_1

    :cond_2
    move p2, v4

    :goto_1
    aput-boolean p2, v3, p1

    add-int/2addr p1, v5

    if-eqz p6, :cond_3

    .line 4
    aput-object p3, v2, p1

    .line 5
    iget-boolean p2, p0, Lcn/nubia/video/commonui/app/AlertController;->I:Z

    aput-boolean p2, v3, p1

    add-int/lit8 p1, p1, 0x1

    :cond_3
    if-eqz p7, :cond_4

    .line 6
    aput-object p4, v2, p1

    .line 7
    aput-boolean v5, v3, p1

    :cond_4
    move p1, v4

    move p2, p1

    move-object p3, v7

    :goto_2
    if-ge v4, v1, :cond_8

    .line 8
    aget-object p4, v2, v4

    if-nez p4, :cond_5

    goto :goto_4

    :cond_5
    if-eqz p3, :cond_7

    if-nez p1, :cond_6

    .line 9
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 10
    :cond_6
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    move p1, v5

    .line 11
    :cond_7
    aget-boolean p2, v3, v4

    move-object p3, p4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_a

    if-eqz p1, :cond_9

    .line 12
    sget p1, Lb/a/b/a/d;->b:I

    .line 13
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 14
    :cond_9
    sget p1, Lb/a/b/a/d;->b:I

    .line 15
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 16
    :cond_a
    :goto_5
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz p1, :cond_b

    .line 17
    iget-object p2, p0, Lcn/nubia/video/commonui/app/AlertController;->J:Landroid/widget/ListAdapter;

    if-eqz p2, :cond_b

    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    invoke-virtual {p1, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget p2, p0, Lcn/nubia/video/commonui/app/AlertController;->K:I

    const/4 p3, -0x1

    if-le p2, p3, :cond_b

    .line 21
    invoke-virtual {p1, p2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_b
    return-void
.end method

.method private J(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-nez p1, :cond_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget p2, Lb/a/b/a/e;->y:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-boolean p2, p0, Lcn/nubia/video/commonui/app/AlertController;->T:Z

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

.method private U()Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lb/a/b/a/e;->d:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->n:Landroid/widget/Button;

    .line 2
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->b0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->o:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v3

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->n:Landroid/widget/Button;

    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget v0, p0, Lcn/nubia/video/commonui/app/AlertController;->q:I

    if-eqz v0, :cond_1

    .line 7
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->n:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->n:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v2

    .line 9
    :goto_0
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v5, Lb/a/b/a/e;->e:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->r:Landroid/widget/Button;

    .line 10
    iget-object v5, p0, Lcn/nubia/video/commonui/app/AlertController;->b0:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->s:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->r:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->r:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/video/commonui/app/AlertController;->s:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget v4, p0, Lcn/nubia/video/commonui/app/AlertController;->u:I

    if-eqz v4, :cond_3

    .line 15
    iget-object v5, p0, Lcn/nubia/video/commonui/app/AlertController;->r:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 16
    :cond_3
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->r:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    .line 17
    :goto_1
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v5, Lb/a/b/a/e;->f:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->v:Landroid/widget/Button;

    .line 18
    iget-object v5, p0, Lcn/nubia/video/commonui/app/AlertController;->b0:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->w:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 20
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->v:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 21
    :cond_4
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->v:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/video/commonui/app/AlertController;->w:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget v4, p0, Lcn/nubia/video/commonui/app/AlertController;->y:I

    if-eqz v4, :cond_5

    .line 23
    iget-object v5, p0, Lcn/nubia/video/commonui/app/AlertController;->v:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 24
    :cond_5
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->v:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    .line 25
    :goto_2
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/AlertController;->B()V

    if-ne v0, v2, :cond_6

    .line 26
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->n:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcn/nubia/video/commonui/app/AlertController;->u(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    .line 27
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->r:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcn/nubia/video/commonui/app/AlertController;->u(Landroid/widget/Button;)V

    goto :goto_3

    :cond_7
    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    .line 28
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->v:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcn/nubia/video/commonui/app/AlertController;->u(Landroid/widget/Button;)V

    goto :goto_3

    :cond_8
    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    .line 29
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->r:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/video/commonui/app/AlertController;->n:Landroid/widget/Button;

    invoke-direct {p0, v4, v5}, Lcn/nubia/video/commonui/app/AlertController;->y(Landroid/widget/Button;Landroid/widget/Button;)V

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v3

    .line 30
    :goto_4
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v5, Lb/a/b/a/e;->g:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v0, :cond_b

    .line 31
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v5, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v9, v2, [Ljava/lang/Object;

    .line 33
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v9, v3

    new-array v10, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v10, v3

    const-string v6, "setCloseOnTouchOutsideIfNotSet"

    .line 34
    invoke-static/range {v5 .. v10}, Lb/a/b/a/i;->e(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    :cond_b
    return v0
.end method

.method private V(Landroid/view/ViewGroup;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lb/a/b/a/e;->F:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->z:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v2, Lb/a/b/a/e;->l:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->F:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lcn/nubia/video/commonui/app/AlertController;->e:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->z:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcn/nubia/video/commonui/app/AlertController;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->z:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 10
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->z:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 12
    iget-object v2, p0, Lcn/nubia/video/commonui/app/AlertController;->f:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v0, Lb/a/b/a/e;->o:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private W()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lb/a/b/a/e;->j:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->g:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcn/nubia/video/commonui/app/AlertController;->h:I

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 5
    iget v3, p0, Lcn/nubia/video/commonui/app/AlertController;->h:I

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

    .line 6
    invoke-static {v1}, Lcn/nubia/video/commonui/app/AlertController;->t(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 7
    :cond_3
    iget-object v3, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    const/high16 v4, 0x20000

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v2, :cond_6

    .line 8
    iget-object v3, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v4, Lb/a/b/a/e;->i:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 9
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-boolean v1, p0, Lcn/nubia/video/commonui/app/AlertController;->m:Z

    if-eqz v1, :cond_5

    .line 11
    iget v1, p0, Lcn/nubia/video/commonui/app/AlertController;->i:I

    iget v4, p0, Lcn/nubia/video/commonui/app/AlertController;->j:I

    iget v5, p0, Lcn/nubia/video/commonui/app/AlertController;->k:I

    iget v6, p0, Lcn/nubia/video/commonui/app/AlertController;->l:I

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 12
    :cond_5
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_6
    const/16 v1, 0x8

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    :goto_1
    return v2
.end method

.method private X()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v2, Lb/a/b/a/e;->x:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Lcn/nubia/video/commonui/app/AlertController$b;

    invoke-direct {v2, p0, v1}, Lcn/nubia/video/commonui/app/AlertController$b;-><init>(Lcn/nubia/video/commonui/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 6
    iget v0, p0, Lcn/nubia/video/commonui/app/AlertController;->V:I

    iget v2, p0, Lcn/nubia/video/commonui/app/AlertController;->W:I

    iget v3, p0, Lcn/nubia/video/commonui/app/AlertController;->X:I

    iget v4, p0, Lcn/nubia/video/commonui/app/AlertController;->Y:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    :cond_0
    iget v0, p0, Lcn/nubia/video/commonui/app/AlertController;->U:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    .line 8
    instance-of v2, v1, Lcn/nubia/video/commonui/app/DialogLinearLayout;

    if-eqz v2, :cond_1

    .line 9
    check-cast v1, Lcn/nubia/video/commonui/app/DialogLinearLayout;

    invoke-virtual {v1, v0}, Lcn/nubia/video/commonui/app/DialogLinearLayout;->setMaxHeightRatio(F)V

    goto :goto_0

    .line 10
    :cond_1
    instance-of v2, v1, Lcn/nubia/video/commonui/app/DialogCenterLinearLayout;

    if-eqz v2, :cond_2

    .line 11
    check-cast v1, Lcn/nubia/video/commonui/app/DialogCenterLinearLayout;

    invoke-virtual {v1, v0}, Lcn/nubia/video/commonui/app/DialogCenterLinearLayout;->setMaxHeightRatio(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private Y(Landroid/view/ViewGroup;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->G:Landroid/view/View;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->G:Landroid/view/View;

    invoke-virtual {p1, v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v0, Lb/a/b/a/e;->H:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v6, Lb/a/b/a/e;->k:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_d

    .line 8
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v6, Lb/a/b/a/e;->c:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 9
    iget-object v6, p0, Lcn/nubia/video/commonui/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v6, Lb/a/b/a/e;->b:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 11
    iget-object v6, p0, Lcn/nubia/video/commonui/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->J:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/video/commonui/app/AlertController;->R:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/video/commonui/app/AlertController;->S:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->D:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 16
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_5
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    :cond_6
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 20
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    :cond_7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 22
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lb/a/b/a/c;->l:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 23
    iget-object v2, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lb/a/b/a/c;->k:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupTitle: verMarginTop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", verMarginBottom = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AlertController"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    :cond_8
    :goto_1
    iget p1, p0, Lcn/nubia/video/commonui/app/AlertController;->A:I

    if-eqz p1, :cond_9

    .line 28
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 29
    :cond_9
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->B:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a

    .line 30
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 31
    :cond_a
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->D:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    .line 32
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->D:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 36
    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 37
    :cond_b
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    .line 38
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->E:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 42
    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43
    :cond_c
    :goto_2
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 44
    :cond_d
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lb/a/b/a/e;->H:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v3, v4

    :goto_3
    return v3
.end method

.method private Z()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lb/a/b/a/e;->m:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->H:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lb/a/b/a/e;->h:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-direct {p0, v0}, Lcn/nubia/video/commonui/app/AlertController;->V(Landroid/view/ViewGroup;)V

    .line 4
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v2, Lb/a/b/a/e;->g:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/AlertController;->U()Z

    move-result v8

    .line 6
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v2, Lb/a/b/a/e;->I:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 7
    invoke-direct {p0, v2}, Lcn/nubia/video/commonui/app/AlertController;->Y(Landroid/view/ViewGroup;)Z

    move-result v6

    .line 8
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v3, Lb/a/b/a/e;->j:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    .line 9
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/AlertController;->W()Z

    move-result v7

    .line 10
    invoke-direct {p0, v8, v7, v2, v0}, Lcn/nubia/video/commonui/app/AlertController;->s(ZZLandroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    move-object v1, p0

    move-object v3, v0

    move-object v4, v9

    .line 11
    invoke-direct/range {v1 .. v8}, Lcn/nubia/video/commonui/app/AlertController;->F(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 12
    invoke-direct {p0, v0, v9}, Lcn/nubia/video/commonui/app/AlertController;->J(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/AlertController;->n:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/video/commonui/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/AlertController;->p:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/video/commonui/app/AlertController;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/commonui/app/AlertController;->R:Z

    return p1
.end method

.method static synthetic d(Lcn/nubia/video/commonui/app/AlertController;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/commonui/app/AlertController;->S:Z

    return p1
.end method

.method static synthetic e(Lcn/nubia/video/commonui/app/AlertController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/commonui/app/AlertController;->O:I

    return p0
.end method

.method static synthetic f(Lcn/nubia/video/commonui/app/AlertController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/commonui/app/AlertController;->P:I

    return p0
.end method

.method static synthetic g(Lcn/nubia/video/commonui/app/AlertController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/commonui/app/AlertController;->Q:I

    return p0
.end method

.method static synthetic h(Lcn/nubia/video/commonui/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->J:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic i(Lcn/nubia/video/commonui/app/AlertController;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/commonui/app/AlertController;->K:I

    return p1
.end method

.method static synthetic j(Lcn/nubia/video/commonui/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->f:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic k(Lcn/nubia/video/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/AlertController;->r:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/video/commonui/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/AlertController;->t:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/video/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/AlertController;->v:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/video/commonui/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/AlertController;->x:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/video/commonui/app/AlertController;)Landroid/content/DialogInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/AlertController;->b:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/video/commonui/app/AlertController;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/AlertController;->a0:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/video/commonui/app/AlertController;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/video/commonui/app/AlertController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/commonui/app/AlertController;->N:I

    return p0
.end method

.method private s(ZZLandroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 4

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lb/a/b/a/e;->n:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->G:Landroid/view/View;

    if-nez p1, :cond_5

    .line 4
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/AlertController;->x()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p4, :cond_5

    .line 6
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_5

    if-nez p2, :cond_5

    .line 7
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 8
    iget-object p2, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lb/a/b/a/c;->p:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 9
    invoke-virtual {p1, v3, p2, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 10
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/AlertController;->x()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    iget-object p2, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lb/a/b/a/c;->p:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 14
    invoke-virtual {p1, v3, p2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 15
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/AlertController;->x()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p4, :cond_3

    .line 17
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 18
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 19
    iget-object p2, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lb/a/b/a/c;->i:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 20
    invoke-virtual {p1, v3, p2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 21
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    sget p2, Lb/a/b/a/e;->y:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 23
    iget-boolean p2, p0, Lcn/nubia/video/commonui/app/AlertController;->T:Z

    if-eqz p2, :cond_4

    move v0, v3

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method static t(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lcn/nubia/video/commonui/app/AlertController;->t(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private u(Landroid/widget/Button;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x10

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/AlertController;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lb/a/b/a/c;->n:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5
    iget-object v2, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb/a/b/a/c;->m:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lb/a/b/a/c;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 7
    iget-object v2, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb/a/b/a/c;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 8
    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private x()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/nubia/video/commonui/app/AlertController;->L:I

    sget v1, Lb/a/b/a/f;->c:I

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

    .line 1
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    invoke-virtual {p2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    .line 3
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 4
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/AlertController;->x()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lb/a/b/a/c;->o:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 7
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lb/a/b/a/c;->m:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 8
    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 9
    invoke-virtual {v1, v3, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lb/a/b/a/c;->h:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 11
    iget-object v4, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lb/a/b/a/c;->f:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 12
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v0, v4, v3, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 13
    invoke-virtual {v1, v5, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 14
    :goto_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 15
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public A(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->z:Landroid/widget/ScrollView;

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

    .line 1
    sget v0, Lb/a/b/a/f;->b:I

    iput v0, p0, Lcn/nubia/video/commonui/app/AlertController;->L:I

    .line 2
    sget v0, Lb/a/b/a/f;->i:I

    iput v0, p0, Lcn/nubia/video/commonui/app/AlertController;->N:I

    .line 3
    sget v0, Lb/a/b/a/f;->k:I

    iput v0, p0, Lcn/nubia/video/commonui/app/AlertController;->O:I

    .line 4
    sget v0, Lb/a/b/a/f;->l:I

    iput v0, p0, Lcn/nubia/video/commonui/app/AlertController;->P:I

    .line 5
    sget v0, Lb/a/b/a/f;->j:I

    iput v0, p0, Lcn/nubia/video/commonui/app/AlertController;->Q:I

    return-void
.end method

.method public E(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnimPanelBackground: colorId = [0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]  animPanel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public G(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 1
    iget-object p4, p0, Lcn/nubia/video/commonui/app/AlertController;->a0:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 2
    iput-object p2, p0, Lcn/nubia/video/commonui/app/AlertController;->o:Ljava/lang/CharSequence;

    .line 3
    iput-object p4, p0, Lcn/nubia/video/commonui/app/AlertController;->p:Landroid/os/Message;

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    iput-object p2, p0, Lcn/nubia/video/commonui/app/AlertController;->s:Ljava/lang/CharSequence;

    .line 6
    iput-object p4, p0, Lcn/nubia/video/commonui/app/AlertController;->t:Landroid/os/Message;

    goto :goto_0

    .line 7
    :cond_3
    iput-object p2, p0, Lcn/nubia/video/commonui/app/AlertController;->w:Ljava/lang/CharSequence;

    .line 8
    iput-object p4, p0, Lcn/nubia/video/commonui/app/AlertController;->x:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method public H(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/commonui/app/AlertController;->T:Z

    return-void
.end method

.method public I(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->G:Landroid/view/View;

    return-void
.end method

.method public K(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->B:Landroid/graphics/drawable/Drawable;

    .line 2
    iput p1, p0, Lcn/nubia/video/commonui/app/AlertController;->A:I

    .line 3
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public L(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->B:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/video/commonui/app/AlertController;->A:I

    .line 3
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->C:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public M(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/commonui/app/AlertController;->I:Z

    return-void
.end method

.method public N(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/commonui/app/AlertController;->U:F

    return-void
.end method

.method public O(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method P(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/commonui/app/AlertController;->c0:I

    .line 2
    iput p2, p0, Lcn/nubia/video/commonui/app/AlertController;->d0:I

    .line 3
    iput p3, p0, Lcn/nubia/video/commonui/app/AlertController;->e0:I

    return-void
.end method

.method public Q(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->d:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public R(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->g:Landroid/view/View;

    .line 2
    iput p1, p0, Lcn/nubia/video/commonui/app/AlertController;->h:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/nubia/video/commonui/app/AlertController;->m:Z

    return-void
.end method

.method public S(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->g:Landroid/view/View;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/nubia/video/commonui/app/AlertController;->h:I

    .line 3
    iput-boolean p1, p0, Lcn/nubia/video/commonui/app/AlertController;->m:Z

    return-void
.end method

.method public T(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->g:Landroid/view/View;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/nubia/video/commonui/app/AlertController;->h:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/nubia/video/commonui/app/AlertController;->m:Z

    .line 4
    iput p2, p0, Lcn/nubia/video/commonui/app/AlertController;->i:I

    .line 5
    iput p3, p0, Lcn/nubia/video/commonui/app/AlertController;->j:I

    .line 6
    iput p4, p0, Lcn/nubia/video/commonui/app/AlertController;->k:I

    .line 7
    iput p5, p0, Lcn/nubia/video/commonui/app/AlertController;->l:I

    return-void
.end method

.method public v(I)I
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/AlertController;->D()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/commonui/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/AlertController;->Z()V

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/AlertController;->X()V

    return-void
.end method

.method public z(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController;->z:Landroid/widget/ScrollView;

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
