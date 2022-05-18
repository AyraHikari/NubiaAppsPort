.class public Lcom/android/gallery3d/filtershow/category/c;
.super Landroid/support/v4/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/android/gallery3d/filtershow/category/b;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/android/gallery3d/filtershow/category/IconView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageButton;

.field private h:Lcom/android/gallery3d/filtershow/category/CategoryTrack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/c;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->h:Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/category/c;)Lcom/android/gallery3d/filtershow/category/b;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    return-object p0
.end method

.method private d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->P0()I

    move-result v0

    invoke-static {p3}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f0b0036

    invoke-virtual {p1, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz v1, :cond_0

    check-cast p1, Landroid/widget/ScrollView;

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/widget/HorizontalScrollView;

    :goto_0
    const p2, 0x7f080252

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$e;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$e;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080273

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$f;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$f;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08013b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$g;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$g;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080043

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q1()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->isUseDocFace()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2, v3, v3}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_5
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$h;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$h;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080146

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_6
    new-instance v0, Lcom/android/gallery3d/filtershow/category/c$i;

    invoke-direct {v0, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$i;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->P0()I

    move-result v0

    invoke-static {p3}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f0b0038

    invoke-virtual {p1, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz v1, :cond_0

    check-cast p1, Landroid/widget/ScrollView;

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/widget/HorizontalScrollView;

    :goto_0
    const p2, 0x7f08002e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$j;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$j;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080143

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$k;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$k;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08009c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$l;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$l;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080081

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$m;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$m;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08008e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_5
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$n;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$n;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0801ac

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_6
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$o;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$o;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080175

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_7
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$p;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$p;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0801ad

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/4 v2, 0x7

    if-ne v0, v2, :cond_8

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_8
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$q;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$q;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080249

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/16 v2, 0x8

    if-ne v0, v2, :cond_9

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_9
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$r;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$r;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080178

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/16 v2, 0x9

    if-ne v0, v2, :cond_a

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_a
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$a;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$a;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080286

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/16 v2, 0xa

    if-ne v0, v2, :cond_b

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_b
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$b;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$b;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0800c4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/16 v2, 0xb

    if-ne v0, v2, :cond_c

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_c
    new-instance v2, Lcom/android/gallery3d/filtershow/category/c$c;

    invoke-direct {v2, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$c;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080138

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/16 v2, 0xc

    if-ne v0, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_d
    new-instance v0, Lcom/android/gallery3d/filtershow/category/c$d;

    invoke-direct {v0, p0, p3}, Lcom/android/gallery3d/filtershow/category/c$d;-><init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/a;->T()V

    return-object p1
.end method


# virtual methods
.method public c(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->z0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    const/4 p2, 0x7

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz p1, :cond_0

    const/4 p2, 0x6

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->n0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    const/4 p2, 0x5

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/category/b;->f(I)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz p1, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/category/c;->i(I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :pswitch_7
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/c;->h()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/c;->j()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/category/c;->g(II)V

    return-void
.end method

.method public g(II)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/c;->a:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/category/c;->b:I

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->e:Lcom/android/gallery3d/filtershow/category/IconView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->n1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->e:Lcom/android/gallery3d/filtershow/category/IconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/c;->e:Lcom/android/gallery3d/filtershow/category/IconView;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/category/IconView;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->e:Lcom/android/gallery3d/filtershow/category/IconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public i(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v1, 0x3

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->v0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/category/b;->f(I)V

    :cond_4
    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->g:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->s()Z

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public k()V
    .locals 3

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/c;->a:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/c;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/category/c;->c(II)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f08019f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/category/b;->n(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->setAdapter(Lcom/android/gallery3d/filtershow/category/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/category/b;->k(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget p1, p0, Lcom/android/gallery3d/filtershow/category/c;->a:I

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/c;->b:I

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/category/c;->c(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f080018

    if-eq p1, v1, :cond_1

    const v1, 0x7f0801cb

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/gallery3d/filtershow/category/c;->a:I

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o2(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/c;->a:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/category/c;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x5

    if-ne v2, v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/category/c;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p3, 0x6

    const/4 v2, 0x0

    if-ne p3, v0, :cond_2

    const p3, 0x7f0b0025

    goto :goto_0

    :cond_2
    const p3, 0x7f0b0024

    :goto_0
    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->d:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->d:Landroid/widget/LinearLayout;

    const p2, 0x7f08019f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of p3, p1, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    check-cast p1, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->h:Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/category/b;->n(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->h:Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->setAdapter(Lcom/android/gallery3d/filtershow/category/b;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/c;->h:Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/category/b;->k(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/category/b;->k(Landroid/view/View;)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->d:Landroid/widget/LinearLayout;

    const p2, 0x7f080018

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/category/IconView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->e:Lcom/android/gallery3d/filtershow/category/IconView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/c;->h()V

    :cond_5
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->d:Landroid/widget/LinearLayout;

    const p2, 0x7f0801cc

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->f:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->d:Landroid/widget/LinearLayout;

    const p2, 0x7f0801cb

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->g:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/c;->f:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/c;->j()V

    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget p2, p0, Lcom/android/gallery3d/filtershow/category/c;->a:I

    if-ne v0, p2, :cond_7

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object p2

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/category/c;->c:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->o(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j2(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_7
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/c;->d:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c;->h:Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->c()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/c;->a:I

    const-string v1, "currentPanel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
