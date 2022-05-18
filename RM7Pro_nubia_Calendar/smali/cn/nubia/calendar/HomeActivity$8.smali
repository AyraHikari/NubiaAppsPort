.class Lcn/nubia/calendar/HomeActivity$8;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/HomeActivity;->judgeNavigationBarExist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/HomeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/HomeActivity;

    .prologue
    .line 745
    iput-object p1, p0, Lcn/nubia/calendar/HomeActivity$8;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$8;->this$0:Lcn/nubia/calendar/HomeActivity;

    iget-object v0, v0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/calendar/util/Utils;->adjustYearViewHeight(Landroid/content/Context;)V

    .line 749
    return-void
.end method
