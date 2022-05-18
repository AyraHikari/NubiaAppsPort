.class Lcn/nubia/calendar/HomeActivity$7$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/HomeActivity$7;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/HomeActivity$7;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/HomeActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/HomeActivity$7;

    .prologue
    .line 732
    iput-object p1, p0, Lcn/nubia/calendar/HomeActivity$7$1;->this$1:Lcn/nubia/calendar/HomeActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$7$1;->this$1:Lcn/nubia/calendar/HomeActivity$7;

    iget-object v0, v0, Lcn/nubia/calendar/HomeActivity$7;->this$0:Lcn/nubia/calendar/HomeActivity;

    iget-object v0, v0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/calendar/util/Utils;->adjustYearViewHeight(Landroid/content/Context;)V

    .line 736
    return-void
.end method
