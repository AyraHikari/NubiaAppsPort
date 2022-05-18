.class Lcn/nubia/music/MediaPlaybackService$3;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService;->registerA2dpServiceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 1317
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$3;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/16 v5, 0x7f

    .line 1320
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1321
    const-string v1, "command"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1322
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1323
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1325
    if-nez v2, :cond_0

    .line 1326
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1327
    const-string v3, "cn.nubia.music.preset.musicservicecommand.pause"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1328
    const-string v3, "action_headset_unplugged"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1329
    invoke-static {p1, v2}, Lcn/nubia/music/utils/AdaptationUtil;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1332
    :cond_0
    const-string v2, "com.qualcomm.music.playstatusrequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1333
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$3;->a:Lcn/nubia/music/MediaPlaybackService;

    const-string v1, "com.qualcomm.music.playstatusresponse"

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$1000(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 1375
    :cond_1
    :goto_0
    return-void

    .line 1334
    :cond_2
    const-string v2, "com.qualcomm.music.playersettingsrequest"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    const-string v0, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1336
    const-string v0, "commandExtra"

    const/16 v1, 0xff

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1340
    packed-switch v0, :pswitch_data_0

    .line 1366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid getCommand"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1342
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$3;->a:Lcn/nubia/music/MediaPlaybackService;

    const-string v1, "com.qualcomm.music.playersettingsresponse"

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$4500(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 1345
    :pswitch_1
    const-string v0, "Attribute"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    .line 1347
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$3;->a:Lcn/nubia/music/MediaPlaybackService;

    const-string v2, "com.qualcomm.music.playersettingsresponse"

    invoke-static {v1, v2, v0}, Lcn/nubia/music/MediaPlaybackService;->access$4600(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;B)V

    goto :goto_0

    .line 1350
    :pswitch_2
    const-string v0, "Attributes"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1351
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$3;->a:Lcn/nubia/music/MediaPlaybackService;

    const-string v2, "com.qualcomm.music.playersettingsresponse"

    invoke-static {v1, v2, v0}, Lcn/nubia/music/MediaPlaybackService;->access$4700(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;[B)V

    goto :goto_0

    .line 1354
    :pswitch_3
    const-string v0, "Attribute"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    .line 1356
    const-string v1, "Values"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 1357
    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$3;->a:Lcn/nubia/music/MediaPlaybackService;

    const-string v3, "com.qualcomm.music.playersettingsresponse"

    invoke-static {v2, v3, v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$4800(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;I[B)V

    goto :goto_0

    .line 1361
    :pswitch_4
    const-string v0, "Attributes"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1362
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$3;->a:Lcn/nubia/music/MediaPlaybackService;

    const-string v2, "com.qualcomm.music.playersettingsresponse"

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lcn/nubia/music/MediaPlaybackService;->access$4900(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;[BI)V

    goto :goto_0

    .line 1369
    :cond_3
    const-string v0, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1370
    const-string v0, "AttribValuePairs"

    .line 1371
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1372
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$3;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1, v0}, Lcn/nubia/music/MediaPlaybackService;->access$5000(Lcn/nubia/music/MediaPlaybackService;[B)V

    goto/16 :goto_0

    .line 1340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
