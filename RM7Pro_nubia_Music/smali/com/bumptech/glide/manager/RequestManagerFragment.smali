.class public Lcom/bumptech/glide/manager/RequestManagerFragment;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/RequestManagerFragment$1;,
        Lcom/bumptech/glide/manager/RequestManagerFragment$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/manager/a;

.field private final b:Lcom/bumptech/glide/manager/k;

.field private c:Lcom/bumptech/glide/i;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bumptech/glide/manager/RequestManagerFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/bumptech/glide/manager/a;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>(Lcom/bumptech/glide/manager/a;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/manager/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 31
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/manager/RequestManagerFragment$a;-><init>(Lcom/bumptech/glide/manager/RequestManagerFragment;Lcom/bumptech/glide/manager/RequestManagerFragment$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->b:Lcom/bumptech/glide/manager/k;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->d:Ljava/util/HashSet;

    .line 44
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    .line 45
    return-void
.end method

.method private a(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method private b(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/manager/a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/i;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/i;

    .line 54
    return-void
.end method

.method public b()Lcom/bumptech/glide/i;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/i;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/manager/k;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->b:Lcom/bumptech/glide/manager/k;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 122
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/manager/j;->a()Lcom/bumptech/glide/manager/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/j;->a(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->e:Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 124
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->e:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-eq v0, p0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->e:Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->a(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 129
    const-string v1, "RMFragment"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "RMFragment"

    const-string v2, "Unable to register fragment with root"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 160
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->c()V

    .line 161
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 139
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->e:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->e:Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->b(Lcom/bumptech/glide/manager/RequestManagerFragment;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->e:Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 143
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/i;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/i;->a()V

    .line 179
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->a()V

    .line 149
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->b()V

    .line 155
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/i;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/i;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->a(I)V

    .line 170
    :cond_0
    return-void
.end method
