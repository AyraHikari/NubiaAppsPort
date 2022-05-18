.class public Lcom/zte/camera/ui/common/VlogDrawer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/ui/common/VlogDrawer$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "VlogDrawer"


# instance fields
.field private b:Lcom/android/preference/IconListPreference;

.field private c:Lcom/zte/camera/ui/common/VlogDrawer$a;

.field private d:Landroidx/recyclerview/widget/RecyclerView;

.field private e:Landroidx/recyclerview/widget/j;

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:I

.field private i:Lcom/zte/camera/ui/common/VlogCenterLayoutManager;

.field private j:Lcom/zte/camera/ui/common/VlogCenterLayoutManager$b;

.field private k:[Ljava/lang/String;

.field private l:Landroid/media/MediaPlayer;

.field private m:Lcom/zte/camera/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->g:Z

    .line 42
    iput p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->h:I

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/VlogDrawer;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->h:I

    return p0
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/VlogDrawer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->l:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/zte/camera/ui/common/VlogDrawer;->g()V

    .line 103
    sget v0, Lcom/nubia/a/a$e;->D:I

    invoke-virtual {p0, v0}, Lcom/zte/camera/ui/common/VlogDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    new-instance v0, Lcom/zte/camera/ui/common/VlogDrawer$a;

    invoke-direct {v0, p0}, Lcom/zte/camera/ui/common/VlogDrawer$a;-><init>(Lcom/zte/camera/ui/common/VlogDrawer;)V

    iput-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->c:Lcom/zte/camera/ui/common/VlogDrawer$a;

    .line 105
    new-instance v0, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->i:Lcom/zte/camera/ui/common/VlogCenterLayoutManager;

    .line 106
    new-instance p1, Landroidx/recyclerview/widget/j;

    invoke-direct {p1}, Landroidx/recyclerview/widget/j;-><init>()V

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->e:Landroidx/recyclerview/widget/j;

    .line 107
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/m;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m;->a(Z)V

    .line 108
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 109
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->i:Lcom/zte/camera/ui/common/VlogCenterLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 110
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->c:Lcom/zte/camera/ui/common/VlogDrawer$a;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 111
    new-instance p1, Lcom/zte/camera/ui/common/-$$Lambda$VlogDrawer$z8wRQp09kzTlKuuUc7Kj7MOfOGM;

    invoke-direct {p1, p0}, Lcom/zte/camera/ui/common/-$$Lambda$VlogDrawer$z8wRQp09kzTlKuuUc7Kj7MOfOGM;-><init>(Lcom/zte/camera/ui/common/VlogDrawer;)V

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->j:Lcom/zte/camera/ui/common/VlogCenterLayoutManager$b;

    .line 118
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->i:Lcom/zte/camera/ui/common/VlogCenterLayoutManager;

    invoke-virtual {v0, p1}, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->a(Lcom/zte/camera/ui/common/VlogCenterLayoutManager$b;)V

    return-void
.end method

.method private a(Lcom/zte/camera/ui/common/VlogDrawer$a$a;)V
    .locals 4

    .line 235
    iget-object v0, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->w:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 236
    iget-boolean v1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->g:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->w:Landroid/view/TextureView;

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 239
    iget-object v1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->y:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x24

    invoke-virtual {v1, v2, v3, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    const/16 v1, 0xc

    .line 242
    invoke-direct {p0, p1, v1}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Lcom/zte/camera/ui/common/VlogDrawer$a$a;I)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->w:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 246
    iget-object v1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->y:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v3, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    const/4 v1, 0x6

    .line 249
    invoke-direct {p0, p1, v1}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Lcom/zte/camera/ui/common/VlogDrawer$a$a;I)V

    .line 251
    :goto_0
    iget-object p1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->w:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lcom/zte/camera/ui/common/VlogDrawer$a$a;I)V
    .locals 1

    .line 255
    iget-object v0, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->q:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 256
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$j;->setMarginStart(I)V

    .line 257
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$j;->setMarginEnd(I)V

    .line 258
    iget-object p1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->q:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/VlogDrawer;Lcom/zte/camera/ui/common/VlogDrawer$a$a;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Lcom/zte/camera/ui/common/VlogDrawer$a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/VlogDrawer;Lcom/zte/camera/ui/common/VlogDrawer$a$a;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/zte/camera/ui/common/VlogDrawer;->b(Lcom/zte/camera/ui/common/VlogDrawer$a$a;I)V

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/VlogDrawer;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->g:Z

    return p1
.end method

.method private a(I)[F
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->f(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/zte/camera/d/f;->a(Landroid/content/Context;I)[F

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/VlogDrawer;I)[F
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/VlogDrawer;->a(I)[F

    move-result-object p0

    return-object p0
.end method

.method private b(I)I
    .locals 4

    .line 342
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/VlogDrawer;->a(I)[F

    move-result-object p1

    .line 344
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/zte/camera/ui/common/VlogDrawer;I)I
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/VlogDrawer;->b(I)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->f:Landroid/content/Context;

    return-object p0
.end method

.method private b(Lcom/zte/camera/ui/common/VlogDrawer$a$a;I)V
    .locals 2

    .line 262
    iget-object v0, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->w:Landroid/view/TextureView;

    new-instance v1, Lcom/zte/camera/ui/common/VlogDrawer$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/zte/camera/ui/common/VlogDrawer$1;-><init>(Lcom/zte/camera/ui/common/VlogDrawer;Lcom/zte/camera/ui/common/VlogDrawer$a$a;I)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private c(I)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->i:Lcom/zte/camera/ui/common/VlogCenterLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->b(II)V

    return-void
.end method

.method static synthetic c(Lcom/zte/camera/ui/common/VlogDrawer;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/VlogDrawer;->c(I)V

    return-void
.end method

.method static synthetic c(Lcom/zte/camera/ui/common/VlogDrawer;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/zte/camera/ui/common/VlogDrawer;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->h:I

    return p1
.end method

.method private synthetic d(I)V
    .locals 1

    .line 112
    iget v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->h:I

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->g:Z

    if-eqz v0, :cond_0

    .line 113
    iput p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->h:I

    .line 114
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/VlogDrawer;->setPreferenceValueIndex(I)V

    .line 115
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->c:Lcom/zte/camera/ui/common/VlogDrawer$a;

    invoke-virtual {p1}, Lcom/zte/camera/ui/common/VlogDrawer$a;->d()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/zte/camera/ui/common/VlogDrawer;)[Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->k:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/zte/camera/ui/common/VlogDrawer;)Lcom/android/preference/IconListPreference;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->b:Lcom/android/preference/IconListPreference;

    return-object p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/zte/camera/ui/common/VlogDrawer;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/zte/camera/ui/common/VlogDrawer;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/VlogDrawer;->setPreferenceValueIndex(I)V

    return-void
.end method

.method static synthetic f(Lcom/zte/camera/ui/common/VlogDrawer;)Lcom/zte/camera/ui/common/VlogCenterLayoutManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->i:Lcom/zte/camera/ui/common/VlogCenterLayoutManager;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/VlogDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 97
    invoke-static {}, Lcom/zte/camera/d/e;->b()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 98
    invoke-virtual {p0, v0}, Lcom/zte/camera/ui/common/VlogDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic g(Lcom/zte/camera/ui/common/VlogDrawer;)Landroidx/recyclerview/widget/j;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->e:Landroidx/recyclerview/widget/j;

    return-object p0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, v0}, Lcom/zte/camera/ui/common/VlogDrawer;->setPreferenceValueIndex(I)V

    return-void
.end method

.method static synthetic h(Lcom/zte/camera/ui/common/VlogDrawer;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->d:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic i(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->l:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic lambda$z8wRQp09kzTlKuuUc7Kj7MOfOGM(Lcom/zte/camera/ui/common/VlogDrawer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/VlogDrawer;->d(I)V

    return-void
.end method

.method private setPreferenceValueIndex(I)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->b:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/preference/IconListPreference;->a(I)V

    .line 332
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->m:Lcom/zte/camera/c/a;

    if-eqz p1, :cond_0

    .line 333
    invoke-interface {p1}, Lcom/zte/camera/c/a;->f()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/android/preference/IconListPreference;Lcom/zte/camera/c/a;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->f:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer;->b:Lcom/android/preference/IconListPreference;

    .line 73
    iput-object p3, p0, Lcom/zte/camera/ui/common/VlogDrawer;->m:Lcom/zte/camera/c/a;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/nubia/a/a$a;->g:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->k:[Ljava/lang/String;

    .line 75
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->l:Landroid/media/MediaPlayer;

    .line 76
    invoke-direct {p0}, Lcom/zte/camera/ui/common/VlogDrawer;->f()V

    .line 77
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->f:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 83
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 91
    iput-object v1, p0, Lcom/zte/camera/ui/common/VlogDrawer;->l:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer;->c:Lcom/zte/camera/ui/common/VlogDrawer$a;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogDrawer$a;->d()V

    :cond_0
    return-void
.end method
