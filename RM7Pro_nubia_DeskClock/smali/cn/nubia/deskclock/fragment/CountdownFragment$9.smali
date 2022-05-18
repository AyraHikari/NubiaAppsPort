.class Lcn/nubia/deskclock/fragment/CountdownFragment$9;
.super Ljava/lang/Object;
.source "CountdownFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/fragment/CountdownFragment;->AssistantStartCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 1201
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1204
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$000(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2500(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v4}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "time_pref"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "countdown_finaltime"

    const-wide/16 v6, 0x0

    .line 1208
    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1207
    invoke-static {v3, v4, v5}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2002(Lcn/nubia/deskclock/fragment/CountdownFragment;J)J

    .line 1209
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2000(Lcn/nubia/deskclock/fragment/CountdownFragment;)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 1210
    .local v0, "deltaTime":J
    long-to-int v3, v0

    div-int/lit16 v2, v3, 0x3e8

    .line 1211
    .local v2, "second":I
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2500(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcn/nubia/deskclock/model/CountDownModel;->setStartSecondAndlistener(ILjava/lang/Object;)V

    .line 1212
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2500(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v4}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1900(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/model/CountDownModel;->setmTotalTime(I)V

    .line 1213
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$000(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xfa6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1214
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$400(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v3

    if-ne v3, v9, :cond_2

    .line 1215
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$402(Lcn/nubia/deskclock/fragment/CountdownFragment;I)I

    .line 1216
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v4}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$400(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 1218
    :cond_2
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v4}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1900(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v4

    invoke-static {v3, v8, v8, v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 1219
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v4}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1900(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeNotficationToPref(Landroid/content/Context;I)V

    .line 1220
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2600(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    .line 1221
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v3, v9}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1702(Lcn/nubia/deskclock/fragment/CountdownFragment;Z)Z

    .line 1222
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$9;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2200(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    goto/16 :goto_0
.end method
