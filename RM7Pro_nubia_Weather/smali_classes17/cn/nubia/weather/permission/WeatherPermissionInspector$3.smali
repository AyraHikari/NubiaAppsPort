.class Lcn/nubia/weather/permission/WeatherPermissionInspector$3;
.super Ljava/lang/Object;
.source "WeatherPermissionInspector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/permission/WeatherPermissionInspector;->showWarmingDialog(Landroid/content/Context;Lcn/nubia/weather/inner/ISettingsCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/permission/WeatherPermissionInspector;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/weather/permission/WeatherPermissionInspector;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/permission/WeatherPermissionInspector;

    .prologue
    .line 244
    iput-object p1, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector$3;->this$0:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    iput-object p2, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector$3;->this$0:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    iget-object v1, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->access$000(Lcn/nubia/weather/permission/WeatherPermissionInspector;Landroid/content/Context;)V

    .line 249
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 250
    return-void
.end method
