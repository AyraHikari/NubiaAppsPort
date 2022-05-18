.class Lcn/nubia/weather/ui/activity/CityAddActivity$4;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/CityAddActivity;->checkCTA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 868
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$4;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 871
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 872
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$4;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->finish()V

    .line 873
    return-void
.end method
