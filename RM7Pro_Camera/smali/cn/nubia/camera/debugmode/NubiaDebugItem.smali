.class public Lcn/nubia/camera/debugmode/NubiaDebugItem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/debugmode/NubiaDebugItem$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/CheckBox;

.field private c:Ljava/lang/String;

.field private d:Lcom/android/preference/c;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcn/nubia/camera/debugmode/NubiaDebugItem$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->a:Landroid/widget/TextView;

    .line 17
    iput-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->b:Landroid/widget/CheckBox;

    .line 19
    iput-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->c:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->d:Lcom/android/preference/c;

    .line 21
    iput-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->e:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->f:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->g:Lcn/nubia/camera/debugmode/NubiaDebugItem$a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/debugmode/NubiaDebugItem;)Lcn/nubia/camera/debugmode/NubiaDebugItem$a;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->g:Lcn/nubia/camera/debugmode/NubiaDebugItem$a;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/debugmode/NubiaDebugItem;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/camera/debugmode/NubiaDebugItem;->setCheckState(Z)V

    return-void
.end method

.method private a()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->d:Lcom/android/preference/c;

    iget-object v1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcn/nubia/camera/debugmode/NubiaDebugItem;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->c:Ljava/lang/String;

    return-object p0
.end method

.method private setCheckState(Z)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->d:Lcom/android/preference/c;

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/preference/c;Lcn/nubia/camera/debugmode/NubiaDebugItem$a;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->c:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->e:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->f:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->d:Lcom/android/preference/c;

    .line 48
    iput-object p5, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->g:Lcn/nubia/camera/debugmode/NubiaDebugItem$a;

    .line 50
    iget-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-direct {p0}, Lcn/nubia/camera/debugmode/NubiaDebugItem;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->b:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 55
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->b:Landroid/widget/CheckBox;

    new-instance p2, Lcn/nubia/camera/debugmode/NubiaDebugItem$1;

    invoke-direct {p2, p0}, Lcn/nubia/camera/debugmode/NubiaDebugItem$1;-><init>(Lcn/nubia/camera/debugmode/NubiaDebugItem;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090331

    .line 69
    invoke-virtual {p0, v0}, Lcn/nubia/camera/debugmode/NubiaDebugItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->a:Landroid/widget/TextView;

    const v0, 0x7f0900b3

    .line 70
    invoke-virtual {p0, v0}, Lcn/nubia/camera/debugmode/NubiaDebugItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem;->b:Landroid/widget/CheckBox;

    return-void
.end method
