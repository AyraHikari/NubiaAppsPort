.class public Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;,
        Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

.field private c:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->a:Z

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    .line 39
    new-instance p2, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$a;

    invoke-direct {p2, p0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$a;-><init>(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$1;)V

    iput-object p2, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->c:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$a;

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;)Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    return-object p0
.end method

.method static synthetic a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->b(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 84
    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->isPressed()Z

    move-result v0

    .line 85
    iget-boolean v1, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->a:Z

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 87
    new-instance v1, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$1;-><init>(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->b(Z)V

    .line 96
    :goto_0
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->a:Z

    :cond_1
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 108
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    invoke-interface {v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;->b()V

    :cond_0
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    .line 71
    iget-object p1, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->c:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$a;

    invoke-virtual {p0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setLongClickable(Z)V

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setClickable(Z)V

    return-void
.end method
