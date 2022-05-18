.class Lcn/nubia/deskclock/fragment/WorldTimeFragment$5;
.super Ljava/lang/Object;
.source "WorldTimeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/fragment/WorldTimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    .prologue
    .line 357
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$5;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 371
    :goto_0
    :pswitch_0
    return-void

    .line 362
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$5;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->access$400(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)V

    goto :goto_0

    .line 365
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$5;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    invoke-virtual {v0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->destroyActionMode()V

    goto :goto_0

    .line 368
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$5;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$5;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    iget-object v1, v1, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->access$500(Lcn/nubia/deskclock/fragment/WorldTimeFragment;Landroid/content/Context;)V

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x7f120106
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
