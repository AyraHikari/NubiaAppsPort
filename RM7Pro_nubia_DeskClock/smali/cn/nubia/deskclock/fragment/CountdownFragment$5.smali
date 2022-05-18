.class Lcn/nubia/deskclock/fragment/CountdownFragment$5;
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
    .line 889
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$5;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 903
    :goto_0
    :pswitch_0
    return-void

    .line 894
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$5;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1200(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    goto :goto_0

    .line 897
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$5;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-virtual {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->destroyActionMode()V

    goto :goto_0

    .line 900
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$5;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$5;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-virtual {v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->deleteSelection(Landroid/content/Context;)V

    goto :goto_0

    .line 892
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
