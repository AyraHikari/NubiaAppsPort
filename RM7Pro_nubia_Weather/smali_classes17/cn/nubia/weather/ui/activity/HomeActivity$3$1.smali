.class Lcn/nubia/weather/ui/activity/HomeActivity$3$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/HomeActivity$3;->createSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/weather/ui/activity/HomeActivity$3;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/HomeActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/weather/ui/activity/HomeActivity$3;

    .prologue
    .line 257
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$3$1;->this$1:Lcn/nubia/weather/ui/activity/HomeActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity$3$1;->this$1:Lcn/nubia/weather/ui/activity/HomeActivity$3;

    iget-object v0, v0, Lcn/nubia/weather/ui/activity/HomeActivity$3;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->access$400(Lcn/nubia/weather/ui/activity/HomeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    return-void
.end method
