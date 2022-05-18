.class public Lcom/android/common/ui/ZtemtSlidingDrawer;
.super Lcom/android/common/ui/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/ui/ZtemtSlidingDrawer$b;,
        Lcom/android/common/ui/ZtemtSlidingDrawer$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/HorizontalScrollView;

.field private d:Lcom/android/common/ui/OneRowGridView;

.field private e:[I

.field private f:[Ljava/lang/CharSequence;

.field private g:Lcom/android/preference/IconListPreference;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/SimpleAdapter;

.field private j:I

.field private k:Lcom/android/common/ui/ZtemtSlidingDrawer$a;

.field private l:I

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/android/common/ui/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    const-string p2, "ZtemtSlidingDrawer"

    .line 29
    iput-object p2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->a:Ljava/lang/String;

    const/4 p2, 0x0

    .line 37
    iput-object p2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->h:Ljava/util/ArrayList;

    .line 38
    iput-object p2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->i:Landroid/widget/SimpleAdapter;

    const/4 v1, -0x1

    .line 39
    iput v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->j:I

    .line 41
    iput v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->l:I

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->m:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->n:Z

    const-string v0, "layout_inflater"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 52
    sget v0, Lcom/android/common/ui/c$f;->b:I

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/common/ui/ZtemtSlidingDrawer;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/ZtemtSlidingDrawer;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->c:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 11

    .line 121
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->j()V

    .line 123
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->d:Lcom/android/common/ui/OneRowGridView;

    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->e:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/OneRowGridView;->setNumColumns(I)V

    .line 124
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->d:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/common/ui/c$c;->j:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/OneRowGridView;->setColumnWidth(I)V

    .line 125
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->e:[I

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->d:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/common/ui/c$c;->i:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 127
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/common/ui/c$c;->g:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 126
    invoke-virtual {v0, v3, v4}, Lcom/android/common/ui/OneRowGridView;->a(II)V

    .line 128
    iget v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->j:I

    if-lt v0, v2, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/common/ui/c$c;->j:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->j:I

    add-int/2addr v2, v1

    mul-int/2addr v0, v2

    .line 130
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/common/ui/c$c;->g:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->j:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 131
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/common/ui/c$c;->l:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 132
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/common/ui/c$c;->b:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 133
    iget-object v2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->d:Lcom/android/common/ui/OneRowGridView;

    new-instance v3, Lcom/android/common/ui/ZtemtSlidingDrawer$1;

    invoke-direct {v3, p0, v0}, Lcom/android/common/ui/ZtemtSlidingDrawer$1;-><init>(Lcom/android/common/ui/ZtemtSlidingDrawer;I)V

    invoke-virtual {v2, v3}, Lcom/android/common/ui/OneRowGridView;->post(Ljava/lang/Runnable;)Z

    .line 142
    :cond_0
    new-instance v0, Lcom/android/common/ui/ZtemtSlidingDrawer$b;

    iget-object v7, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->h:Ljava/util/ArrayList;

    sget v8, Lcom/android/common/ui/c$f;->a:I

    const-string v2, "DrawerListIcon"

    const-string v3, "DrawerListTitle"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x2

    new-array v10, v2, [I

    const/4 v2, 0x0

    sget v3, Lcom/android/common/ui/c$e;->i:I

    aput v3, v10, v2

    sget v2, Lcom/android/common/ui/c$e;->o:I

    aput v2, v10, v1

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/common/ui/ZtemtSlidingDrawer$b;-><init>(Lcom/android/common/ui/ZtemtSlidingDrawer;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->i:Landroid/widget/SimpleAdapter;

    .line 144
    iget-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->d:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/OneRowGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    iget-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->d:Lcom/android/common/ui/OneRowGridView;

    new-instance v0, Lcom/android/common/ui/ZtemtSlidingDrawer$2;

    invoke-direct {v0, p0}, Lcom/android/common/ui/ZtemtSlidingDrawer$2;-><init>(Lcom/android/common/ui/ZtemtSlidingDrawer;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/OneRowGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/android/common/ui/ZtemtSlidingDrawer;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->j:I

    return p0
.end method

.method static synthetic c(Lcom/android/common/ui/ZtemtSlidingDrawer;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->l:I

    return p0
.end method

.method static synthetic d(Lcom/android/common/ui/ZtemtSlidingDrawer;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->m:Z

    return p0
.end method

.method private i()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->g:Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->c:Landroid/widget/HorizontalScrollView;

    if-nez v1, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->g:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->j:I

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->g:Lcom/android/preference/IconListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/preference/IconListPreference;->a(I)V

    .line 96
    iput v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->j:I

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->f:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->j:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->a(Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private j()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->h:Ljava/util/ArrayList;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->e:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 174
    iget-object v2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->e:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DrawerListIcon"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->f:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    const-string v3, "DrawerListTitle"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 62
    invoke-super {p0}, Lcom/android/common/ui/f;->a()V

    .line 63
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->g:Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->g:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->f:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->j:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->i:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->g:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/preference/IconListPreference;->a(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->f:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iput p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->j:I

    .line 160
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->i:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 161
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->k:Lcom/android/common/ui/ZtemtSlidingDrawer$a;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p1}, Lcom/android/common/ui/ZtemtSlidingDrawer$a;->a(I)V

    .line 163
    :cond_0
    iget-boolean p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->n:Z

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->f()Z

    :cond_1
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->l:I

    .line 74
    iput-boolean p2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->m:Z

    .line 75
    iget-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->i:Landroid/widget/SimpleAdapter;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/preference/IconListPreference;Landroid/content/Context;Z)V
    .locals 0

    .line 80
    iput-boolean p3, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->n:Z

    .line 81
    iput-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->g:Lcom/android/preference/IconListPreference;

    .line 82
    invoke-virtual {p1}, Lcom/android/preference/IconListPreference;->f()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->e:[I

    .line 83
    iget-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->g:Lcom/android/preference/IconListPreference;

    invoke-virtual {p1}, Lcom/android/preference/IconListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->f:[Ljava/lang/CharSequence;

    .line 85
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->i()V

    return-void
.end method

.method protected b()V
    .locals 0

    .line 182
    invoke-super {p0}, Lcom/android/common/ui/f;->b()V

    return-void
.end method

.method protected c()V
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/android/common/ui/f;->c()V

    .line 188
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->b:Landroid/widget/ImageView;

    sget v1, Lcom/android/common/ui/c$d;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->b:Landroid/widget/ImageView;

    sget v1, Lcom/android/common/ui/c$d;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method protected getSlideAnimDutaion()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/android/common/ui/f;->onFinishInflate()V

    .line 113
    sget v0, Lcom/android/common/ui/c$e;->g:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->b:Landroid/widget/ImageView;

    .line 114
    sget v0, Lcom/android/common/ui/c$e;->a:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->c:Landroid/widget/HorizontalScrollView;

    .line 115
    sget v0, Lcom/android/common/ui/c$e;->d:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/OneRowGridView;

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->d:Lcom/android/common/ui/OneRowGridView;

    .line 117
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->i()V

    return-void
.end method

.method public setItemClickListener(Lcom/android/common/ui/ZtemtSlidingDrawer$a;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->k:Lcom/android/common/ui/ZtemtSlidingDrawer$a;

    return-void
.end method

.method public setListFocusable(Z)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->d:Lcom/android/common/ui/OneRowGridView;

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDrawerLists.isFocusable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->d:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {v1}, Lcom/android/common/ui/OneRowGridView;->isFocusable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZtemtSlidingDrawer"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->d:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/OneRowGridView;->setFocusable(Z)V

    :cond_0
    return-void
.end method
