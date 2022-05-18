.class Lcn/nubia/weather/permission/WeatherPermissionInspector$2;
.super Ljava/lang/Object;
.source "WeatherPermissionInspector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/permission/WeatherPermissionInspector;->showWarmingDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/permission/WeatherPermissionInspector;


# direct methods
.method constructor <init>(Lcn/nubia/weather/permission/WeatherPermissionInspector;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/permission/WeatherPermissionInspector;

    .prologue
    .line 121
    iput-object p1, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector$2;->this$0:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 127
    return-void
.end method
