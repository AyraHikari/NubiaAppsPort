.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4$1;
.super Ljava/lang/Object;
.source "RecyclebinItemDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;->onException(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;I)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;

    .prologue
    .line 173
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;

    iput p2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4$1;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;

    iget-object v1, v1, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$400(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$500(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Lcn/nubia/commonui/app/ProgressDialog;)V

    .line 177
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .line 178
    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4$1;->val$errorCode:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    iget v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4$1;->val$errorCode:I

    invoke-static {v0, v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$600(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;I)V

    .line 186
    :cond_0
    return-void
.end method
