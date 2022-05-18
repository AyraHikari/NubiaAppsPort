.class public Lcn/nubia/camera/pretty/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/pretty/c$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/af/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/android/preference/c;

.field private e:Lcn/nubia/camera/pretty/a$b;

.field private f:Lcn/nubia/camera/pretty/a$a;

.field private final g:I

.field private h:I

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/view/View;

.field private m:Lcn/nubia/camera/pretty/WaterDropSeekbar;

.field private n:Z

.field private o:Z

.field private p:Lcn/nubia/camera/extendedUI/a;

.field private q:Z


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcom/android/preference/c;I)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/c;->n:Z

    iput-boolean v0, p0, Lcn/nubia/camera/pretty/c;->o:Z

    .line 55
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/c;->q:Z

    .line 58
    iput-object p1, p0, Lcn/nubia/camera/pretty/c;->a:Lcn/nubia/camera/ad/a;

    .line 59
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/pretty/c;->b:Lcn/nubia/camera/af/a;

    .line 60
    iget-object p1, p0, Lcn/nubia/camera/pretty/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/pretty/c;->c:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcn/nubia/camera/pretty/c;->d:Lcom/android/preference/c;

    .line 62
    iput p3, p0, Lcn/nubia/camera/pretty/c;->h:I

    .line 63
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    .line 64
    iput p1, p0, Lcn/nubia/camera/pretty/c;->g:I

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    .line 67
    iput p1, p0, Lcn/nubia/camera/pretty/c;->g:I

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09025b

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/pretty/c;->i:Landroid/widget/RelativeLayout;

    .line 157
    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/c;->b(Landroid/view/View;)V

    const v0, 0x7f09025a

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/pretty/c;->l:Landroid/view/View;

    .line 159
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/c;->c(Landroid/view/View;)V

    .line 160
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/c;->d(Landroid/view/View;)V

    .line 162
    invoke-direct {p0}, Lcn/nubia/camera/pretty/c;->f()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/c;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcn/nubia/camera/pretty/c;->n:Z

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/c;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/c;->o:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/c;)Lcn/nubia/camera/extendedUI/a;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/pretty/c;->p:Lcn/nubia/camera/extendedUI/a;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->c:Landroid/content/Context;

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    .line 167
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcn/nubia/camera/pretty/c;->c:Landroid/content/Context;

    .line 168
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 171
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/c;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/c;->n:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/pretty/c;)Lcn/nubia/camera/pretty/a$a;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/pretty/c;->f:Lcn/nubia/camera/pretty/a$a;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f090172

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/pretty/c;->j:Landroid/view/View;

    const v0, 0x7f090173

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/camera/pretty/c;->k:Landroid/widget/ImageView;

    .line 177
    iget-object p1, p0, Lcn/nubia/camera/pretty/c;->j:Landroid/view/View;

    new-instance v0, Lcn/nubia/camera/pretty/c$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/c$1;-><init>(Lcn/nubia/camera/pretty/c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object p1, p0, Lcn/nubia/camera/pretty/c;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070136

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 197
    new-instance p1, Lcn/nubia/camera/extendedUI/a;

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/View;

    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->l:Landroid/view/View;

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string v3, "translationY"

    const/4 v4, 0x0

    const-wide/16 v6, 0x1f4

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcn/nubia/camera/extendedUI/a;-><init>([Ljava/lang/Object;Ljava/lang/String;FFJ)V

    iput-object p1, p0, Lcn/nubia/camera/pretty/c;->p:Lcn/nubia/camera/extendedUI/a;

    .line 199
    new-instance v0, Lcn/nubia/camera/pretty/c$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/c$2;-><init>(Lcn/nubia/camera/pretty/c;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/extendedUI/a;->a(Lcn/nubia/camera/extendedUI/a$a;)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/pretty/c;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/c;->q:Z

    return p1
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f09025c

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/pretty/WaterDropSeekbar;

    iput-object p1, p0, Lcn/nubia/camera/pretty/c;->m:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    .line 216
    new-instance v0, Lcn/nubia/camera/pretty/c$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/c$a;-><init>(Lcn/nubia/camera/pretty/c;)V

    iget v1, p0, Lcn/nubia/camera/pretty/c;->g:I

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a(Lcn/nubia/camera/pretty/WaterDropSeekbar$a;II)V

    .line 217
    iget-object p1, p0, Lcn/nubia/camera/pretty/c;->m:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    iget v0, p0, Lcn/nubia/camera/pretty/c;->h:I

    invoke-virtual {p1, v0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setProgress(I)V

    .line 218
    iget-object p1, p0, Lcn/nubia/camera/pretty/c;->m:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    new-instance v0, Lcn/nubia/camera/pretty/c$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/c$3;-><init>(Lcn/nubia/camera/pretty/c;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setOnSeekBarChangeListener(Lcn/nubia/camera/pretty/WaterDropSeekbar$b;)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/pretty/c;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcn/nubia/camera/pretty/c;->f()V

    return-void
.end method

.method private d()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/c;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->l:Landroid/view/View;

    .line 242
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic e(Lcn/nubia/camera/pretty/c;)Landroid/widget/ImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/pretty/c;->k:Landroid/widget/ImageView;

    return-object p0
.end method

.method private e()Z
    .locals 3

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->d:Lcom/android/preference/c;

    const-string v1, "pref_pretty_switch_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic f(Lcn/nubia/camera/pretty/c;)Lcom/android/preference/c;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/pretty/c;->d:Lcom/android/preference/c;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 280
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/pretty/c;->n:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/pretty/c;->b:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->a(ILcn/nubia/camera/af/a;)V

    goto :goto_1

    .line 282
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/camera/pretty/c;->b:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->a(ILcn/nubia/camera/af/a;)V

    :goto_1
    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/pretty/c;)Lcn/nubia/camera/pretty/a$b;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/pretty/c;->e:Lcn/nubia/camera/pretty/a$b;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/pretty/c;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcn/nubia/camera/pretty/c;->q:Z

    return p0
.end method

.method static synthetic i(Lcn/nubia/camera/pretty/c;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/pretty/c;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/pretty/c;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/nubia/camera/pretty/c;->g:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 141
    invoke-direct {p0}, Lcn/nubia/camera/pretty/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->m:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    .line 143
    invoke-virtual {v0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->m:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->e:Lcn/nubia/camera/pretty/a$b;

    invoke-interface {v0}, Lcn/nubia/camera/pretty/a$b;->a()V

    .line 152
    invoke-direct {p0}, Lcn/nubia/camera/pretty/c;->f()V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 115
    iget-object v1, p0, Lcn/nubia/camera/pretty/c;->l:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-direct {p0}, Lcn/nubia/camera/pretty/c;->f()V

    if-nez p1, :cond_0

    if-eq v0, p1, :cond_0

    .line 118
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ba/f;->c()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 3

    .line 98
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0089

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 99
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/pretty/a$b;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/nubia/camera/pretty/c;->e:Lcn/nubia/camera/pretty/a$b;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->m:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 104
    invoke-direct {p0}, Lcn/nubia/camera/pretty/c;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "NormalPrettySettingLayout"

    const-string v0, "Setting animating, prettyFrament consume the TouchEvent"

    .line 105
    invoke-static {p1, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    .line 73
    iget v0, p0, Lcn/nubia/camera/pretty/c;->h:I

    if-ne v0, p1, :cond_0

    return-void

    .line 76
    :cond_0
    iput p1, p0, Lcn/nubia/camera/pretty/c;->h:I

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/pretty/c;->m:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0, p1}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setProgress(I)V

    .line 79
    iget-object p1, p0, Lcn/nubia/camera/pretty/c;->m:Lcn/nubia/camera/pretty/WaterDropSeekbar;

    invoke-virtual {p1}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->invalidate()V

    .line 81
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/pretty/c;->e:Lcn/nubia/camera/pretty/a$b;

    if-eqz p1, :cond_2

    .line 82
    invoke-interface {p1}, Lcn/nubia/camera/pretty/a$b;->a()V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
