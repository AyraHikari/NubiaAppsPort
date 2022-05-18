.class public Lcn/nubia/camera/z/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/View;

.field private d:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Landroid/view/ViewGroup;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/nubia/camera/z/a;->a:Lcn/nubia/camera/ad/a;

    .line 24
    iput-object p2, p0, Lcn/nubia/camera/z/a;->b:Landroid/view/ViewGroup;

    .line 25
    invoke-direct {p0}, Lcn/nubia/camera/z/a;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcn/nubia/camera/z/a;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/z/a;->b:Landroid/view/ViewGroup;

    const v1, 0x7f090183

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcn/nubia/camera/z/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcn/nubia/camera/z/a;->c:Landroid/view/View;

    .line 36
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/z/a;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0901c2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    iput-object v0, p0, Lcn/nubia/camera/z/a;->d:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    return-void
.end method

.method private c()Lcom/android/preference/c;
    .locals 1

    .line 40
    iget-object v0, p0, Lcn/nubia/camera/z/a;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 47
    invoke-direct {p0}, Lcn/nubia/camera/z/a;->b()V

    .line 48
    iget-object v0, p0, Lcn/nubia/camera/z/a;->d:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 51
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/z/a;->c()Lcom/android/preference/c;

    move-result-object v0

    const-string v2, "pref_camera_interval_switch_key"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    .line 52
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcn/nubia/camera/z/a;->d:Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;

    invoke-virtual {v0}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method
