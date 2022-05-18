.class public Lcn/nubia/camera/aj/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/k/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aj/k$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/k/b/c;

.field private c:Landroid/os/ConditionVariable;

.field private d:Z

.field private e:Z

.field private f:Lcn/nubia/camera/v/d;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/v/d;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aj/k;->c:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcn/nubia/camera/aj/k;->d:Z

    .line 40
    iput-boolean v0, p0, Lcn/nubia/camera/aj/k;->e:Z

    .line 44
    iput-object p1, p0, Lcn/nubia/camera/aj/k;->a:Lcn/nubia/camera/ad/a;

    .line 45
    iput-object p2, p0, Lcn/nubia/camera/aj/k;->f:Lcn/nubia/camera/v/d;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aj/k;Lcn/nubia/k/b/c;)Lcn/nubia/k/b/c;
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/nubia/camera/aj/k;->b:Lcn/nubia/k/b/c;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/aj/k;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcn/nubia/camera/aj/k;->d:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/v/d;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/aj/k;->f:Lcn/nubia/camera/v/d;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/aj/k;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private d()Z
    .locals 3

    .line 190
    iget-object v0, p0, Lcn/nubia/camera/aj/k;->a:Lcn/nubia/camera/ad/a;

    .line 191
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/k;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0251

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/k;->a:Lcn/nubia/camera/ad/a;

    .line 192
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0255

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcn/nubia/camera/aj/k;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcn/nubia/camera/aj/k;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/aj/k;)Landroid/os/ConditionVariable;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/aj/k;->c:Landroid/os/ConditionVariable;

    return-object p0
.end method


# virtual methods
.method public a()Lcn/nubia/k/a/b;
    .locals 2

    .line 59
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aj/k;->b:Lcn/nubia/k/b/c;

    invoke-virtual {v0}, Lcn/nubia/k/b/c;->a()Lcn/nubia/k/a/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v1, p0, Lcn/nubia/camera/aj/k;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/camera/aj/k;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 62
    throw v0
.end method

.method public a(Lcn/nubia/k/a/b;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/nubia/camera/aj/k;->b:Lcn/nubia/k/b/c;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Lcn/nubia/k/b/c;->a(Lcn/nubia/k/a/b;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcn/nubia/camera/aj/k;->e:Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcn/nubia/camera/aj/k;->f:Lcn/nubia/camera/v/d;

    new-instance v1, Lcn/nubia/camera/aj/k$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/camera/aj/k$a;-><init>(Lcn/nubia/camera/aj/k;Lcn/nubia/camera/aj/k$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/v/d;->a(Lcn/nubia/camera/v/d$a;)V

    return-void
.end method

.method public c()Lcn/nubia/k/a/b;
    .locals 1

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcn/nubia/camera/aj/k;->d:Z

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/aj/k;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 81
    iget-object v0, p0, Lcn/nubia/camera/aj/k;->b:Lcn/nubia/k/b/c;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcn/nubia/k/b/c;->c()Lcn/nubia/k/a/b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
