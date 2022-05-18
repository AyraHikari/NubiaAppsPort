.class public Lcom/android/setting/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setting/a$a;,
        Lcom/android/setting/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/android/setting/d;

.field private c:Lcom/android/preference/ListPreference;

.field private d:Landroid/app/Dialog;

.field private e:Lcom/android/setting/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/setting/d;Lcom/android/preference/ListPreference;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/setting/a;->a:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/android/setting/a;->b:Lcom/android/setting/d;

    .line 33
    iput-object v0, p0, Lcom/android/setting/a;->c:Lcom/android/preference/ListPreference;

    .line 34
    iput-object v0, p0, Lcom/android/setting/a;->d:Landroid/app/Dialog;

    .line 35
    iput-object v0, p0, Lcom/android/setting/a;->e:Lcom/android/setting/a$b;

    .line 42
    iput-object p1, p0, Lcom/android/setting/a;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/setting/a;->b:Lcom/android/setting/d;

    .line 44
    iput-object p3, p0, Lcom/android/setting/a;->c:Lcom/android/preference/ListPreference;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2

    .line 78
    new-instance p1, Lcom/android/setting/a$a;

    iget-object v0, p0, Lcom/android/setting/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/setting/a;->c:Lcom/android/preference/ListPreference;

    invoke-direct {p1, v0, v1}, Lcom/android/setting/a$a;-><init>(Landroid/content/Context;Lcom/android/preference/ListPreference;)V

    .line 79
    new-instance v0, Lcom/android/setting/a$1;

    invoke-direct {v0, p0}, Lcom/android/setting/a$1;-><init>(Lcom/android/setting/a;)V

    invoke-virtual {p1, v0}, Lcom/android/setting/a$a;->a(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v0, Lcom/android/setting/a$2;

    invoke-direct {v0, p0}, Lcom/android/setting/a$2;-><init>(Lcom/android/setting/a;)V

    invoke-virtual {p1, v0}, Lcom/android/setting/a$a;->b(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p1}, Lcom/android/setting/a$a;->show()V

    return-object p1
.end method

.method private a(Landroid/app/Dialog;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 103
    iget-object v0, p0, Lcom/android/setting/a;->a:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 104
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method static synthetic a(Lcom/android/setting/a;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/setting/a;->d()V

    return-void
.end method

.method static synthetic b(Lcom/android/setting/a;)Lcom/android/setting/a$b;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/setting/a;->e:Lcom/android/setting/a$b;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/android/setting/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/setting/a;->d:Landroid/app/Dialog;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "input_method"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 110
    iget-object v1, p0, Lcom/android/setting/a;->d:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/setting/a;->c:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/android/setting/a;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setting/a;->d:Landroid/app/Dialog;

    .line 59
    invoke-direct {p0, v0}, Lcom/android/setting/a;->a(Landroid/app/Dialog;)V

    return-void
.end method

.method public a(Lcom/android/setting/a$b;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/setting/a;->e:Lcom/android/setting/a$b;

    return-void
.end method

.method public a(Lcom/android/setting/d;Lcom/android/preference/ListPreference;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/setting/a;->b:Lcom/android/setting/d;

    .line 49
    iput-object p2, p0, Lcom/android/setting/a;->c:Lcom/android/preference/ListPreference;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/setting/a;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/setting/a;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/setting/a;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 72
    invoke-direct {p0}, Lcom/android/setting/a;->d()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/setting/a;->d:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
