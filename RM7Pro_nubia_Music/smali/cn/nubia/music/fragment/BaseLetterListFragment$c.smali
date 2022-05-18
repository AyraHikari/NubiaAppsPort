.class Lcn/nubia/music/fragment/BaseLetterListFragment$c;
.super Landroid/database/ContentObserver;
.source "BaseLetterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/BaseLetterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/music/fragment/BaseLetterListFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/music/fragment/BaseLetterListFragment;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1137
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1138
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$c;->a:Ljava/lang/ref/WeakReference;

    .line 1139
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 1143
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1144
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/fragment/BaseLetterListFragment;

    .line 1146
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$1800(Lcn/nubia/music/fragment/BaseLetterListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$1900(Lcn/nubia/music/fragment/BaseLetterListFragment;)V

    .line 1151
    :cond_0
    return-void
.end method
