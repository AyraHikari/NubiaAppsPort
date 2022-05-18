.class Lcn/nubia/deskclock/fragment/AlarmClockFragment$4;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/fragment/AlarmClockFragment;->deleteSelectedAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    .prologue
    .line 329
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$4;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$4;->this$0:Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$802(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Z)Z

    .line 333
    return-void
.end method
