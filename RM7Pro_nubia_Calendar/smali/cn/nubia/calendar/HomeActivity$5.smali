.class Lcn/nubia/calendar/HomeActivity$5;
.super Landroid/database/ContentObserver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/HomeActivity;->resisterEventContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/HomeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/HomeActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/HomeActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 693
    iput-object p1, p0, Lcn/nubia/calendar/HomeActivity$5;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 696
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$5;->this$0:Lcn/nubia/calendar/HomeActivity;

    const/16 v1, 0xfac

    invoke-static {v0, v1}, Lcn/nubia/calendar/HomeActivity;->access$900(Lcn/nubia/calendar/HomeActivity;I)V

    .line 698
    return-void
.end method
