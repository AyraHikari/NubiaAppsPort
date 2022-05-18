.class Lcn/nubia/touping/AbstractActivity$UIHandler;
.super Landroid/os/Handler;
.source "AbstractActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/AbstractActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/touping/AbstractActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/nubia/touping/AbstractActivity;)V
    .locals 1
    .param p1, "reference"    # Lcn/nubia/touping/AbstractActivity;

    .prologue
    .line 650
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 651
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/touping/AbstractActivity$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 652
    return-void
.end method

.method private sendStateChangeBroadcast(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # I

    .prologue
    .line 784
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.touping.action.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 787
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 656
    iget-object v8, p0, Lcn/nubia/touping/AbstractActivity$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/touping/AbstractActivity;

    .line 657
    .local v0, "abstractActivity":Lcn/nubia/touping/AbstractActivity;
    if-nez v0, :cond_0

    .line 781
    :goto_0
    return-void

    .line 660
    :cond_0
    invoke-virtual {v0, p1}, Lcn/nubia/touping/AbstractActivity;->refreshViewByHandleMessage(Landroid/os/Message;)V

    .line 661
    const-string v8, "AbstractActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msg.what = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 780
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 664
    :sswitch_0
    instance-of v8, v0, Lcn/nubia/touping/MainActivity;

    if-eqz v8, :cond_1

    .line 666
    :try_start_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_1

    .line 667
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 668
    .local v2, "browseInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    iget-object v8, v0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Lcn/nubia/touping/Utils/DialogManager;->dialogList(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 670
    .end local v2    # "browseInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    :catch_0
    move-exception v3

    .line 671
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 677
    .end local v3    # "e":Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_2

    .line 678
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 679
    .local v6, "serviceInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    sput-object v6, Lcn/nubia/touping/AbstractActivity;->mSelectInfo:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 684
    .end local v6    # "serviceInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    :cond_2
    :goto_2
    const/4 v8, 0x4

    sput v8, Lcn/nubia/touping/AbstractActivity;->mCurrentLinkStatus:I

    .line 685
    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcn/nubia/touping/AbstractActivity;->access$400(Lcn/nubia/touping/AbstractActivity;Z)V

    goto :goto_1

    .line 681
    :catch_1
    move-exception v3

    .line 682
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v8, "AbstractActivity"

    invoke-static {v8, v3}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_2

    .line 691
    .end local v3    # "e":Ljava/lang/Exception;
    :sswitch_2
    invoke-static {v0}, Lcn/nubia/touping/AbstractActivity;->access$500(Lcn/nubia/touping/AbstractActivity;)V

    .line 692
    const/4 v8, 0x5

    sput v8, Lcn/nubia/touping/AbstractActivity;->mCurrentLinkStatus:I

    .line 693
    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcn/nubia/touping/AbstractActivity;->access$400(Lcn/nubia/touping/AbstractActivity;Z)V

    goto :goto_1

    .line 697
    :sswitch_3
    const/4 v8, 0x6

    sput v8, Lcn/nubia/touping/AbstractActivity;->mCurrentLinkStatus:I

    .line 698
    invoke-static {v0}, Lcn/nubia/touping/AbstractActivity;->access$500(Lcn/nubia/touping/AbstractActivity;)V

    .line 699
    const v8, 0x7f080068

    const/4 v9, 0x0

    invoke-static {v0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 701
    invoke-static {v0}, Lcn/nubia/touping/AbstractActivity;->access$600(Lcn/nubia/touping/AbstractActivity;)Lcn/nubia/touping/AbstractActivity$UIHandler;

    move-result-object v8

    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Lcn/nubia/touping/AbstractActivity$UIHandler;->removeMessages(I)V

    .line 702
    invoke-static {v0}, Lcn/nubia/touping/AbstractActivity;->access$600(Lcn/nubia/touping/AbstractActivity;)Lcn/nubia/touping/AbstractActivity$UIHandler;

    move-result-object v8

    const/16 v9, 0x13

    const-wide/32 v10, 0x2bf20

    invoke-virtual {v8, v9, v10, v11}, Lcn/nubia/touping/AbstractActivity$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 703
    const-string v8, "PRIVATE_MODE_WIRELESS"

    invoke-static {v8, v0}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V

    .line 704
    iget v8, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, v8}, Lcn/nubia/touping/AbstractActivity$UIHandler;->sendStateChangeBroadcast(Landroid/content/Context;I)V

    .line 706
    const-string v8, "PRIVATE_MODE_WIRELESS"

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    .line 708
    .local v5, "privateMode":Z
    if-nez v5, :cond_4

    .line 709
    iget-object v8, v0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    if-eqz v8, :cond_3

    .line 710
    iget-object v8, v0, Lcn/nubia/touping/AbstractActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v8}, Lcn/nubia/touping/Utils/DialogManager;->showPrivacyPolicyDialog()V

    .line 718
    :cond_3
    :goto_3
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->reset()V

    .line 719
    const-string v8, "FLOATING_WINDOW"

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    .line 721
    .local v7, "showWindow":Z
    const-string v8, "AbstractActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showWindow : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getsInstance()Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->showSurface()V

    .line 723
    if-eqz v7, :cond_1

    .line 724
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->showDelayTime()V

    .line 725
    new-instance v8, Lcn/nubia/touping/AbstractActivity$UIHandler$1;

    invoke-direct {v8, p0}, Lcn/nubia/touping/AbstractActivity$UIHandler$1;-><init>(Lcn/nubia/touping/AbstractActivity$UIHandler;)V

    invoke-static {v8}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->setmMirrorInfoBandWidth(Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener$MirrorInfoBandWidth;)V

    goto/16 :goto_1

    .line 713
    .end local v7    # "showWindow":Z
    :cond_4
    instance-of v8, v0, Lcn/nubia/touping/MainActivity;

    if-eqz v8, :cond_3

    .line 714
    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    goto :goto_3

    .line 735
    .end local v5    # "privateMode":Z
    :sswitch_4
    const v8, 0x7f080067

    const/4 v9, 0x0

    invoke-static {v0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 736
    const/4 v8, 0x7

    sput v8, Lcn/nubia/touping/AbstractActivity;->mCurrentLinkStatus:I

    .line 737
    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->restoreAllStatusValue()V

    .line 738
    iget v8, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, v8}, Lcn/nubia/touping/AbstractActivity$UIHandler;->sendStateChangeBroadcast(Landroid/content/Context;I)V

    .line 740
    invoke-static {}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getsInstance()Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->hideSurface()V

    .line 741
    const-string v8, "FLOATING_WINDOW"

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    .line 743
    .restart local v7    # "showWindow":Z
    if-eqz v7, :cond_5

    .line 744
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->hideDelayTime()V

    .line 745
    const/4 v8, 0x0

    invoke-static {v8}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->setmMirrorInfoBandWidth(Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener$MirrorInfoBandWidth;)V

    .line 747
    :cond_5
    instance-of v8, v0, Lcn/nubia/touping/MainActivity;

    if-eqz v8, :cond_1

    .line 748
    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    goto/16 :goto_1

    .line 753
    .end local v7    # "showWindow":Z
    :sswitch_5
    const v8, 0x7f080066

    const/4 v9, 0x0

    invoke-static {v0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 754
    const/16 v8, 0x8

    sput v8, Lcn/nubia/touping/AbstractActivity;->mCurrentLinkStatus:I

    .line 755
    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->restoreAllStatusValue()V

    .line 756
    iget v8, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, v8}, Lcn/nubia/touping/AbstractActivity$UIHandler;->sendStateChangeBroadcast(Landroid/content/Context;I)V

    .line 758
    invoke-static {}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getsInstance()Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->hideSurface()V

    .line 759
    const-string v8, "FLOATING_WINDOW"

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    .line 761
    .restart local v7    # "showWindow":Z
    if-eqz v7, :cond_6

    .line 762
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->hideDelayTime()V

    .line 763
    const/4 v8, 0x0

    invoke-static {v8}, Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener;->setmMirrorInfoBandWidth(Lcn/nubia/touping/LeBoListener/LeBoILelinkPlayerListener$MirrorInfoBandWidth;)V

    .line 765
    :cond_6
    instance-of v8, v0, Lcn/nubia/touping/MainActivity;

    if-eqz v8, :cond_1

    .line 766
    invoke-virtual {v0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    goto/16 :goto_1

    .line 771
    .end local v7    # "showWindow":Z
    :sswitch_6
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->ajustFrameRate()V

    goto/16 :goto_1

    .line 774
    :sswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 775
    .local v1, "bitrate":I
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v8

    const v9, 0x100046

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 776
    invoke-static {v0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 777
    .local v4, "msharePreference":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "LELINK_UPDATE_BITRATE"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 662
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0x13 -> :sswitch_6
        0x16 -> :sswitch_3
        0x19 -> :sswitch_4
        0x1c -> :sswitch_5
        0xd3 -> :sswitch_7
    .end sparse-switch
.end method
