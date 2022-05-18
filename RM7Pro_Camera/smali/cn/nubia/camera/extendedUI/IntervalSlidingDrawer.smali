.class public Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;
.super Lcom/android/common/ui/f;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/android/preference/c;

.field private d:Lcn/nubia/camera/ad/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "layout_inflater"

    .line 30
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 p2, 0x0

    .line 31
    check-cast p2, Landroid/view/ViewGroup;

    const v0, 0x7f0c0065

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0115

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

.method static synthetic b(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;)Lcom/android/preference/c;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->c:Lcom/android/preference/c;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;)Landroid/widget/TextView;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;)Landroid/widget/TextView;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/preference/c;Lcn/nubia/camera/ad/a;)V
    .locals 2

    .line 36
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->c:Lcom/android/preference/c;

    .line 37
    iput-object p2, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->d:Lcn/nubia/camera/ad/a;

    const p1, 0x7f0901c2

    .line 39
    invoke-virtual {p0, p1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    iput-object p1, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->a:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    const p1, 0x7f0901c3

    .line 40
    invoke-virtual {p0, p1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->b:Landroid/widget/TextView;

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070096

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f00de

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    const-string v0, "60s"

    .line 44
    invoke-direct {p0, v0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 45
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p2, v1

    float-to-int p2, p2

    add-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0700ea

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 46
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->d:Lcn/nubia/camera/ad/a;

    invoke-static {p2}, Lcn/nubia/camera/w/d;->K(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->d:Lcn/nubia/camera/ad/a;

    invoke-static {p2}, Lcn/nubia/camera/w/d;->K(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->a:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    iget-object p2, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->d:Lcn/nubia/camera/ad/a;

    invoke-static {p2}, Lcn/nubia/camera/w/d;->J(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->b(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->a:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    new-instance p2, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer$1;

    invoke-direct {p2, p0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer$1;-><init>(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;)V

    invoke-virtual {p1, p2}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->setListener(Lcn/nubia/camera/prosetting/ui/a$b;)V

    return-void
.end method
