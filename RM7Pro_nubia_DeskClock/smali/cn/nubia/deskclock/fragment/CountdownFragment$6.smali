.class Lcn/nubia/deskclock/fragment/CountdownFragment$6;
.super Ljava/lang/Object;
.source "CountdownFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/fragment/CountdownFragment;->deleteSelection(Landroid/content/Context;)V
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
    .line 931
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$6;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 934
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$6;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1300(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/adapter/CountDownAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->confirmToDeleteSelection()V

    .line 935
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$6;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1300(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/adapter/CountDownAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->notifyDataSetChanged()V

    .line 936
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$6;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-virtual {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->destroyActionMode()V

    .line 937
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$6;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    iget-object v0, v0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$6;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1400(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->setMotionContentView(Landroid/widget/ListView;)V

    .line 938
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$6;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1500(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 939
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$6;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1602(Lcn/nubia/deskclock/fragment/CountdownFragment;Z)Z

    .line 940
    return-void
.end method
