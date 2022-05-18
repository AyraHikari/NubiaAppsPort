.class Lcn/nubia/weather/ui/activity/HomeActivity$9;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/HomeActivity;->openNetOrGps(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

.field final synthetic val$isNetOpened:Z


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/HomeActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 807
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$9;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    iput-boolean p2, p0, Lcn/nubia/weather/ui/activity/HomeActivity$9;->val$isNetOpened:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 809
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity$9;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    iget-boolean v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$9;->val$isNetOpened:Z

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/activity/HomeActivity;->setMobileNetOrGps(Z)V

    .line 810
    return-void
.end method
