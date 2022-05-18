.class public Lcn/nubia/camera/ap/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ap/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcn/nubia/camera/ap/b$a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/ap/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/app/Dialog;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcn/nubia/camera/ap/b;->e:Landroid/widget/CheckBox;

    .line 36
    iput-object v0, p0, Lcn/nubia/camera/ap/b;->f:Landroid/widget/LinearLayout;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ap/b;->c:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcn/nubia/camera/ap/b;->a:Landroid/content/Context;

    .line 41
    new-instance p1, Lcn/nubia/camera/ap/b$a;

    invoke-direct {p1, p0}, Lcn/nubia/camera/ap/b$a;-><init>(Lcn/nubia/camera/ap/b;)V

    iput-object p1, p0, Lcn/nubia/camera/ap/b;->b:Lcn/nubia/camera/ap/b$a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ap/b;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/camera/ap/b;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/ap/b;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/camera/ap/b;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/ap/b;)Landroid/widget/CheckBox;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/camera/ap/b;->e:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private b(Z)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_screen_switch_close_warning"

    .line 164
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/ap/b;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/nubia/camera/ap/b;->e()V

    return-void
.end method

.method private d()V
    .locals 6

    .line 45
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/nubia/camera/ap/b;->a:Landroid/content/Context;

    const v2, 0x7f1000aa

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/camera/ap/b;->d:Landroid/app/Dialog;

    .line 46
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 49
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 51
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x31

    .line 52
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 53
    iget-object v2, p0, Lcn/nubia/camera/ap/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x0

    .line 54
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x2

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v1, 0x3f4ccccd    # 0.8f

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const/16 v1, 0x30

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 60
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NX627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->d:Landroid/app/Dialog;

    const v3, 0x7f0c009a

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->d:Landroid/app/Dialog;

    const v3, 0x7f0c0099

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->d:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->d:Landroid/app/Dialog;

    const v3, 0x7f0900c6

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 67
    iget-object v3, p0, Lcn/nubia/camera/ap/b;->d:Landroid/app/Dialog;

    const v4, 0x7f0900fd

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcn/nubia/camera/ap/b;->e:Landroid/widget/CheckBox;

    .line 68
    iget-object v3, p0, Lcn/nubia/camera/ap/b;->d:Landroid/app/Dialog;

    const v4, 0x7f0900fe

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcn/nubia/camera/ap/b;->f:Landroid/widget/LinearLayout;

    .line 69
    new-instance v3, Lcn/nubia/camera/ap/b$1;

    invoke-direct {v3, p0}, Lcn/nubia/camera/ap/b$1;-><init>(Lcn/nubia/camera/ap/b;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->d:Landroid/app/Dialog;

    const v3, 0x7f09007e

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcn/nubia/camera/ap/b$2;

    invoke-direct {v3, p0}, Lcn/nubia/camera/ap/b$2;-><init>(Lcn/nubia/camera/ap/b;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-direct {p0}, Lcn/nubia/camera/ap/b;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->f:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070103

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 97
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->d:Landroid/app/Dialog;

    const v3, 0x7f0900e6

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 98
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 99
    iget-object v4, p0, Lcn/nubia/camera/ap/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070070

    .line 100
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lcn/nubia/camera/ap/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07006d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 104
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/ap/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07006c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/ap/b;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/nubia/camera/ap/b;->f()V

    return-void
.end method

.method private e()V
    .locals 2

    const-string v0, "SwitchManager"

    const-string v1, "showH"

    .line 110
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->d:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcn/nubia/camera/ap/b;->d()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private f()V
    .locals 2

    const-string v0, "SwitchManager"

    const-string v1, "dismissH"

    .line 118
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private g()Z
    .locals 3

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_screen_switch_close_warning"

    const/4 v2, 0x1

    .line 159
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 125
    invoke-direct {p0}, Lcn/nubia/camera/ap/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->b:Lcn/nubia/camera/ap/b$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ap/b$a;->removeMessages(I)V

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->b:Lcn/nubia/camera/ap/b$a;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcn/nubia/camera/ap/b;->b:Lcn/nubia/camera/ap/b$a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/ap/b$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/ap/a;

    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v1}, Lcn/nubia/camera/ap/a;->a()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcn/nubia/camera/ap/a;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->b:Lcn/nubia/camera/ap/b$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ap/b$a;->removeMessages(I)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->b:Lcn/nubia/camera/ap/b$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ap/b$a;->removeMessages(I)V

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->b:Lcn/nubia/camera/ap/b$a;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcn/nubia/camera/ap/b;->b:Lcn/nubia/camera/ap/b$a;

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x96

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/camera/ap/b$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 141
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->b:Lcn/nubia/camera/ap/b$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ap/b$a;->removeMessages(I)V

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->b:Lcn/nubia/camera/ap/b$a;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcn/nubia/camera/ap/b;->b:Lcn/nubia/camera/ap/b$a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/ap/b$a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public b(Lcn/nubia/camera/ap/a;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/ap/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_screen_switch_close_warning"

    const/4 v2, 0x1

    .line 179
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 180
    iget-object v1, p0, Lcn/nubia/camera/ap/b;->e:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    xor-int/2addr v0, v2

    .line 181
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
