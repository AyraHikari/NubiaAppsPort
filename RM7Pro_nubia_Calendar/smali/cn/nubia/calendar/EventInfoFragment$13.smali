.class Lcn/nubia/calendar/EventInfoFragment$13;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment;->updateCustomAppButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/EventInfoFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoFragment;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 1925
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$13;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    iput-object p2, p0, Lcn/nubia/calendar/EventInfoFragment$13;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1929
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$13;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$13;->val$intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1935
    :goto_0
    return-void

    .line 1930
    :catch_0
    move-exception v0

    .line 1932
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$13;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$13;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$600(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f11017f

    const/16 v4, 0x8

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/calendar/EventInfoFragment;->access$4300(Lcn/nubia/calendar/EventInfoFragment;Landroid/view/View;II)V

    goto :goto_0
.end method
