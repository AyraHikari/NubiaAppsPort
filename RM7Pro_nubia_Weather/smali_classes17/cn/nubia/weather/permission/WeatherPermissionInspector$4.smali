.class Lcn/nubia/weather/permission/WeatherPermissionInspector$4;
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

.field final synthetic val$callBack:Lcn/nubia/weather/inner/ISettingsCallBack;


# direct methods
.method constructor <init>(Lcn/nubia/weather/permission/WeatherPermissionInspector;Lcn/nubia/weather/inner/ISettingsCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/permission/WeatherPermissionInspector;

    .prologue
    .line 253
    iput-object p1, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector$4;->this$0:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    iput-object p2, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector$4;->val$callBack:Lcn/nubia/weather/inner/ISettingsCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 257
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 258
    iget-object v0, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector$4;->val$callBack:Lcn/nubia/weather/inner/ISettingsCallBack;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector$4;->val$callBack:Lcn/nubia/weather/inner/ISettingsCallBack;

    invoke-interface {v0}, Lcn/nubia/weather/inner/ISettingsCallBack;->cancel()V

    .line 261
    :cond_0
    return-void
.end method
