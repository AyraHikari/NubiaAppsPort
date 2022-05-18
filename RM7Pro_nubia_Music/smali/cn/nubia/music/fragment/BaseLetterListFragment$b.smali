.class Lcn/nubia/music/fragment/BaseLetterListFragment$b;
.super Landroid/os/Handler;
.source "BaseLetterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/BaseLetterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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
.method public constructor <init>(Lcn/nubia/music/fragment/BaseLetterListFragment;)V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$b;->a:Ljava/lang/ref/WeakReference;

    .line 160
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 165
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 167
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/fragment/BaseLetterListFragment;

    .line 169
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 171
    :pswitch_0
    if-eqz v0, :cond_1

    .line 172
    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$100(Lcn/nubia/music/fragment/BaseLetterListFragment;)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
