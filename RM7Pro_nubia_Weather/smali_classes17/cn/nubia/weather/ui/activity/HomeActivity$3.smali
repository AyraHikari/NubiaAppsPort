.class Lcn/nubia/weather/ui/activity/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/bluestareffects/app/weather/api/WeatherCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/HomeActivity;
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
    .line 255
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$3;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSuccess()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity$3;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->access$500(Lcn/nubia/weather/ui/activity/HomeActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    new-instance v1, Lcn/nubia/weather/ui/activity/HomeActivity$3$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/activity/HomeActivity$3$1;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method
