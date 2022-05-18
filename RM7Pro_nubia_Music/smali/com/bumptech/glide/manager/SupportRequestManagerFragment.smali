.class public Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "SupportRequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/SupportRequestManagerFragment$1;,
        Lcom/bumptech/glide/manager/SupportRequestManagerFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/i;

.field private final b:Lcom/bumptech/glide/manager/a;

.field private final c:Lcom/bumptech/glide/manager/k;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/bumptech/glide/manager/a;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>(Lcom/bumptech/glide/manager/a;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 29
    new-instance v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment$a;-><init>(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;Lcom/bumptech/glide/manager/SupportRequestManagerFragment$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->c:Lcom/bumptech/glide/manager/k;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->d:Ljava/util/HashSet;

    .line 42
    iput-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/a;

    .line 43
    return-void
.end method

.method private a(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method private b(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/manager/a;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/a;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/i;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Lcom/bumptech/glide/i;

    .line 52
    return-void
.end method

.method public b()Lcom/bumptech/glide/i;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Lcom/bumptech/glide/i;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/manager/k;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->c:Lcom/bumptech/glide/manager/k;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 121
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/manager/j;->a()Lcom/bumptech/glide/manager/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/j;->a(Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->e:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->e:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-eq v0, p0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->e:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    const-string v1, "SupportRMFragment"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "SupportRMFragment"

    const-string v2, "Unable to register fragment with root"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->c()V

    .line 160
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 138
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->e:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->e:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->e:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 142
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Lcom/bumptech/glide/i;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Lcom/bumptech/glide/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/i;->a()V

    .line 170
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 147
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->a()V

    .line 148
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->b()V

    .line 154
    return-void
.end method
