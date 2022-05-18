.class public final Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;
.super Ljava/lang/Object;
.source "NotePadReportUtils.java"


# static fields
.field private static final APP_NAME:Ljava/lang/String; = "cn.nubia.notepad.preset"

.field private static final DATA_STATISTICS_AVER_IMAGE:Ljava/lang/String; = "notepad_aver_image"

.field private static final DATA_STATISTICS_AVER_RECORD:Ljava/lang/String; = "notepad_aver_record"

.field private static final DATA_STATISTICS_AVR_TEXT:Ljava/lang/String; = "notepad_aver_text"

.field private static final DATA_STATISTICS_MAX_IMAGE:Ljava/lang/String; = "notepad_max_image"

.field private static final DATA_STATISTICS_MAX_RECORD:Ljava/lang/String; = "notepad_max_record"

.field private static final DATA_STATISTICS_MAX_TEXT:Ljava/lang/String; = "notepad_max_text"

.field private static final DATA_STATISTICS_TYPE_COUNT:Ljava/lang/String; = "count"

.field public static final NOTAPAD_MENU_SHARE_TEXT:Ljava/lang/String; = "notepad_menu_share_text"

.field public static final NOTEPAD_CLOUD_SYNC:Ljava/lang/String; = "notepad_cloud_sync"

.field public static final NOTEPAD_CLOUD_SYNC_FAILED:Ljava/lang/String; = "notepad_cloud_sync_failed"

.field public static final NOTEPAD_CLOUD_SYNC_START:Ljava/lang/String; = "notepad_cloud_sync_start"

.field public static final NOTEPAD_CLOUD_SYNC_UN_LOGIN:Ljava/lang/String; = "notepad_cloud_sync_un_login"

.field public static final NOTEPAD_CLOUD_SYNC_UN_SWITCH:Ljava/lang/String; = "notepad_cloud_sync_un_swtich"

.field public static final NOTEPAD_EDIT_LABEL:Ljava/lang/String; = "notepad_edit_label"

.field public static final NOTEPAD_EDIT_LABEL_ITEM:Ljava/lang/String; = "notepad_edit_label_item"

.field public static final NOTEPAD_FORCE_TOUCH_NEW_EVENT:Ljava/lang/String; = "notepad_force_touch_new_event"

.field public static final NOTEPAD_FORCE_TOUCH_SEARCH:Ljava/lang/String; = "notepad_force_touch_search"

.field public static final NOTEPAD_FORMAT_DASHED_LINE:Ljava/lang/String; = "notepad_format_dashed_line"

.field public static final NOTEPAD_FORMAT_LIST:Ljava/lang/String; = "notepad_format_list"

.field public static final NOTEPAD_FORMAT_NUMBER:Ljava/lang/String; = "notepad_format_number"

.field public static final NOTEPAD_FORMAT_SUBJECT:Ljava/lang/String; = "notepad_format_subject"

.field public static final NOTEPAD_LABEL_EDIT:Ljava/lang/String; = "notepad_label_edit"

.field public static final NOTEPAD_LABEL_NEW:Ljava/lang/String; = "notepad_label_new"

.field public static final NOTEPAD_LIST_LABEL_CLICK:Ljava/lang/String; = "notepad_list_label_click"

.field public static final NOTEPAD_LIST_SEARCH:Ljava/lang/String; = "notepad_list_search"

.field public static final NOTEPAD_MENU_IMAGE:Ljava/lang/String; = "notepad_menu_image"

.field public static final NOTEPAD_MENU_RECORD:Ljava/lang/String; = "notepad_menu_record"

.field public static final NOTEPAD_MENU_REMID:Ljava/lang/String; = "notepad_menu_remind"

.field public static final NOTEPAD_MENU_SHARE:Ljava/lang/String; = "notepad_menu_share"

.field public static final NOTEPAD_MENU_SHARE_IMAGE:Ljava/lang/String; = "notepad_menu_share_image"

.field public static final NOTEPAD_USER_BEHAVIOR:Ljava/lang/String; = "notepad_user_behavior"

.field private static final TAG:Ljava/lang/String; = "NotePadReportUtils"

.field private static mReYunStatistic:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;


# instance fields
.field private mEnabled:Ljava/lang/Boolean;

.field private mInit:Z

.field private mIsAndroidO:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mEnabled:Ljava/lang/Boolean;

    .line 67
    iput-boolean v1, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mInit:Z

    .line 68
    iput-boolean v1, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mIsAndroidO:Z

    .line 73
    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;
    .locals 2

    .prologue
    .line 76
    const-class v1, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mReYunStatistic:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    invoke-direct {v0}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;-><init>()V

    sput-object v0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mReYunStatistic:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    .line 79
    :cond_0
    sget-object v0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mReYunStatistic:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getListAver(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "numList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 243
    :cond_0
    const-wide/16 v4, 0x0

    .line 249
    :goto_0
    return-wide v4

    .line 245
    :cond_1
    const-wide/16 v2, 0x0

    .line 246
    .local v2, "sum":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 247
    .local v0, "num":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 248
    goto :goto_1

    .line 249
    .end local v0    # "num":Ljava/lang/Long;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v4, v1

    div-long v4, v2, v4

    goto :goto_0
.end method

.method private getListMax(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "numList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    .line 230
    .local v0, "max":J
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 231
    :cond_0
    const-wide/16 v4, 0x0

    .line 238
    :goto_0
    return-wide v4

    .line 233
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 234
    .local v2, "num":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_2

    .line 235
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    .end local v2    # "num":Ljava/lang/Long;
    :cond_3
    move-wide v4, v0

    .line 238
    goto :goto_0
.end method

.method private trackCustomEvent(Ljava/lang/String;JJJJJJ)V
    .locals 8
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "maxRecord"    # J
    .param p4, "averRecord"    # J
    .param p6, "maxImg"    # J
    .param p8, "averImg"    # J
    .param p10, "maxText"    # J
    .param p12, "averText"    # J

    .prologue
    .line 200
    invoke-virtual {p0}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->checkReportEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "notepad_max_record"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v5, "notepad_aver_record"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v5, "notepad_max_image"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v5, "notepad_aver_image"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v5, "notepad_max_text"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v5, "notepad_aver_text"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v5, "notepad_max_record"

    invoke-virtual {v2, v5, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 211
    const-string v5, "notepad_aver_record"

    invoke-virtual {v2, v5, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 212
    const-string v5, "notepad_max_image"

    invoke-virtual {v2, v5, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 213
    const-string v5, "notepad_aver_image"

    move-wide/from16 v0, p8

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 214
    const-string v5, "notepad_max_text"

    move-wide/from16 v0, p10

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 215
    const-string v5, "notepad_aver_text"

    move-wide/from16 v0, p12

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 218
    :try_start_0
    iget-boolean v5, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mIsAndroidO:Z

    if-eqz v5, :cond_0

    .line 219
    invoke-static {}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->getInstance()Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    move-result-object v5

    const-string v6, "cn.nubia.notepad.preset"

    invoke-virtual {v5, v6, p1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->getInstance()Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    move-result-object v5

    const-string v6, "cn.nubia.notepad.preset"

    invoke-virtual {v5, v6, v2}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v3

    .line 224
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkReportEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 253
    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 254
    invoke-static {}, Lcn/nubia/notepad/utils/NubiaFeatureUtils;->isDataStatisticsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mEnabled:Ljava/lang/Boolean;

    .line 256
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 262
    :cond_1
    :goto_0
    return v0

    .line 259
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mInit:Z

    if-eqz v1, :cond_1

    .line 262
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 84
    iput-boolean v3, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mIsAndroidO:Z

    .line 85
    invoke-static {}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->getInstance()Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->init(Landroid/content/Context;)V

    .line 87
    :cond_0
    const-string v0, "NotePadReportUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsAndroidO = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mIsAndroidO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 90
    invoke-static {}, Lcn/nubia/notepad/utils/NubiaFeatureUtils;->isDataStatisticsEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mEnabled:Ljava/lang/Boolean;

    .line 92
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    const-string v0, "NotePadReportUtils"

    const-string v1, "data statistics not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    :goto_0
    return-void

    .line 96
    :cond_3
    const-string v0, "NotePadReportUtils"

    const-string v1, "data statistics enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {p1}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->shouldShowCtaDialog(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iput-boolean v3, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mInit:Z

    goto :goto_0
.end method

.method public sendEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-boolean v0, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mIsAndroidO:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->getInstance()Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    move-result-object v0

    const-string v1, "cn.nubia.notepad.preset"

    invoke-virtual {v0, v1, p1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method public trackCustomBehavior(Lcn/nubia/notepad/utils/NotesData;)V
    .locals 28
    .param p1, "noteData"    # Lcn/nubia/notepad/utils/NotesData;

    .prologue
    .line 151
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->checkReportEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v22, "noteRecord":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v20, "noteImage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v23, "noteText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v24, 0x0

    .line 156
    .local v24, "record":J
    const-wide/16 v18, 0x0

    .line 157
    .local v18, "image":J
    const-wide/16 v26, 0x0

    .line 158
    .local v26, "text":J
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcn/nubia/notepad/utils/NotesData;->getSelectionByType(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcn/nubia/notepad/utils/NotesData;->getNotesData(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v21

    .line 162
    .local v21, "noteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;>;"
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .line 167
    .local v17, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    const-wide/16 v24, 0x0

    .line 168
    const-wide/16 v18, 0x0

    .line 169
    const-wide/16 v26, 0x0

    .line 170
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move-object/from16 v0, v17

    iget-object v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    .line 171
    move-object/from16 v0, v17

    iget-object v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v2, v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v4, "text"

    .line 172
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    move-object/from16 v0, v17

    iget-object v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v2, v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v4, v2

    add-long v26, v26, v4

    .line 170
    :cond_2
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 174
    :cond_3
    move-object/from16 v0, v17

    iget-object v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v2, v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v4, "record"

    .line 175
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    const-wide/16 v4, 0x1

    add-long v24, v24, v4

    goto :goto_3

    .line 177
    :cond_4
    move-object/from16 v0, v17

    iget-object v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v2, v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v4, "image"

    .line 178
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    const-wide/16 v4, 0x1

    add-long v18, v18, v4

    goto :goto_3

    .line 182
    :cond_5
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 187
    .end local v16    # "i":I
    .end local v17    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_6
    const-string v3, "notepad_user_behavior"

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->getListMax(Ljava/util/List;)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->getListAver(Ljava/util/List;)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->getListMax(Ljava/util/List;)J

    move-result-wide v8

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->getListAver(Ljava/util/List;)J

    move-result-wide v10

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->getListMax(Ljava/util/List;)J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->getListAver(Ljava/util/List;)J

    move-result-wide v14

    move-object/from16 v2, p0

    .line 187
    invoke-direct/range {v2 .. v15}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;JJJJJJ)V

    goto/16 :goto_0
.end method

.method public trackCustomEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->checkReportEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->mIsAndroidO:Z

    if-eqz v1, :cond_0

    .line 142
    invoke-static {}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->getInstance()Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    move-result-object v1

    const-string v2, "cn.nubia.notepad.preset"

    const-string v3, "count"

    const-string v4, "1"

    invoke-virtual {v1, v2, p1, v3, v4}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public trackSessionEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionName"    # Ljava/lang/String;

    .prologue
    .line 136
    return-void
.end method

.method public trackSessionStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionName"    # Ljava/lang/String;

    .prologue
    .line 126
    return-void
.end method
