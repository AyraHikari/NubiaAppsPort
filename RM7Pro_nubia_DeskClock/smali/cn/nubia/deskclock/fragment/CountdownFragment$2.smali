.class Lcn/nubia/deskclock/fragment/CountdownFragment$2;
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
    .line 445
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$2;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 448
    const-string v0, "CountdownFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mStartBtnListener: mStatus= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$2;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v2}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$400(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$2;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$500(Lcn/nubia/deskclock/fragment/CountdownFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$2;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$600(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    .line 453
    :cond_0
    return-void
.end method
