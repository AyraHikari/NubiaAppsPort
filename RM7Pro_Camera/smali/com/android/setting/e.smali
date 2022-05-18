.class public Lcom/android/setting/e;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/android/setting/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setting/e$a;,
        Lcom/android/setting/e$b;
    }
.end annotation


# instance fields
.field private a:Lcom/android/setting/d;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/android/setting/e$a;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/Toast;

.field private h:[Ljava/lang/String;

.field private i:Lcom/android/preference/PreferenceGroup;

.field private j:Lcom/android/setting/e$b;

.field private k:Lcom/android/setting/a;

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Landroid/database/ContentObserver;

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/setting/e;->a:Lcom/android/setting/d;

    .line 46
    iput-object v0, p0, Lcom/android/setting/e;->b:Landroid/widget/RelativeLayout;

    .line 47
    iput-object v0, p0, Lcom/android/setting/e;->c:Landroid/view/View;

    .line 48
    iput-object v0, p0, Lcom/android/setting/e;->d:Landroid/widget/ListView;

    .line 49
    iput-object v0, p0, Lcom/android/setting/e;->e:Lcom/android/setting/e$a;

    .line 50
    iput-object v0, p0, Lcom/android/setting/e;->f:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/android/setting/e;->g:Landroid/widget/Toast;

    .line 52
    iput-object v0, p0, Lcom/android/setting/e;->h:[Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/android/setting/e;->i:Lcom/android/preference/PreferenceGroup;

    .line 54
    iput-object v0, p0, Lcom/android/setting/e;->j:Lcom/android/setting/e$b;

    .line 55
    iput-object v0, p0, Lcom/android/setting/e;->k:Lcom/android/setting/a;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/android/setting/e;->l:Z

    .line 57
    iput-object v0, p0, Lcom/android/setting/e;->m:Landroid/view/View;

    .line 58
    iput-object v0, p0, Lcom/android/setting/e;->n:Landroid/database/ContentObserver;

    .line 59
    iput-boolean v1, p0, Lcom/android/setting/e;->o:Z

    .line 60
    iput v1, p0, Lcom/android/setting/e;->p:I

    .line 61
    iput v1, p0, Lcom/android/setting/e;->q:I

    .line 62
    iput-boolean v1, p0, Lcom/android/setting/e;->r:Z

    .line 63
    iput-object v0, p0, Lcom/android/setting/e;->s:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lcom/android/setting/e;)Landroid/widget/ListView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/setting/e;->d:Landroid/widget/ListView;

    return-object p0
.end method

.method public static a()Lcom/android/setting/e;
    .locals 1

    .line 70
    new-instance v0, Lcom/android/setting/e;

    invoke-direct {v0}, Lcom/android/setting/e;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/android/setting/e;[Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/setting/e;->a([Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private a([Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    .line 415
    array-length v1, p1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    aget-object v1, p1, p2

    if-eqz v1, :cond_2

    .line 419
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    aget-object p1, p1, p2

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/android/setting/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/setting/e;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 260
    sget v0, Lcom/android/setting/f$e;->o:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 261
    new-instance v1, Lcom/android/setting/e$4;

    invoke-direct {v1, p0}, Lcom/android/setting/e$4;-><init>(Lcom/android/setting/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    sget v0, Lcom/android/setting/f$e;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/setting/e;->s:Landroid/widget/ListView;

    .line 272
    invoke-direct {p0}, Lcom/android/setting/e;->k()V

    .line 273
    iget-object v0, p0, Lcom/android/setting/e;->s:Landroid/widget/ListView;

    new-instance v1, Lcom/android/setting/e$5;

    invoke-direct {v1, p0}, Lcom/android/setting/e$5;-><init>(Lcom/android/setting/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 297
    new-instance v0, Lcom/android/setting/e$6;

    invoke-direct {v0, p0}, Lcom/android/setting/e$6;-><init>(Lcom/android/setting/e;)V

    .line 312
    sget v1, Lcom/android/setting/f$e;->a:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 313
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    sget v1, Lcom/android/setting/f$e;->b:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 315
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    sget v0, Lcom/android/setting/f$e;->q:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 318
    new-instance v1, Lcom/android/setting/e$7;

    invoke-direct {v1, p0}, Lcom/android/setting/e$7;-><init>(Lcom/android/setting/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    sget v0, Lcom/android/setting/f$e;->k:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/setting/e;->b:Landroid/widget/RelativeLayout;

    .line 329
    new-instance v1, Lcom/android/setting/e$8;

    invoke-direct {v1, p0}, Lcom/android/setting/e$8;-><init>(Lcom/android/setting/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    iget-object v0, p0, Lcom/android/setting/e;->b:Landroid/widget/RelativeLayout;

    sget v1, Lcom/android/setting/f$e;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setting/e;->c:Landroid/view/View;

    .line 339
    sget v0, Lcom/android/setting/f$e;->j:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/setting/e;->d:Landroid/widget/ListView;

    .line 340
    new-instance v1, Lcom/android/setting/e$9;

    invoke-direct {v1, p0}, Lcom/android/setting/e$9;-><init>(Lcom/android/setting/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 373
    sget v0, Lcom/android/setting/f$e;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 374
    new-instance v1, Lcom/android/setting/e$10;

    invoke-direct {v1, p0}, Lcom/android/setting/e$10;-><init>(Lcom/android/setting/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    invoke-direct {p0, p1}, Lcom/android/setting/e;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/android/setting/e;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/setting/e;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/android/setting/e;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/setting/e;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .line 390
    sget v0, Lcom/android/setting/f$e;->n:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/setting/e;->m:Landroid/view/View;

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 392
    iget v0, p0, Lcom/android/setting/e;->p:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 393
    iget-object v0, p0, Lcom/android/setting/e;->m:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/android/setting/e;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/setting/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/setting/e;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/setting/e;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/android/setting/e;->m:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 578
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/setting/e;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 581
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_2

    .line 582
    iget v1, p0, Lcom/android/setting/e;->p:I

    :cond_2
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 583
    iget-object p1, p0, Lcom/android/setting/e;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/android/setting/e;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/setting/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/android/setting/e;)[Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/setting/e;->h:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/android/setting/e;)Lcom/android/setting/d;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/setting/e;->a:Lcom/android/setting/d;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/setting/e;->i:Lcom/android/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "MoreSettingsFragment"

    const-string v0, "showExpandListView: pref null "

    .line 203
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/android/setting/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/setting/f$e;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    iget-object v1, p0, Lcom/android/setting/e;->i:Lcom/android/preference/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    new-instance v0, Lcom/android/setting/e$a;

    iget-object v1, p0, Lcom/android/setting/e;->i:Lcom/android/preference/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/setting/e$a;-><init>(Lcom/android/setting/e;Lcom/android/preference/ListPreference;)V

    iput-object v0, p0, Lcom/android/setting/e;->e:Lcom/android/setting/e$a;

    .line 209
    iget-object p1, p0, Lcom/android/setting/e;->d:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    iget-object p1, p0, Lcom/android/setting/e;->b:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 211
    invoke-direct {p0}, Lcom/android/setting/e;->i()V

    return-void
.end method

.method static synthetic e(Lcom/android/setting/e;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/setting/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/android/setting/e;->k:Lcom/android/setting/a;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/android/setting/a;

    .line 399
    invoke-virtual {p0}, Lcom/android/setting/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/setting/e;->a:Lcom/android/setting/d;

    iget-object v3, p0, Lcom/android/setting/e;->i:Lcom/android/preference/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/setting/a;-><init>(Landroid/content/Context;Lcom/android/setting/d;Lcom/android/preference/ListPreference;)V

    iput-object v0, p0, Lcom/android/setting/e;->k:Lcom/android/setting/a;

    goto :goto_0

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/android/setting/e;->a:Lcom/android/setting/d;

    iget-object v2, p0, Lcom/android/setting/e;->i:Lcom/android/preference/PreferenceGroup;

    invoke-virtual {v2, p1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/setting/a;->a(Lcom/android/setting/d;Lcom/android/preference/ListPreference;)V

    .line 403
    :goto_0
    iget-object v0, p0, Lcom/android/setting/e;->k:Lcom/android/setting/a;

    new-instance v1, Lcom/android/setting/e$11;

    invoke-direct {v1, p0, p1}, Lcom/android/setting/e$11;-><init>(Lcom/android/setting/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/setting/a;->a(Lcom/android/setting/a$b;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/setting/e;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/setting/e;->l:Z

    if-nez p1, :cond_2

    .line 410
    :cond_1
    iget-object p1, p0, Lcom/android/setting/e;->k:Lcom/android/setting/a;

    invoke-virtual {p1}, Lcom/android/setting/a;->a()V

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/android/setting/e;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/android/setting/e;->r:Z

    return p0
.end method

.method static synthetic g(Lcom/android/setting/e;)Lcom/android/setting/e$b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/setting/e;->j:Lcom/android/setting/e$b;

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 132
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 133
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 135
    invoke-virtual {p0}, Lcom/android/setting/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 136
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 139
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    iput v2, p0, Lcom/android/setting/e;->q:I

    .line 143
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 144
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 145
    iget v2, p0, Lcom/android/setting/e;->q:I

    sub-int v3, v1, v2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/android/setting/e;->o:Z

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 146
    iput v1, p0, Lcom/android/setting/e;->p:I

    return-void
.end method

.method static synthetic h(Lcom/android/setting/e;)Lcom/android/setting/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/setting/e;->k:Lcom/android/setting/a;

    return-object p0
.end method

.method private h()V
    .locals 2

    const-string v0, "MoreSettingsFragment"

    const-string v1, "hideExpandListView"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/setting/e;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/setting/e;->d:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/setting/e;->e:Lcom/android/setting/e$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/android/setting/e;->e:Lcom/android/setting/e$a;

    .line 222
    invoke-direct {p0}, Lcom/android/setting/e;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method private i()V
    .locals 3

    const-string v0, "MoreSettingsFragment"

    const-string v1, "playShowListDialogAnimation"

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/android/setting/e;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/setting/f$a;->c:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/android/setting/e;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/setting/f$a;->a:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/android/setting/e;->c:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    iget-object v0, p0, Lcom/android/setting/e;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic i(Lcom/android/setting/e;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/setting/e;->h()V

    return-void
.end method

.method static synthetic j(Lcom/android/setting/e;)Lcom/android/setting/e$a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/setting/e;->e:Lcom/android/setting/e$a;

    return-object p0
.end method

.method private j()V
    .locals 3

    const-string v0, "MoreSettingsFragment"

    const-string v1, "playHideListDialogAnimation"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/android/setting/e;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/setting/f$a;->d:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 236
    new-instance v1, Lcom/android/setting/e$1;

    invoke-direct {v1, p0}, Lcom/android/setting/e$1;-><init>(Lcom/android/setting/e;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/setting/e;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/setting/f$a;->b:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/android/setting/e;->c:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    iget-object v0, p0, Lcom/android/setting/e;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic k(Lcom/android/setting/e;)Lcom/android/preference/PreferenceGroup;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/setting/e;->i:Lcom/android/preference/PreferenceGroup;

    return-object p0
.end method

.method private k()V
    .locals 4

    .line 385
    new-instance v0, Lcom/android/setting/d;

    invoke-virtual {p0}, Lcom/android/setting/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/setting/e;->i:Lcom/android/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/setting/e;->h:[Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/setting/d;-><init>(Landroid/content/Context;Lcom/android/setting/d$a;Lcom/android/preference/PreferenceGroup;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/setting/e;->a:Lcom/android/setting/d;

    .line 386
    iget-object v1, p0, Lcom/android/setting/e;->s:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 566
    new-instance v0, Lcom/android/setting/e$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/setting/e$3;-><init>(Lcom/android/setting/e;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/setting/e;->n:Landroid/database/ContentObserver;

    return-void
.end method

.method private m()V
    .locals 4

    .line 588
    invoke-virtual {p0}, Lcom/android/setting/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_keys_navigationbar"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/setting/e;->n:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private n()V
    .locals 2

    .line 592
    invoke-virtual {p0}, Lcom/android/setting/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/setting/e;->n:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/setting/c;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/setting/e;->j:Lcom/android/setting/e$b;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p1}, Lcom/android/setting/e$b;->a(Ljava/lang/String;)Lcom/android/setting/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/android/preference/PreferenceGroup;)V
    .locals 1

    .line 510
    iput-object p1, p0, Lcom/android/setting/e;->i:Lcom/android/preference/PreferenceGroup;

    .line 511
    iget-object v0, p0, Lcom/android/setting/e;->a:Lcom/android/setting/d;

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0, p1}, Lcom/android/setting/d;->a(Lcom/android/preference/PreferenceGroup;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/setting/e$b;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/setting/e;->j:Lcom/android/setting/e$b;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/android/setting/e;->r:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/setting/e;->j:Lcom/android/setting/e$b;

    invoke-interface {v0, p1}, Lcom/android/setting/e$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/setting/e;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/setting/e;->h()V

    return v1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/setting/e;->k:Lcom/android/setting/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/setting/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/setting/e;->k:Lcom/android/setting/a;

    invoke-virtual {v0}, Lcom/android/setting/a;->c()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/android/setting/e;->j:Lcom/android/setting/e$b;

    if-eqz v0, :cond_0

    .line 427
    invoke-interface {v0}, Lcom/android/setting/e$b;->c()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setting/e;->h:[Ljava/lang/String;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/setting/e;->a:Lcom/android/setting/d;

    if-nez v0, :cond_1

    .line 430
    invoke-direct {p0}, Lcom/android/setting/e;->k()V

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/setting/e;->a:Lcom/android/setting/d;

    iget-object v1, p0, Lcom/android/setting/e;->h:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/setting/d;->a([Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/setting/e;->a:Lcom/android/setting/d;

    invoke-virtual {v0}, Lcom/android/setting/d;->notifyDataSetChanged()V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/setting/e;->j:Lcom/android/setting/e$b;

    invoke-interface {v0, p1}, Lcom/android/setting/e$b;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/android/setting/e;->g:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Lcom/android/setting/e;->g:Landroid/widget/Toast;

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/android/setting/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/setting/f$g;->o:I

    .line 522
    invoke-virtual {p0, v1}, Lcom/android/setting/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 521
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setting/e;->g:Landroid/widget/Toast;

    .line 524
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 562
    iget-boolean v0, p0, Lcom/android/setting/e;->l:Z

    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 596
    iput-object v0, p0, Lcom/android/setting/e;->a:Lcom/android/setting/d;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-direct {p0}, Lcom/android/setting/e;->g()V

    .line 126
    iget-boolean p1, p0, Lcom/android/setting/e;->o:Z

    if-eqz p1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/android/setting/e;->l()V

    :cond_0
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 0

    if-nez p3, :cond_0

    .line 534
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/android/setting/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    .line 537
    new-instance p2, Lcom/android/setting/e$2;

    invoke-direct {p2, p0}, Lcom/android/setting/e$2;-><init>(Lcom/android/setting/e;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 152
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 153
    sget p3, Lcom/android/setting/f$f;->b:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 154
    iget-object p2, p0, Lcom/android/setting/e;->j:Lcom/android/setting/e$b;

    if-eqz p2, :cond_0

    .line 155
    invoke-interface {p2}, Lcom/android/setting/e$b;->c()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/setting/e;->h:[Ljava/lang/String;

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/setting/e;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 500
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 501
    iget-object p1, p0, Lcom/android/setting/e;->g:Landroid/widget/Toast;

    if-eqz p1, :cond_0

    .line 502
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 504
    :cond_0
    iget-object p1, p0, Lcom/android/setting/e;->k:Lcom/android/setting/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/setting/a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 505
    iget-object p1, p0, Lcom/android/setting/e;->k:Lcom/android/setting/a;

    invoke-virtual {p1}, Lcom/android/setting/a;->c()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 181
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const-string v0, "MoreSettingsFragment"

    const-string v1, "onPause"

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0}, Lcom/android/setting/e;->h()V

    .line 184
    iget-object v0, p0, Lcom/android/setting/e;->g:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/android/setting/e;->g:Landroid/widget/Toast;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/setting/e;->k:Lcom/android/setting/a;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Lcom/android/setting/a;->c()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "MoreSettingsFragment"

    const-string v1, "onResume"

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 174
    iget-boolean v0, p0, Lcom/android/setting/e;->o:Z

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/setting/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_keys_navigationbar"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/setting/e;->b(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 164
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 165
    iget-boolean v0, p0, Lcom/android/setting/e;->o:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/android/setting/e;->m()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 195
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 196
    iget-boolean v0, p0, Lcom/android/setting/e;->o:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/setting/e;->n()V

    :cond_0
    return-void
.end method
