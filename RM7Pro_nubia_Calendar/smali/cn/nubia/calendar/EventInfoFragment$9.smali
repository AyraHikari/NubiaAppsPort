.class Lcn/nubia/calendar/EventInfoFragment$9;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment;->showCtsWarningDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 1049
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$9;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1052
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment$9;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    .line 1054
    invoke-static {v3}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1055
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$9;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/EventInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 1056
    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$9;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v1}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1057
    return-void
.end method
