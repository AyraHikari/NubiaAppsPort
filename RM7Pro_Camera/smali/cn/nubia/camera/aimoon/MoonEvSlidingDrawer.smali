.class public Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;
.super Lcom/android/common/ui/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/android/preference/c;

.field private d:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$a;

.field private e:Ljava/text/DecimalFormat;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "layout_inflater"

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 p2, 0x0

    .line 38
    check-cast p2, Landroid/view/ViewGroup;

    const v0, 0x7f0c004c

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "0.00"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->e:Ljava/text/DecimalFormat;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 103
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const p1, 0x7f0f0314

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)I
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->f:I

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Lcom/android/preference/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->c:Lcom/android/preference/c;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Ljava/text/DecimalFormat;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->e:Ljava/text/DecimalFormat;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Landroid/widget/TextView;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Landroid/widget/TextView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Landroid/widget/TextView;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultEv()I
    .locals 1

    .line 115
    iget v0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->f:I

    if-nez v0, :cond_0

    const/16 v0, -0xc

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .line 107
    iget v0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->f:I

    if-nez v0, :cond_0

    const-string v0, "pref_camera_exposure_compensation"

    return-object v0

    :cond_0
    const-string v0, "pref_camera_exposure_compensation_supermoon"

    return-object v0
.end method

.method static synthetic h(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->d:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$a;

    return-object p0
.end method

.method private i()V
    .locals 8

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->c:Lcom/android/preference/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->c:Lcom/android/preference/c;

    invoke-direct {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->getDefaultEv()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 89
    iget v1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->f:I

    const/high16 v2, 0x40800000    # 4.0f

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0xc

    :cond_0
    int-to-float v0, v0

    div-float/2addr v0, v2

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, ""

    if-ltz v1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->e:Ljava/text/DecimalFormat;

    float-to-double v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->e:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->e:Ljava/text/DecimalFormat;

    float-to-double v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->e:Ljava/text/DecimalFormat;

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->a:Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/android/preference/c;I)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->c:Lcom/android/preference/c;

    .line 45
    iput p2, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->f:I

    .line 46
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->i()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 55
    invoke-super {p0}, Lcom/android/common/ui/f;->onFinishInflate()V

    const v0, 0x7f090145

    .line 57
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

    iput-object v0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->a:Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

    const v0, 0x7f090146

    .line 58
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->b:Landroid/widget/TextView;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v1, "-0.75"

    .line 61
    invoke-direct {p0, v1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 62
    iget-object v1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->b:Landroid/widget/TextView;

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->i()V

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->a:Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

    new-instance v1, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;-><init>(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method

.method public setValueChange(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$a;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->d:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$a;

    return-void
.end method
