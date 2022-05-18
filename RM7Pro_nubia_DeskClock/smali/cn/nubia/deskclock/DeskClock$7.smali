.class Lcn/nubia/deskclock/DeskClock$7;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Lcn/nubia/deskclock/inter/IViewPagerEnableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/DeskClock;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 882
    iput-object p1, p0, Lcn/nubia/deskclock/DeskClock$7;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setChildViewEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 892
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$7;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$700(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$7;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$700(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setChildViewEnable(Z)V

    .line 896
    :cond_0
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 900
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$7;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$700(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$7;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$700(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setDeleteMode(Z)V

    .line 904
    :cond_0
    return-void
.end method

.method public setViewPagerEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 885
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$7;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$700(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$7;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$700(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setScrollEnable(Z)V

    .line 888
    :cond_0
    return-void
.end method
