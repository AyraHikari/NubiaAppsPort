.class Lcn/nubia/calendar/EventInfoFragment$20;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment;->createDeleteOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
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
    .line 3241
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$20;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 3246
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$20;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$3900(Lcn/nubia/calendar/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3247
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$20;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->access$3302(Lcn/nubia/calendar/EventInfoFragment;Z)Z

    .line 3249
    :cond_0
    return-void
.end method
