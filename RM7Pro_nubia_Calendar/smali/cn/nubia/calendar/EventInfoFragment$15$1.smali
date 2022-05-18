.class Lcn/nubia/calendar/EventInfoFragment$15$1;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/EventInfoFragment$15;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoFragment$15;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/EventInfoFragment$15;

    .prologue
    .line 2145
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$15$1;->this$1:Lcn/nubia/calendar/EventInfoFragment$15;

    iput-object p2, p0, Lcn/nubia/calendar/EventInfoFragment$15$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2148
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$15$1;->this$1:Lcn/nubia/calendar/EventInfoFragment$15;

    iget-object v1, v1, Lcn/nubia/calendar/EventInfoFragment$15;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v1}, Lcn/nubia/calendar/EventInfoFragment;->access$2900(Lcn/nubia/calendar/EventInfoFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2150
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "source_picture"

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$15$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2151
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$15$1;->this$1:Lcn/nubia/calendar/EventInfoFragment$15;

    iget-object v1, v1, Lcn/nubia/calendar/EventInfoFragment$15;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v1}, Lcn/nubia/calendar/EventInfoFragment;->access$2900(Lcn/nubia/calendar/EventInfoFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2152
    return-void
.end method
