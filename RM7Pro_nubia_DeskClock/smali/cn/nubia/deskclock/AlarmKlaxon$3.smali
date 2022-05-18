.class Lcn/nubia/deskclock/AlarmKlaxon$3;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/AlarmKlaxon;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AlarmKlaxon;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 186
    iput-object p1, p0, Lcn/nubia/deskclock/AlarmKlaxon$3;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 189
    const-string v0, "AlarmKlaxon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHasClearSnoozeAlert : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon$3;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v2}, Lcn/nubia/deskclock/AlarmKlaxon;->access$100(Lcn/nubia/deskclock/AlarmKlaxon;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$3;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->access$100(Lcn/nubia/deskclock/AlarmKlaxon;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$3;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->access$200(Lcn/nubia/deskclock/AlarmKlaxon;)V

    .line 192
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$3;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$102(Lcn/nubia/deskclock/AlarmKlaxon;Z)Z

    .line 194
    :cond_0
    return-void
.end method
