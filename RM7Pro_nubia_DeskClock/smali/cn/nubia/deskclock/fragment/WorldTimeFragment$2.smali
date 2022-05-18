.class Lcn/nubia/deskclock/fragment/WorldTimeFragment$2;
.super Ljava/lang/Object;
.source "WorldTimeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/fragment/WorldTimeFragment;->deleteSelection(Landroid/content/Context;)V
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
    .line 333
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$2;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$2;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->access$000(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->confirmToDeleteSelection()V

    .line 337
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$2;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->access$000(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->notifyDataSetChanged()V

    .line 338
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$2;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    invoke-virtual {v0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->destroyActionMode()V

    .line 339
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$2;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    iget-object v0, v0, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$2;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    invoke-static {v1}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->access$100(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->setMotionContentView(Landroid/widget/ListView;)V

    .line 340
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$2;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->access$200(Lcn/nubia/deskclock/fragment/WorldTimeFragment;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 341
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/WorldTimeFragment$2;->this$0:Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/WorldTimeFragment;->access$302(Lcn/nubia/deskclock/fragment/WorldTimeFragment;Z)Z

    .line 342
    return-void
.end method
