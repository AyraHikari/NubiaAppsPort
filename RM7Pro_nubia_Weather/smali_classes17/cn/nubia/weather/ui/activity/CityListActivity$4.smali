.class Lcn/nubia/weather/ui/activity/CityListActivity$4;
.super Ljava/lang/Object;
.source "CityListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/CityListActivity;->startLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/CityListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 914
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$4;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 919
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$4;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1100(Lcn/nubia/weather/ui/activity/CityListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$4;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    const v2, 0x7f0900b9

    .line 920
    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/activity/CityListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$4;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1200(Lcn/nubia/weather/ui/activity/CityListActivity;)V

    .line 923
    :cond_0
    return-void
.end method
