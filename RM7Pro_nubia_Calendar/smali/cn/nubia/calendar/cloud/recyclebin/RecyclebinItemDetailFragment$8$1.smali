.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8$1;
.super Ljava/lang/Object;
.source "RecyclebinItemDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;->onException(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;I)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;

    .prologue
    .line 251
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;

    iput p2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8$1;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8$1;->val$errorCode:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_1

    .line 256
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    iget v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8$1;->val$errorCode:I

    invoke-static {v0, v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$600(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;I)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1700(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1800(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0132

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
