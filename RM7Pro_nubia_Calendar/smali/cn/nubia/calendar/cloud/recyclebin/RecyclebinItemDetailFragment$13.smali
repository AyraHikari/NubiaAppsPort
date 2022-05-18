.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$13;
.super Ljava/lang/Object;
.source "RecyclebinItemDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->childItemClickDo(Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

.field final synthetic val$childPosition:I

.field final synthetic val$groupPosition:I

.field final synthetic val$info:Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;II)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 405
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$13;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    iput-object p2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$13;->val$info:Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;

    iput p3, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$13;->val$groupPosition:I

    iput p4, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$13;->val$childPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 408
    packed-switch p2, :pswitch_data_0

    .line 420
    :goto_0
    :pswitch_0
    return-void

    .line 410
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$13;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$13;->val$info:Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;

    iget v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$13;->val$groupPosition:I

    iget v3, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$13;->val$childPosition:I

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$2100(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;II)V

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
