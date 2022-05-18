.class Lcn/nubia/weather/ui/activity/CityListActivity$5;
.super Ljava/lang/Object;
.source "CityListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/CityListActivity;->openNetOrGps(Z)V
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
    .line 1159
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$5;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1162
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1163
    return-void
.end method
