.class Lcn/nubia/calendar/HomeActivity$6$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/HomeActivity$6;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/HomeActivity$6;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/HomeActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/HomeActivity$6;

    .prologue
    .line 715
    iput-object p1, p0, Lcn/nubia/calendar/HomeActivity$6$1;->this$1:Lcn/nubia/calendar/HomeActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$6$1;->this$1:Lcn/nubia/calendar/HomeActivity$6;

    iget-object v0, v0, Lcn/nubia/calendar/HomeActivity$6;->this$0:Lcn/nubia/calendar/HomeActivity;

    iget-object v0, v0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/calendar/util/Utils;->setCalendarIcon(Landroid/content/Context;)V

    .line 719
    return-void
.end method
