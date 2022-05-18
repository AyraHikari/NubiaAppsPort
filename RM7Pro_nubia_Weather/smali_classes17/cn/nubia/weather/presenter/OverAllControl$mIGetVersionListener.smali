.class Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;
.super Ljava/lang/Object;
.source "OverAllControl.java"

# interfaces
.implements Lcn/nubia/upgrade/http/IGetVersionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/presenter/OverAllControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mIGetVersionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/presenter/OverAllControl;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/presenter/OverAllControl;)V
    .locals 0

    .prologue
    .line 1081
    iput-object p1, p0, Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 1085
    const-string v0, "OverAllControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGetVersionListener onError code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    packed-switch p1, :pswitch_data_0

    .line 1095
    :pswitch_0
    return-void

    .line 1086
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 5
    .param p1, "versionData"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 1099
    const-string v2, "OverAllControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IGetVersionListener onGetNewVersion versionData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v2, "OverAllControl"

    const-string v3, "onGetNewVersion"

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    if-nez p1, :cond_0

    .line 1102
    const-string v2, "OverAllControl"

    const-string v3, "onGetNewVersion VersionData is Null"

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :goto_0
    return-void

    .line 1105
    :cond_0
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v2}, Lcn/nubia/weather/presenter/OverAllControl;->access$900(Lcn/nubia/weather/presenter/OverAllControl;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1106
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v2}, Lcn/nubia/weather/presenter/OverAllControl;->access$1000(Lcn/nubia/weather/presenter/OverAllControl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1107
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1108
    .local v1, "message":Landroid/os/Message;
    const v2, 0x100005

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1110
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "VersionDL"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1112
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v2, v1}, Lcn/nubia/weather/presenter/OverAllControl;->access$400(Lcn/nubia/weather/presenter/OverAllControl;Landroid/os/Message;)V

    .line 1113
    const-string v2, "OverAllControl"

    const-string v3, "has been dl, dialog on"

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    const-string v2, "OverAllControl"

    const-string v3, "has been dl, dialog off"

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1118
    :cond_2
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v2}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/weather/utils/NetUtil;->getNetworkContectState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v2}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 1119
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-virtual {v2, p1}, Lcn/nubia/weather/presenter/OverAllControl;->downloadNewVersion(Lcn/nubia/upgrade/model/VersionData;)V

    goto :goto_0

    .line 1121
    :cond_3
    const-string v2, "OverAllControl"

    const-string v3, "do not dl new version in modile mode"

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGetNoVersion()V
    .locals 5

    .prologue
    .line 1127
    const-string v2, "OverAllControl"

    const-string v3, "IGetVersionListener onGetNoVersion "

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1129
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1130
    .local v1, "day":I
    const-string v2, "OverAllControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "day "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v2}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "UPGRADE_CHECK"

    invoke-static {v2, v3, v1}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1132
    const-string v2, "OverAllControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set UPGRADE_CHECK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    return-void
.end method
