.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$2;
.super Ljava/lang/Object;
.source "RecyclebinItemDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->onException(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;I)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;

    .prologue
    .line 477
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$2;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;

    iput p2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$2;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$2;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$2;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .line 481
    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$2;->val$errorCode:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_0

    .line 483
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$2;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    iget v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$2;->val$errorCode:I

    invoke-static {v0, v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$600(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;I)V

    .line 489
    :cond_0
    return-void
.end method
