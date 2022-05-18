.class public Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;
.super Lcom/android/common/ui/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$a;,
        Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/HorizontalScrollView;

.field private b:Lcom/android/common/ui/OneRowGridView;

.field private c:Lcom/android/preference/IconListPreference;

.field private d:[I

.field private e:[Ljava/lang/CharSequence;

.field private f:I

.field private g:Ljava/util/ArrayList;
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

.field private h:Landroid/widget/SimpleAdapter;

.field private i:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$a;

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 38
    iput p2, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->g:Ljava/util/ArrayList;

    .line 41
    iput-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->h:Landroid/widget/SimpleAdapter;

    .line 45
    iput p2, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->k:I

    const-string p2, "layout_inflater"

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 51
    check-cast v0, Landroid/view/ViewGroup;

    const p2, 0x7f0c0058

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->c:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/preference/IconListPreference;->a(I)V

    .line 146
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->e:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iput p1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f:I

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->h:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->i:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$a;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$a;->a(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 10

    .line 86
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->j()V

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->b:Lcom/android/common/ui/OneRowGridView;

    iget-object v1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/OneRowGridView;->setNumColumns(I)V

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->b:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/OneRowGridView;->setColumnWidth(I)V

    .line 91
    iget v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    .line 93
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 94
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070165

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 95
    iget-object v1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->b:Lcom/android/common/ui/OneRowGridView;

    new-instance v2, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$1;-><init>(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;I)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/OneRowGridView;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_0
    new-instance v0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$b;

    iget-object v6, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->g:Ljava/util/ArrayList;

    const v7, 0x7f0c0057

    const-string v1, "DrawerListIcon"

    const-string v2, "DrawerListTitle"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x2

    new-array v9, v1, [I

    fill-array-data v9, :array_0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$b;-><init>(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->h:Landroid/widget/SimpleAdapter;

    .line 106
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->b:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/OneRowGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->b:Lcom/android/common/ui/OneRowGridView;

    new-instance v0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$2;-><init>(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/OneRowGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f09019d
        0x7f090331
    .end array-data
.end method

.method static synthetic a(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(I)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f:I

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->k:I

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->j:Z

    return p0
.end method

.method private i()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->c:Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a:Landroid/widget/HorizontalScrollView;

    if-nez v1, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->c:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f:I

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->c:Lcom/android/preference/IconListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/preference/IconListPreference;->a(I)V

    .line 80
    iput v1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f:I

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->e:[Ljava/lang/CharSequence;

    iget v2, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private j()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->g:Ljava/util/ArrayList;

    .line 156
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 159
    iget-object v2, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DrawerListIcon"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v2, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->e:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    const-string v3, "DrawerListTitle"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v2, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->c:Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->c:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->e:[Ljava/lang/CharSequence;

    iget v2, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->f:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->h:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 127
    iput p1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->k:I

    .line 128
    iput-boolean p2, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->j:Z

    .line 129
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->h:Landroid/widget/SimpleAdapter;

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/preference/IconListPreference;Landroid/content/Context;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->c:Lcom/android/preference/IconListPreference;

    .line 66
    invoke-virtual {p1}, Lcom/android/preference/IconListPreference;->f()[I

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->d:[I

    .line 67
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->c:Lcom/android/preference/IconListPreference;

    invoke-virtual {p1}, Lcom/android/preference/IconListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->e:[Ljava/lang/CharSequence;

    .line 69
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->i()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/android/common/ui/f;->onFinishInflate()V

    const v0, 0x7f0900cd

    .line 59
    invoke-virtual {p0, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0901e6

    .line 60
    invoke-virtual {p0, v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/OneRowGridView;

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->b:Lcom/android/common/ui/OneRowGridView;

    .line 61
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->i()V

    return-void
.end method

.method public setItemClickListener(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$a;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->i:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$a;

    return-void
.end method

.method public setListFocusable(Z)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->b:Lcom/android/common/ui/OneRowGridView;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDrawerLists.isFocusable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->b:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {v1}, Lcom/android/common/ui/OneRowGridView;->isFocusable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlidingDrawer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->b:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/OneRowGridView;->setFocusable(Z)V

    :cond_0
    return-void
.end method
