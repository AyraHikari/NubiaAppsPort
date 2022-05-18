.class Lcn/nubia/deskclock/fragment/CountdownFragment$3;
.super Ljava/lang/Object;
.source "CountdownFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/fragment/CountdownFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 507
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$3;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 510
    const-string v0, "CountdownFragment"

    const-string v1, "mResetBtn"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$3;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$400(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 512
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$3;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$700(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$3;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$400(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$3;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$800(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    .line 515
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$3;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$700(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    goto :goto_0
.end method
