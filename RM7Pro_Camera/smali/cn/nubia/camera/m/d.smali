.class public Lcn/nubia/camera/m/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Lcn/nubia/camera/extendedUI/g;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Lcn/nubia/camera/ad/a;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcn/nubia/camera/m/d$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/m/d$2;-><init>(Lcn/nubia/camera/m/d;)V

    iput-object v0, p0, Lcn/nubia/camera/m/d;->d:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcn/nubia/camera/m/d;->a:Landroid/widget/RelativeLayout;

    .line 29
    iput-object p2, p0, Lcn/nubia/camera/m/d;->b:Lcn/nubia/camera/ad/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/m/d;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/camera/m/d;->b:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/m/d;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/nubia/camera/m/d;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/m/d;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/m/a;->a()V

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 78
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/m/d;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0300

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    .line 79
    iget-object p1, p0, Lcn/nubia/camera/m/d;->d:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ba/f;->c()V

    .line 82
    iget-object p1, p0, Lcn/nubia/camera/m/d;->d:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 83
    iget-object p1, p0, Lcn/nubia/camera/m/d;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object p1

    const-wide/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/m/a;->a(J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcn/nubia/camera/m/d;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/android/preference/PreferenceGroup;)Z
    .locals 3

    .line 54
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_second_display_show_key"

    .line 55
    invoke-virtual {p1, v0}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p1

    check-cast p1, Lcom/android/preference/IconListPreference;

    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcn/nubia/camera/m/d;->c:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Lcn/nubia/camera/extendedUI/g;->a(Lcom/android/preference/IconListPreference;)V

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/m/d;->c:Lcn/nubia/camera/extendedUI/g;

    new-instance v1, Lcn/nubia/camera/m/d$1;

    iget-object v2, p0, Lcn/nubia/camera/m/d;->b:Lcn/nubia/camera/ad/a;

    invoke-direct {v1, p0, p1, v2}, Lcn/nubia/camera/m/d$1;-><init>(Lcn/nubia/camera/m/d;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/g;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Lcn/nubia/camera/extendedUI/g;
    .locals 3

    .line 37
    iget-object v0, p0, Lcn/nubia/camera/m/d;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/aq/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/m/d;->b:Lcn/nubia/camera/ad/a;

    .line 38
    invoke-static {v0}, Lcn/nubia/camera/ba/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/m/d;->b:Lcn/nubia/camera/ad/a;

    .line 39
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/m/d;->b:Lcn/nubia/camera/ad/a;

    .line 40
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/m/d;->b:Lcn/nubia/camera/ad/a;

    .line 41
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcn/nubia/camera/extendedUI/g;

    iget-object v1, p0, Lcn/nubia/camera/m/d;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/extendedUI/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/m/d;->c:Lcn/nubia/camera/extendedUI/g;

    const v1, 0x7f080160

    .line 43
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/g;->setImageResource(I)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/m/d;->c:Lcn/nubia/camera/extendedUI/g;

    return-object v0
.end method

.method public c()Lcn/nubia/camera/extendedUI/g;
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/nubia/camera/m/d;->c:Lcn/nubia/camera/extendedUI/g;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 72
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    return-void
.end method
