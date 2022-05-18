.class Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;
.super Landroid/os/Handler;
.source "NoteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/NoteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotePadListHandler"
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/notepad/NoteListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 1
    .param p1, "activity"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 1274
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1275
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 1276
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x7

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1280
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1282
    iget-object v4, p0, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/NoteListActivity;

    .line 1283
    .local v0, "activity":Lcn/nubia/notepad/NoteListActivity;
    if-nez v0, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 1288
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 1289
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "spannableMap"

    .line 1290
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1289
    invoke-static {v0, v2}, Lcn/nubia/notepad/NoteListActivity;->access$1702(Lcn/nubia/notepad/NoteListActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 1291
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$1900(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/adapter/NotePadListAdapter;

    move-result-object v2

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$1800(Lcn/nubia/notepad/NoteListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->setSearchText(Ljava/lang/String;)V

    .line 1292
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$1900(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/adapter/NotePadListAdapter;

    move-result-object v2

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$1700(Lcn/nubia/notepad/NoteListActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->setQuerySpannableMap(Ljava/util/Map;)V

    goto :goto_0

    .line 1295
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mReStartSync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2000(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 1296
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1297
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->removeMessages(I)V

    .line 1298
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    move-result-object v3

    const/16 v4, 0x3eb

    invoke-virtual {v3, v4}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->removeMessages(I)V

    .line 1301
    :cond_2
    const-string v3, "mReStartSync restart"

    invoke-static {v3}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 1303
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2200(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1304
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->startLoadingAnimation()V

    .line 1306
    :cond_3
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v3, v2, v4, v5}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1310
    :sswitch_2
    iget-object v4, v0, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v5, "notepad_cloud_sync_failed"

    .line 1311
    invoke-virtual {v4, v5}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1312
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->removeMessages(I)V

    .line 1313
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$1900(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/adapter/NotePadListAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1314
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    move-result-object v2

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2400(Lcn/nubia/notepad/NoteListActivity;)I

    move-result v4

    invoke-virtual {v2, v4, v6}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->onDataLoadingCompleted(II)V

    .line 1317
    :cond_4
    invoke-static {v0, v3}, Lcn/nubia/notepad/NoteListActivity;->access$2002(Lcn/nubia/notepad/NoteListActivity;Z)Z

    .line 1318
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2200(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1319
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2500(Lcn/nubia/notepad/NoteListActivity;)V

    goto/16 :goto_0

    .line 1323
    :sswitch_3
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->removeMessages(I)V

    .line 1324
    invoke-static {v0, v3}, Lcn/nubia/notepad/NoteListActivity;->access$2002(Lcn/nubia/notepad/NoteListActivity;Z)Z

    .line 1325
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$1900(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/adapter/NotePadListAdapter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1326
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    move-result-object v2

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2400(Lcn/nubia/notepad/NoteListActivity;)I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->onDataLoadingCompleted(II)V

    .line 1329
    :cond_5
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2200(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1330
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2500(Lcn/nubia/notepad/NoteListActivity;)V

    goto/16 :goto_0

    .line 1334
    :sswitch_4
    iget-object v2, v0, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v3, "notepad_cloud_sync_un_login"

    .line 1335
    invoke-virtual {v2, v3}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1336
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$1900(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/adapter/NotePadListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1337
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    move-result-object v2

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2400(Lcn/nubia/notepad/NoteListActivity;)I

    move-result v3

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->onDataLoadingCompleted(II)V

    goto/16 :goto_0

    .line 1342
    :sswitch_5
    iget-object v2, v0, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v3, "notepad_cloud_sync_failed"

    .line 1343
    invoke-virtual {v2, v3}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1344
    const-string v2, "MSG_GET_CLOUD_STATUS"

    invoke-static {v2}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 1345
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$1900(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/adapter/NotePadListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1346
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    move-result-object v2

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2400(Lcn/nubia/notepad/NoteListActivity;)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->onDataLoadingCompleted(II)V

    goto/16 :goto_0

    .line 1351
    :sswitch_6
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    move-result-object v2

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2400(Lcn/nubia/notepad/NoteListActivity;)I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->onDataLoadingCompleted(II)V

    .line 1353
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2600(Lcn/nubia/notepad/NoteListActivity;)V

    goto/16 :goto_0

    .line 1356
    :sswitch_7
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2700(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2700(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1357
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2700(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->dismiss()V

    .line 1359
    :cond_6
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2900(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    move-result-object v4

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2800(Lcn/nubia/notepad/NoteListActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->setCurLabelId(I)V

    .line 1360
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2700(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1361
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2700(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    move-result-object v4

    .line 1362
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2900(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_8

    :goto_1
    invoke-virtual {v4, v2}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->setRightBottomEnabled(Z)V

    .line 1363
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2700(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->show()V

    .line 1366
    :cond_7
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2900(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 1362
    goto :goto_1

    .line 1369
    :sswitch_8
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$3000(Lcn/nubia/notepad/NoteListActivity;)V

    goto/16 :goto_0

    .line 1372
    :sswitch_9
    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$3200(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$3100(Lcn/nubia/notepad/NoteListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1286
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_5
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x4 -> :sswitch_9
        0x3e8 -> :sswitch_2
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_3
        0x3f0 -> :sswitch_6
    .end sparse-switch
.end method
