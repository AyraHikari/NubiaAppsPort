.class public Lcn/nubia/weather/ui/activity/HomeActivity$NaviBarObserver;
.super Landroid/database/ContentObserver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NaviBarObserver"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/weather/ui/activity/HomeActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/weather/ui/activity/HomeActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/activity/HomeActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/HomeActivity;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 886
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$NaviBarObserver;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    .line 887
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 889
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 892
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 893
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity$NaviBarObserver;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->adjustLayoutByNaviBarStatus()V

    .line 894
    return-void
.end method
