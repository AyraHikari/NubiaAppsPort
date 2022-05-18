.class public Lcn/nubia/camera/av/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/nubia/k/a/a;


# instance fields
.field private b:Lcn/nubia/camera/ad/a;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Z

.field private f:Lcn/nubia/k/a/a$a;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Lcn/nubia/camera/av/b$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/av/b$2;-><init>(Lcn/nubia/camera/av/b;)V

    iput-object v0, p0, Lcn/nubia/camera/av/b;->f:Lcn/nubia/k/a/a$a;

    .line 165
    new-instance v0, Lcn/nubia/camera/av/b$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/av/b$3;-><init>(Lcn/nubia/camera/av/b;)V

    iput-object v0, p0, Lcn/nubia/camera/av/b;->g:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object p2, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    const v0, 0x7f0f02a7

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/av/b;->c:Ljava/lang/String;

    const v0, 0x7f0f02aa

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/av/b;->d:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/av/b;->g()V

    .line 43
    sget-object v0, Lcn/nubia/camera/av/b;->a:Lcn/nubia/k/a/a;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcn/nubia/k/a/a;

    invoke-direct {v0, p1}, Lcn/nubia/k/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/camera/av/b;->a:Lcn/nubia/k/a/a;

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0, p1}, Lcn/nubia/k/a/a;->a(Landroid/content/Context;)V

    .line 49
    :goto_0
    sget-object p1, Lcn/nubia/camera/av/b;->a:Lcn/nubia/k/a/a;

    iget-object v0, p0, Lcn/nubia/camera/av/b;->f:Lcn/nubia/k/a/a$a;

    invoke-virtual {p1, v0}, Lcn/nubia/k/a/a;->a(Lcn/nubia/k/a/a$a;)V

    .line 52
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/af/a;->A:Lcn/nubia/camera/af/a;

    if-ne p1, p2, :cond_1

    .line 53
    sget-object p1, Lcn/nubia/camera/av/b;->a:Lcn/nubia/k/a/a;

    const-wide/32 v0, 0x9600000

    invoke-virtual {p1, v0, v1}, Lcn/nubia/k/a/a;->a(J)V

    goto :goto_1

    .line 55
    :cond_1
    sget-object p1, Lcn/nubia/camera/av/b;->a:Lcn/nubia/k/a/a;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/k/a/a;->a(J)V

    :goto_1
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/av/b;I)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/camera/av/b;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(JZ)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x7f0f015f

    .line 122
    invoke-direct {p0, p1}, Lcn/nubia/camera/av/b;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const p1, 0x7f0f02d4

    .line 124
    invoke-direct {p0, p1}, Lcn/nubia/camera/av/b;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x3

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    .line 126
    iget-object p1, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/k/c/f;->h(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    .line 127
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/k/c/f;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0f0160

    .line 128
    invoke-direct {p0, p1}, Lcn/nubia/camera/av/b;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const p1, 0x7f0f001d

    .line 130
    invoke-direct {p0, p1}, Lcn/nubia/camera/av/b;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    const p1, 0x7f0f0320

    .line 133
    invoke-direct {p0, p1}, Lcn/nubia/camera/av/b;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 137
    iget-object p2, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p2

    sget-object p3, Lcn/nubia/camera/ab/a$a;->a:Lcn/nubia/camera/ab/a$a;

    invoke-virtual {p2, p3}, Lcn/nubia/camera/aw/a;->a(Lcn/nubia/camera/ab/a$a;)V

    .line 139
    iget-object p2, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Lcn/nubia/camera/av/b$1;

    invoke-direct {p3, p0, p1}, Lcn/nubia/camera/av/b$1;-><init>(Lcn/nubia/camera/av/b;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/av/b;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/camera/av/b;->g()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/av/b;JZ)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/av/b;->a(JZ)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/av/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic d()Lcn/nubia/k/a/a;
    .locals 1

    .line 30
    sget-object v0, Lcn/nubia/camera/av/b;->a:Lcn/nubia/k/a/a;

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/av/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcn/nubia/camera/av/b;->e:Z

    return-void
.end method

.method private f()V
    .locals 2

    .line 85
    iget-boolean v0, p0, Lcn/nubia/camera/av/b;->e:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/av/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcn/nubia/camera/av/b;->e:Z

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/av/b;->c:Ljava/lang/String;

    const-string v2, "pref_storage_path"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcn/nubia/camera/av/b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/k/c/f;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/av/b;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/av/b;->c:Ljava/lang/String;

    .line 99
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->c()V

    .line 107
    :cond_1
    sget-object v1, Lcn/nubia/camera/av/b;->a:Lcn/nubia/k/a/a;

    if-eqz v1, :cond_2

    .line 108
    iget-object v2, p0, Lcn/nubia/camera/av/b;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcn/nubia/k/a/a;->a(Z)V

    .line 111
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/av/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->n()V

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/k/a/a;
    .locals 1

    .line 60
    sget-object v0, Lcn/nubia/camera/av/b;->a:Lcn/nubia/k/a/a;

    return-object v0
.end method

.method public b()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcn/nubia/camera/av/b;->e()V

    .line 65
    invoke-direct {p0}, Lcn/nubia/camera/av/b;->g()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcn/nubia/camera/av/b;->f()V

    return-void
.end method
