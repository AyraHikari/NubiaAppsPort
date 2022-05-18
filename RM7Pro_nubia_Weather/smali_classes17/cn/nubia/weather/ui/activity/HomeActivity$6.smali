.class Lcn/nubia/weather/ui/activity/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/HomeActivity;->checkCTA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 754
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$6;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 757
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 758
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity$6;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->finish()V

    .line 759
    return-void
.end method
