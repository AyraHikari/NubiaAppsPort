.class public Lcn/nubia/camera/prisma/PrismaSlidingDrawer;
.super Lcom/android/common/ui/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;,
        Lcn/nubia/camera/prisma/PrismaSlidingDrawer$e;,
        Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;,
        Lcn/nubia/camera/prisma/PrismaSlidingDrawer$a;,
        Lcn/nubia/camera/prisma/PrismaSlidingDrawer$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;

.field private d:Landroid/widget/HorizontalScrollView;

.field private e:Lcom/android/common/ui/OneRowGridView;

.field private f:Lcom/android/preference/c;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

.field private i:I

.field private j:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$c;

.field private k:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$a;

.field private l:I

.field private m:Z

.field private n:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "PrismaSlidingDrawer"

    .line 39
    iput-object p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a:Ljava/lang/String;

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 51
    iput p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->l:I

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->m:Z

    const-string v0, "layout_inflater"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c0058

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v1, p2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0802cc

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->n:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;",
            ">;",
            "Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 155
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    iget-object v1, v1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->a:Ljava/lang/String;

    iget-object v2, p2, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->d:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method private a(Z)Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;
    .locals 6

    .line 228
    iget-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->f:Lcom/android/preference/c;

    iget-object v1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b:Landroid/content/Context;

    const v2, 0x7f0f01fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_online_camera_prisma_key"

    invoke-virtual {v0, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v1

    .line 230
    :goto_0
    iget-object v4, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 231
    iget-object v4, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    iget-object v4, v4, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    iput v3, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->i:I

    .line 233
    iget-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ak/a;->aO()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    const-string p1, "online"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "/"

    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 238
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/i/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_dlc"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 240
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 245
    :cond_2
    iput v1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->i:I

    .line 246
    new-instance p1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    iget-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080296

    const v3, 0x7f0f0201

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/etc/imagestyle/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b:Landroid/content/Context;

    .line 249
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v3, v2}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 250
    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)V

    return-object p1
.end method

.method private a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 164
    iget v0, p1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->e:I

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b:Landroid/content/Context;

    iget p1, p1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->e:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 166
    :cond_0
    iget-object v0, p1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 167
    iget-object p1, p1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->f:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p1, "null"

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 181
    iget-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->e:Lcom/android/common/ui/OneRowGridView;

    iget-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/common/ui/OneRowGridView;->setNumColumns(I)V

    .line 182
    iget-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->e:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/OneRowGridView;->setColumnWidth(I)V

    .line 183
    iget p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->i:I

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->i:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr p1, v0

    .line 185
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 186
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 187
    iget-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->e:Lcom/android/common/ui/OneRowGridView;

    new-instance v1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$1;-><init>(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;I)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/OneRowGridView;->post(Ljava/lang/Runnable;)Z

    .line 195
    :cond_0
    new-instance p1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;

    invoke-direct {p1, p0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;-><init>(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)V

    iput-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->c:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->e:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/OneRowGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    iget-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->e:Lcom/android/common/ui/OneRowGridView;

    new-instance v0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$2;-><init>(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/OneRowGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->f:Lcom/android/preference/c;

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p1, p1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->a:Ljava/lang/String;

    const-string v1, "pref_online_camera_prisma_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer$a;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->k:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$a;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->n:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)I
    .locals 0

    .line 38
    iget p0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->i:I

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)I
    .locals 0

    .line 38
    iget p0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->l:I

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->m:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->c:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 86
    iput p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->l:I

    .line 87
    iput-boolean p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->m:Z

    .line 88
    iget-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->c:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;I)V
    .locals 2

    .line 213
    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)V

    .line 214
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iput p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->i:I

    .line 216
    iput-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    .line 217
    iget-object p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->c:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;

    invoke-virtual {p2}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$d;->notifyDataSetChanged()V

    .line 218
    iget-object p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->j:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$c;

    if-eqz p2, :cond_0

    .line 219
    invoke-interface {p2, p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$c;->a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;Landroid/content/Context;Lcom/android/preference/c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/preference/c;",
            "Z)V"
        }
    .end annotation

    .line 93
    iput-object p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b:Landroid/content/Context;

    .line 94
    iput-object p3, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->f:Lcom/android/preference/c;

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 97
    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Z)Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    invoke-direct {p0, p3}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b:Landroid/content/Context;

    const p4, 0x7f0f0202

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    invoke-direct {p0, p2}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 120
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v1

    :goto_0
    move v4, v3

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    .line 121
    iget-object v6, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v5}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Ljava/util/ArrayList;Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 123
    iget-object v3, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    move v4, v3

    :cond_2
    if-eqz p1, :cond_4

    .line 130
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    .line 131
    iget-object v5, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v5, p2}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Ljava/util/ArrayList;Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)I

    move-result v5

    if-ne v5, v0, :cond_3

    .line 133
    iget-object v4, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    .line 138
    iget-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    if-nez p1, :cond_7

    .line 139
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->a:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 140
    :goto_2
    invoke-direct {p0, v1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Z)Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    .line 141
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    invoke-direct {p0, v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->j:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$c;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    iget-object p2, p2, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 143
    iget-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->j:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$c;

    iget-object p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    invoke-interface {p1, p2}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$c;->a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)V

    :cond_7
    if-eqz v4, :cond_8

    .line 148
    iget-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->e:Lcom/android/common/ui/OneRowGridView;

    iget-object p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/android/common/ui/OneRowGridView;->setNumColumns(I)V

    .line 149
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a()V

    :cond_8
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 108
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 109
    iget-object v2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    iget-object v2, v2, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/android/common/ui/f;->onFinishInflate()V

    const v0, 0x7f0900cd

    .line 176
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->d:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0901e6

    .line 177
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/OneRowGridView;

    iput-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->e:Lcom/android/common/ui/OneRowGridView;

    return-void
.end method

.method public setGotoPrismaPageListener(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$a;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->k:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$a;

    return-void
.end method

.method public setItemClickListener(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$c;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->j:Lcn/nubia/camera/prisma/PrismaSlidingDrawer$c;

    return-void
.end method
